//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/Adrianvdh/compute/aws"
  version = "1.0.0"

  aws_region = "us-east-1"
  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCwFLst0Zr1e+lpf2Jx8ztboCEnkc/LWH/RQg/vZmM0TUZFanavEPXVBV9KTRbFhFLX+jQETI6vBremaYPNe4PlowmdGGyGALI0mNkH52viuwKgRQE0JfmBN4qKH3+tydi2iACTyzrg/hn+SWhEC45IhWSetjZrueWwSa9d1Ust/YGk2QV4ftoZ7GIfkmZnGhbNhwAVBYPYwOvrn40Yk+LcZ5ouORSXmSBCj/vxzVLvKao33FAY7FWfTHAopWla6/cazO+EEhbSQf6ZF0sHoDpmbmak/n/Isu31aSWtRm4iQzTFq/FBK4egudv8oSlxWLagcsJ+1WNTk1YTruyuzB3h7GqXBgOxb2/oM4ye1cR621ysT2/OF69j1zaxo9nFWTTPCqmrOv/E+a3Kr2djQQD2wyMdlbgKGhqd7SyfLlsdFF6638n75XwzMSToE7nYD2RMxoYLxoL6ygYYtnTkhRWoGvVV70cr8EsLQoLk7W+Gh6/eirkqPfP9f8OcDjBoiBE= adrian@Adrians-MacBook-Pro.local"
  public_sg = "${module.networking.public_sg}"
  public_subnets = "${module.networking.public_subnets}"
}

module "networking" {
  source  = "app.terraform.io/Adrianvdh/networking/aws"
  version = "1.0.0"

  access_ip = "0.0.0.0/0"
  aws_region = "us-east-1"
}