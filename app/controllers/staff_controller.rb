class StaffController < ApplicationController
	def list
    @staffs = Staff.all
  end
end