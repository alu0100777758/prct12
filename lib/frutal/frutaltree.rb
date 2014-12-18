class FrutalTree
   attr_accessor :age,:height,:fruits
   def initialize
      @age=0
      @height=0
      @fruits=0
   end
   def calculate_oranges
      yield @age
   end
   def get_old
      @age +=1
      calculate_oranges
   end
   #Se le pasa como argumento un bloque que define la produccion de naranjas en base al año y la vida del arbol
   def life_function (&block)
      @life=block
   end
   def recolectar_una
      if (@age<0)
         return "Lo sentimos mucho...su arbol ha muerto"
      elsif(@fruits>0)
         @fruits-=1
         return "Estaba moderadamente deliciosa"
      else
         return "No quedan frutas en el arbol"
      end
   end
end
