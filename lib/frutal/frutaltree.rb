class FrutalTree
   attr_accessor :age,:height,:fruits
   def initialize
      @age=0
      @height=0
      @fruits=0
      
      @life= lambda do |x,y|
         if(@age>20)
            @fruits=-1
         elsif(@age>7)
            @fruits+=(@age/3)+1
         end
      end
         
   end
   
   def calculate_oranges
      @life.call(@age,@fruits)
   end
   
   def get_old
      @age +=1
      @height +=2
      calculate_oranges
   end
   
   #Se le pasa como argumento un bloque que define la produccion de naranjas en base al año y la vida del arbol
   def life_function (&block)
      @life=block
   end
   
   def recolectar_una
      if (@fruits<0)
         return "Lo sentimos mucho...su arbol ha muerto\n"
      elsif(@fruits>0)
         @fruits-=1
         return "Estaba moderadamente deliciosa\n"
      else
         return "No quedan frutas en el arbol\n"
      end
   end
end

