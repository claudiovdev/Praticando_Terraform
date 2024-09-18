resource "local_file" "exemplo" {
  filename = "exemplo.txt"
  content = var.conteudo
}

data "local_file" "conteudo-exemplo"{
  filename = "exemplo.txt"
}

variable "conteudo" {
  type = string
}

output "data-source-result" {
  value = data.local_file.conteudo-exemplo.content_base64
}

output "id-do-arquivo" {
  value = local_file.exemplo.id
}

output "conteudo" {
  value = var.conteudo
}