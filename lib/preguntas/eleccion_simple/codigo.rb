module Preguntas
  class EleccionSimple
    attr_accessor :pregunta, :Op_correcta, :Op_incorrecta
    
    def initialize args
      @pregunta = args[:pregunta]
      @Op_correcta = args[:Op_correcta]
      @Op_incorrecta = args[:Op_incorrecta]
      
    end
    
    def to_html
		opcion = @Op_incorrecta+[@Op_correcta]
		opcion = opcion.sample       
		s= ''
		opcion.each do |opcion|
		s +=  %Q{<input type = "radio" value= "#{opcion}" name = 0 > #{opcion}\n}
		end
		html <<= - "HTML"
		"#{@pregunta}"
		"#{s}"
		"HTML"		
		
		
    end
  end
end
