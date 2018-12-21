class MachinesController < ApplicationController
  include ActionView::Helpers::NumberHelper

  def index
    @owner = Owner.find(params[:owner_id])
  end

  def show
    @machine = Machine.find(params[:id])
    @average_snack_price = @machine.average_snack_price
  end
end
