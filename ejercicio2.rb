def metodo_uno
    file = File.open('peliculas.txt', 'r')
    movies = file.readlines
    puts movies.length
end

metodo_uno

#listo