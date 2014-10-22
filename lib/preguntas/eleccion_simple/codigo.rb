module Preguntas
  class EleccionSimple
    attr_accessor :pregunta, :Op_correcta, :Op_incorrecta
    
    def initialize args
      @pregunta = args[:pregunta]
	raise ArgumentError , 'Specify :pregunta , :Op_correcta y :Op_incorrecta' unless @pregunta
      @Op_correcta = args[:Op_correcta]
	raise ArgumentError , 'Specify :pregunta , :Op_correcta y :Op_incorrecta' unless @Op_correcta
      @Op_incorrecta = args[:Op_incorrecta]
        raise ArgumentError , 'Specify :pregunta , :Op_correcta y :Op_incorrecta' unless @Op_incorrecta
    end
    
    def to_html
		opcion = @Op_incorrecta+[@Op_correcta]
		opcion = opcion.shuffle
		s= ''
		opcion.each do |opcion|

			s += %Q{<input type="radio" value= "#{opcion}" class = "EleccionSimple" name = 0 > #{opcion}\n}
		end	
		
		#html <<= -"HTML"
		"#{@pregunta}<br/> #{s}\n"
    end
    
    def to_gift
    end
    
    def to_tex
    end
    
    def to_s
      opcion = @Op_incorrecta+[@Op_correcta]
      opcion = opcion.shuffle
      s= ''
      opcion.each do |opcion|
	
	s += %Q{-#{opcion}\n}
	
      end
	puts "#{@pregunta} \n #{s}\n"
    end
		
  end
end
