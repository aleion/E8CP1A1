def metodo_uno 
    file = File.open('peliculas.txt', 'r')
    line = file.split(/[[:space:º]]/)
    line.reject(&empty?)
    line.size
    print file
end

metodo_uno