require "lib/preguntas/eleccion_simple"


module Preguntas
	class EleccionSimple
		describe Preguntas::EleccionSimple do
			before :each do 
				@q = Preguntas::EleccionSimple.new( {:pregunta => '2+2=',
					:Op_correcta =>4,:Op_incorrecta =>[9,3,1]})

			end
		
			context "cuando se construye una pregunta" do
				it " tiene que tener un texto y algunas opciones" do
					expect(@q.pregunta)=='2+2='
					expect(@q.Op_correcta)== 4
					expect(@q.Op_incorrecta)==[9,3,1]
				end

				it "tiene que tener 3 componentes" do
					expect{Preguntas::EleccionSimple.new(
						 :pregunta => '5*8=?' )}.to raise_error(ArgumentError)
				end
			end
			context "cuando covertimos a " do
				it " si podemos convertir a html" do
					expect(@q).to respond_to :to_html
					it "tiene que producir un html razonable" do
					r = %r{
					  (<input \s+
					    type = "radio"\s+
					    value ="\d+" \s+
					    .*
					    name = \d+>\s+\d+\s+
					    ){4}
					}x
					  
					expect(@q.to_html).to mach(r)
					end
					
					it " tiene que contener la expresion r" do
					  r = Regexp.escape @q.pregunta
					  expect(@q.to_html).to match(r)
					end
				end
				
				it "puede convertirse a latex " do
					  expect(@q).to respond_to :to_tex
				end
				
							
				it "puede mostrarse por pantalla" do
				  expect(@q).to respond_to :to_s
					  
				end
			
			end
				
		end
	end
end 

