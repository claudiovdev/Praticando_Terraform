resource "aws_vpc" "new-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "cursoterraform-vpc"
  }
}

data "aws_availability_zones" "available" {}

output "all_availability_zones" {
  value = data.aws_availability_zones.available.names  # Lista todas as zonas de disponibilidade disponíveis
}


