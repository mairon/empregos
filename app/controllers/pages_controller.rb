class PagesController < ApplicationController

	def index
		@ultimas_vagas = Vaga.select('cargo_id,empresa_id').order('id desc').limit(5)
		@curriculos_vagas = CandidatosCargo.select('cargo_id,count(cargo_id) as curriculos').group('cargo_id').order('2 desc').limit(5)
		render layout: 'page'
	end
end
