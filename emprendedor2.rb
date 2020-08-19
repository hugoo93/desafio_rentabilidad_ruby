precio_venta = ARGV[0].to_i
usuarios = ARGV[1].to_i
usuarios_premium = ARGV[2].to_i
usuarios_gratuitos = ARGV[3].to_i
gastos = ARGV[4].to_i

utilidades = ((precio_venta * usuarios)+(precio_venta*2*usuarios_premium)+(0*usuarios_gratuitos)) - gastos

if precio_venta == 0 || usuarios == 0 && usuarios_premium ==0 && usuarios_gratuitos == 0 || gastos == 0
    puts 'Por favor, ingrese todos los datos'
elsif utilidades < 0
    puts "Hay una pérdida de $#{utilidades.abs}"
elsif utilidades == 0
    puts "No hay utilidades"
else
    impuestos = utilidades * 0.35
    utilidades2 = utilidades - impuestos
    puts "Las utilidades son de $#{utilidades2}"
end