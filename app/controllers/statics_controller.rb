class StaticsController < ApplicationController
	def index
		@resource = Resource.new
	end

	def new
	end
end
