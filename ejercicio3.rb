def metodo_uno(file_input) 
  file = File.open(file_input, 'r')
  line = file.read
  lineas = line.split(" ")
  puts lineas.size
end

def metodo_dos(file_input, string) 
  file = File.open(file_input, 'r')
  line = file.read
  lineas = line.split(" ")
  puts lineas.count(string)
end

metodo_uno('peliculas.txt')
metodo_dos('peliculas.txt', 'El')

#listo