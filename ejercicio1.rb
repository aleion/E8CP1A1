string1 = gets.chomp
string2 = gets.chomp
def metodo_uno(str1, str2)
    file = File.new('index.html', 'w')
    file.write "<p>#{str1}</p>\n<p>#{str2}</p>"
    file.close
end

metodo_uno(string1, string2)
