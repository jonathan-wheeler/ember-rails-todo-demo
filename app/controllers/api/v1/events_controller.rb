class Api::V1::EventsController < ApplicationController
  respond_to :json

  def index
    respond_with Event.all
  end

  def show
    respond_with Event.find(params[:id])
  end

  def create
    event = Event.new(params[:event])

    if event.save
      render json: event, status: :ok
    else
      render json: event.errors, status: :unprocessable_entity
    end

  end

  def update
    event = Event.find(params[:id])

    if event.update_attributes(params[:event])
      render json: event, status: :ok
    else
      render json: event.errors, status: :unprocessable_entity
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    render json: nil, status: :ok
  end
end
