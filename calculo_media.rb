resultado = ' '
loop do
   puts resultado
   puts 'Escolha uma das seguintes opçoes. '
   puts '1 -Saber se o aluno foi aprovado ou não. '
   puts '0 -Sair. '
   print 'Opção: '
   opcao = gets.chomp.to_i

   case opcao
   when 1
     print 'Nome do aluno: '
     nome_aluno = gets.chomp
     print 'Primeira nota: '
     nota_1 = gets.chomp.to_f
     print 'Segunda nota: '
     nota_2 = gets.chomp.to_f
     print 'Terceira nota: '
     nota_3 = gets.chomp.to_f
     print 'Quarta nota: '
     nota_4 = gets.chomp.to_f

     media = (nota_1 + nota_2 + nota_3 + nota_4) / 4

     if media >= 7
        resultado =  "\n#{nome_aluno} você está aprovado com média: #{media}\n"
     elsif media < 7 && media > 5
         resultado = "\n#{nome_aluno} você está em recuperação com média: #{media}\n"
     else
         resultado = "\n#{nome_aluno} você está reprovado com média: $.2f#{media}\n"
     end
      puts resultado
      File.open('resultados.txt', 'a') do |file|
      file.puts resultado
    end

   when 0
      break
   else
      resultado = "\nOpção invalida!"
   end
   system "clear"
end
