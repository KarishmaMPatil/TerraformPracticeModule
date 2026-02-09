 module "ec2" {
    source = "/home/karipatil/TerraformPractice/VPCmodule/main/EC2"
    webserver_ami = "ami-019715e0d74f695be"    
    webserver_instance_type = "t3.micro"
    webserver_keyname = "ubuntu"
    webserver_disable_api_termination = false
    webserver_sg = module.vpc.webserversg   #attache security group to ec2 module name vpc webserversg from output block
    webserver_subnetA = module.vpc.subnet_id  #subnet id from output block 

 }

module "vpc" {
   source = "/home/karipatil/TerraformPractice/VPCmodule/main/VPC"
   vpc_cidr = "172.30.0.0/16"   #vpc variable block unique name
   vpc_subnetA = "172.30.128.0/20"
   public_ip = true
   az = "ap-south-1a"


}
