class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def new
    @doctors = Doctor.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def create
    @patient = Patient.new
    @patient.name = params[:patient][:name]
    @patient.doctor_ids = params[:doctor_ids]
    if params[:new_doctor] != ""
      @patient.doctors << Doctor.create(name: params[:new_doctor])
    end
    @patient.save
    redirect_to patient_path(@patient.id)
  end

  def edit
    @patient = Patient.find(params[:id])
    @doctors = Doctor.all
  end

  def update
    @patient = Patient.find(params[:id])
    @patient.name = params[:patient][:name]
    @patient.doctor_ids = params[:doctor_ids]
    if params[:new_doctor] != ""
      @patient.doctors << Doctor.create(name: params[:new_doctor])
    end
    @patient.save
    redirect_to patient_path(@patient.id)
  end

  def delete
    @patient = Patient.find(params[:id])
    @patient.destroy
    redirect_to patients_path
  end

  def new_prescription
  end

  def create_prescription
  end

  def edit_prescription
  end

  def update_prescription
  end

  def delete_prescription
  end
end
