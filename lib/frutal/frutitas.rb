require"frutal/frutaltree"


arbol = FrutalTree.new

th1 = Thread.new do
    while arbol.fruits != -1 do
        arbol.get_old
        print "El arbolito se hizo un poco mas viejo\n"
        sleep 1
        print "Esperando 1 segundo para crecer\n"
    end
end

th2 = Thread.new do 
    while arbol.fruits >= 0 do
        if arbol.fruits == 0 then
            print "No quedan frutas, a esperar! :D\n"
            sleep 2
       end
        print arbol.recolectar_una
    end
    print "El arbolito murio D:\n"
end


th2.join
th1.join