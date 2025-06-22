#root
module "vpc" {
    source = "./VPC"
  
}
module "ec2" {
    source = "./Web"
    sn= module.vpc.pb_sn1
    sg = module.vpc.sg
  
}