resource "local_file" "exemplo" {
  filename = "exemplo.txt"
  content = var.conteudo
}

variable "conteudo" {
  type = string
}

output "id-do-arquivo" {
  value = local_file.exemplo.id
}

output "conteudo" {
  value = var.conteudo
}