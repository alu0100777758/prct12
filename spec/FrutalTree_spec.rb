require "frutal.rb"
#require "spec_helper"
describe FrutalTree do
    
     before :all do
        @naranjo = FrutalTree.new
    end
    describe "realizar la simulacion de la vida del arbol" do
        it "Existe un arbol" do 
        end
        it "permite acceder a sus datos" do
           @naranjo.age.should eq(0)
           @naranjo.height.should eq(0)
           @naranjo.fruits.should eq(0)
        end
        it "permite envejecer al arbol" do
           @naranjo.get_old
           @naranjo.age.should eq(1)
        end
        it "al envejecer aumenta de altura" do
           @naranjo.height.should eq(2)
        end
        it "pasado cierto tiempo comienza a dar frutos" do
           @naranjo.fruits.should eq(0)
           for i in 0..6 do
              @naranjo.get_old
           end
           @naranjo.fruits.should eq(3)
        end
        it "debe permitir extraerle frutos" do
           @naranjo.recolectar_una
           @naranjo.fruits.should eq(2)
        end
        it "Debe volver a calcular correctamente la produccion al volver a envejecer" do
           @naranjo.get_old
           @naranjo.fruits.should eq(6)
        end
        it "Debe perecer al pasar un largo periodo" do
           for i in 0..42 do
              @naranjo.get_old
           end
           @naranjo.recolectar_una.should eq("Lo sentimos mucho...su arbol ha muerto\n")
        end
    end

    
    
end
