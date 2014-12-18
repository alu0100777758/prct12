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

arbol = FrutalTree.new

th1 = Thread.new do
    while arbol.age != -1 do
        arbol.get_old
        print "El arbolito se hizo un poco mas viejo\n"
        sleep 1
        print "Esperando 1 segundo para crecer\n"
    end
end

th2 = Thread.new do 
    while arbol.age != -1 do
        if arbol.fruits == 0 then
            print "No quedan frutas, a esperar! :D\n"
            sleep 2
       end
       if arbol.age > 0 then
        print arbol.recolectar_una
      end
    end
    print "El arbolito murio D:\n"
end


th2.join
th1.join