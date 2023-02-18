INSERIR_RECEITA = 1
VISUALIZAR_RECIETAS = 2
BUSCAR_RECEITA = 3
SAIR = 4

def bem_vindo()
  puts "Bem-vindo ao CoooBook, sua rede de receita"
end

def menu()
  puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
  puts "[#{VISUALIZAR_RECIETAS}] Ver todas as receitas"
  puts "[#{BUSCAR_RECEITA}] Buscar resceita"
  puts "[#{SAIR}] Sair"
  
  print "Escolha uma opção"
  return gets.to_i()
end

def inserir_receitas()
  puts "Digite o nome da receita: "
  nome = gets.chomp()
  puts "Digite o tipo da receita: "
  tipo = gets.chomp()  
  puts
  puts "Receita #{nome} cadastrada com sucesso!"
  puts
  return { nome: nome, tipo: tipo }
end

def imprimir_receitas(arrays)
  puts "======= Receitas cadastradas ======="
    arrays.each do |receita|
     puts "#{receita[:nome]} - #{receita[:tipo]}"
    end
    puts
end

def buscar_receita()
  puts "Digite o nome da receita: "
  nome = gets.chomp()
  puts "Digite o tipo da receita: "
  tipo = gets.chomp()  
  puts
  puts "Receita #{nome}"
  puts
end

bem_vindo()

receitas = []

opcao = menu()

loop do
  if(opcao == INSERIR_RECEITA)
   receitas << inserir_receitas()
  elsif(opcao == VISUALIZAR_RECIETAS)
    imprimir_receitas(receitas)
  elsif(opcao == BUSCAR_RECEITA)
    buscar_receita()
    elsif(opcao == SAIR)
      break
  else
    puts "opção inválida"
  end
  
  opcao = menu()
end

  puts
  print "Obrigado por escolher o cookbook!"