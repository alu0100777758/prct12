require "frutal.rb"
#require "spec_helper"
describe FrutalTree do
    
     before :all do
        @naranjo = FrutalTree.new
    end
    describe "Ver los datos basicos del arbol" do
        it "Existe un arbol" do 
        end
        it "permite acceder a sus datos" do
           @naranjo.age.should eq(0)
           @naranjo.height.should eq(0)
           @naranjo.fruits.should eq(0)
        end
    end

    
    
end
