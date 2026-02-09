variable "instanceami" {
    default =   "ami-019715e0d74f695be"
} 

variable "instancetype" {
   default = "t3.micro"
}

variable "keyname" {
   default = "ubuntu"
}

variable "sg" {
    default = "sg-0d77ee32ad3dde7d4"
} 
variable "api_termination" {
  default = true
} 

variable "nosofinstances" {
  default = 2
}


#data types 
#  1    =   number 
#  "anup", "1" = string 
#  true  = boolean 
#  2.1 = float  