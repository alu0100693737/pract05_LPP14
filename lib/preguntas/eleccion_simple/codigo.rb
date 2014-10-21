module Preguntas
  class EleccionSimple
    attr_accessor :pregunta, :Op_correcta, :Op_incorrecta
    
    def initialize(args)
      @pregunta = args[:pregunta]
      @Op_correcta = args[:Op_correcta]
      @Op_incorrecta = args[:Op_incorrecta]
      
    end
    
    
       
  