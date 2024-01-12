extends Control

var nome_field
var nasc_field
var email_field

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# You can add any custom logic here
	pass

func _ready():
	nome_field = $LineEdit
	nasc_field = $LineEdit2
	email_field = $LineEdit3

func _on_button_pressed():
	
	var nome = nome_field.text
	var dataNasc = nasc_field.text
	var email = email_field.text
	if nome != "" && dataNasc != "" && email != "":
		print("Nome inserido: ", nome)
		print("Data de Nascimento: ", dataNasc)
		
		save_data(nome, dataNasc, email)

	else:
		print("Por favor, insira todos os dados antes de enviar")

func save_data(nome, dataNasc, email):
	# Define o caminho do arquivo
	var caminho_do_arquivo = "res://dados_do_usuario.txt"

	# Cria uma instância do objeto File
	var arquivo = FileAccess.open(caminho_do_arquivo, FileAccess.WRITE)

	# Abre o arquivo em modo de escrita
	if arquivo!= null:
		# Escreve o nome no arquivo
		arquivo.store_line("Nome: " + nome)
		arquivo.store_line("Data de Nascimento: " + dataNasc)
		arquivo.store_line("email: " + email)

		# Fecha o arquivo
		arquivo.close()
		print("Dados salvos com sucesso em ", caminho_do_arquivo)
	else:
		print("Erro ao abrir o arquivo para escrita.")
