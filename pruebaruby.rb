alum = 0
suma = 0
divisor = 0
alum =[]
n = 0

opcion = 0
while opcion !=4
		puts "-----"	
		puts "Menu"
		puts " 1- Ver curso y notas " 
		puts " 2- Ver ausencias" 
		puts " 3- Ver aprobados " 
		puts " 4- Salir " 
		puts "-----"


		opcion = gets.chomp.to_i

		case opcion
			when 1
				puts "CURSO Y NOTAS"

					file = File.open('alumnos.csv','r')
					curso= file.readlines
					file.close

    				curso.each do |x|
    				alum = []
    				alum = x.split(",").map(&:chomp)
    				divisor = alum.length-1
    				suma = alum.map{|x| x.to_i}.sum
    				promedio = suma.to_f/divisor
    				puts "#{alum[0]} Promedio:#{promedio}" #muestra en consola

    				file = File.open('promedioCurso.csv', 'a')
    				file.puts "#{alum[0]} #{promedio}"#escribe archivo externo
    				file.close
    				end

			when 2
				puts "TOTAL DE AUSENCIAS"
				def parse_alum(nombre,falta)
					puts nombre
					puts falta

					#falta = falta.split(',').map(&:chomp)
					#puts "Ausencias:#{falta.count('A')}"
					end

					file = File.open('alumnos.csv','r')
					curso= file.readlines
					file.close

					curso.each do |ele|
						alum = ele.split(',').map(&:chomp)
						puts alum[0]
						puts alum.select {|a| a=='A'}.length


					#parse_alum()
					end

			when 3
				
				file = File.open('alumnos.csv','r')
					curso= file.readlines
					file.close

					curso.each do |x|
    				a = []
    				a= x.split(",").map(&:chomp)
    				divisor = a.length-1
    				suma = a.map{|x| x.to_i}.sum
    				promedio = suma.to_f/divisor
    				# puts "Ingrese promedio de aprobacion"
    				# promedio = n
    				# n = gets.chomp.to_i

    				# if  promedio >=n
    					# puts "aprueban con promedio ingresado"
						# puts a[0]
						# puts promedio

					 if promedio>=5
						puts "Promedio mayor o igual a 5"
						puts a[0]
					 	puts promedio
					 

					# else
					#
					end
				end
			when 4
				puts "FINALIZADO"
				# salir
			else
				puts "Opcion invalida"
			end
end