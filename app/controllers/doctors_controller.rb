class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def new
    @patients = Patient.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def create
    @doctor = Doctor.new
    @doctor.name = params[:doctor][:name]
    @doctor.specialty = params[:doctor][:specialty]
    @doctor.patient_ids = params[:patient_ids]
    if params[:new_patient] != ""
      @doctor.patients << Patient.create(name: params[:new_patient])
    end
    @doctor.save
    redirect_to doctor_path(@doctor.id)
  end

  def edit
    @doctor = Doctor.find(params[:id])
    @patients = Patient.all
  end

  def update
    @doctor = Doctor.find(params[:id])
    @doctor.name = params[:doctor][:name]
    @doctor.specialty = params[:doctor][:specialty]
    @doctor.patient_ids = params[:patient_ids]
    if params[:new_patient] != ""
      @doctor.patients << Patient.create(name: params[:new_patient])
    end
    @doctor.save
    redirect_to doctor_path(@doctor.id)
  end

  def delete
    @doctor = Doctor.find(params[:id])
    @doctor.destroy
    redirect_to doctors_path
  end
end
