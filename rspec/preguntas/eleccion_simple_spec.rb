require "lib/preguntas/eleccion_simple"


module Preguntas
	class EleccionSimple
		describe Preguntas::EleccionSimple do
			before :each do 
				@q = Preguntas::EleccionSimple.new( :pregunta => '2+2=',
					:Op_correcta =>4,:Op_incorrecta =>[9,3,1])

			end
		
			context "cuando se construye una pregunta" do
				it " tiene que tener un texto y algunas opciones" do
					expect(@q.pregunta)=='2+2='
					expect(@q.Op_correcta)== 4
					expect(@q.Op_incorrecta)==[9,3,1]
				end
			end
		end
	end
end 

