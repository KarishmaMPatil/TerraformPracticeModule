variable "instanceami" {
    default =   "ami-0b6c6ebed2801a5cb"
} 

variable "instancetype" {
   default = "t3.micro"
}

variable "keyname" {
   default = "ubuntu"
}

variable "sg" {
    default = "sg-09e7339607d2e77ae"
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