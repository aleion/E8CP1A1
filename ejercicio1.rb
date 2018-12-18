arr = ['Elem1','Elem2','Elem3','Elem4','Elem5']
puts 'Ingrese parrafo 1'
string1 = gets.chomp
puts 'Ingrese parrafo 2'
string2 = gets.chomp
puts 'Ingrese el colore de los parrafos'
color_p = gets.chomp

def creat_html
    file = File.new('index.html', 'w')
    file.write "<!DOCTYPE html>\n<html>\n<head>\n<meta charset='utf-8'/>\n<meta charset='utf-8'/>\n<meta http-equiv='X-UA-Compatible'content='IE=edge'>\n<title>Ejercicio 1</title>\n<meta name='viewport' content='width=device-width, initial-scale=1'>\n<style>\n</style>\n</head>\n<body>\n"
    file.close
end

def metodo_uno(str1, str2, color)
    creat_html
    arr_str = [str1, str2]
    arr_str.each {|i| file.puts "<p style=#{color};>#{i}</p>\n"}
    #file = File.open('index.html', 'a')
    #file.write "<p style=;>#{str1}</p>\n<p>#{str2}</p>\n"
    #file.close
end

def metodo_dos(arreglo)
    file = File.open('index.html', 'a')
    file.write "<ol>\n"
    elem = arreglo.each {|i| file.puts "<li>#{i}</li>"}
    file.write "</ol>\n"
    file.close
end

def metodo_tres(col)
    color = col
    p color
end
def close_html
    file = File.open('index.html', 'a')
    file write "</body>\n</html>\n"
    file.close
end


metodo_uno(string1, string2, metodo_tres)
metodo_dos(arr)
metodo_tres(color_p)
close_html
