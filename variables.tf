variable "vpc_cidr" {
  type        = string
  description = "rapido vpc cidr"
  #default     = "10.1.0.0/16"
}

variable "subnet1_cidr" {
  type        = string
  description = "rapido subnet1 cidr"
  #default     = "10.1.1.0/24"
}

variable "keypair" {
  type = object({
    public_key = string
    key_name   = string
  })
  description = "keypair"

  default = {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC6GDUsHtTZDK8efoEB+YPHfN+24o2OLNJ+viAvk1kLrk9sTicFmzMa+EOej1Z/XCNzsJgoDt5XqDJcID+36f7jEucKIr4PpDg3nx7aNp4VXNqlMmfsLES6Q4rtgQIG6h/vxQDRw9zTS4UlC59/Vs+2ERs6yK+Ajurn6VIV9BvtDpKnQ8KOgcGjvoFcZE/4dv8lGfUbJ49UAnoyGYCkqH0A3W9sIcbTOFCAPslGNTVGl8wd56GrX8Q7Kpnq9AW6xfkgMMUS+IsHJJxMjTgbXPy5WAOnmLob0PCkWQA02v92PlRawzS40mEY5EVCOabJl2AG0780FKqIM751RU5hEZ4Xobn1zYFMs2KU1EWT2j/Sh0mTuKvMyS33GU2NmTg3Big76/U5WNJu1t2K4eUfsr47hN+0KWWWWo7/8EBKHU97VkOao77MqJwhZrED1Lw8GXigrJoYFYMr7Z/qkubhx+N1KzmKm1AtwgUANUpdUq8Xfo4X8mhbK5QHtsanK1Vl31s= techs@TechTitans"
    key_name   = "terraformkp"
  }
}

variable "ec2instanceconfig" {
  type = object({
    instance_type       = string
    ami                 = string
    associate_public_ip = bool
  })
  description = "ec2 instance configuration"
  /*default = {
    instance_type = "t2.micro"
    ami = "ami-03f4878755434977f"
    associate_public_ip = true
  }*/
}














