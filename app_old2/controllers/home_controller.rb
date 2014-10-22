class HomeController < ApplicationController
	def index
		render layout: 'page'
	end

	def conta_candidato
		@user = User.new
		render layout: 'page'
	end

	def conta_empresa
		@user = User.new
		render layout: 'page'
	end
end
