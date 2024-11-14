provider "aws" {
  region = "us-east-1"
  alias  = "use1"
#  profile = "terraform-user"
}

provider "aws" {
  region = "ap-south-1"
  alias  = "apec1"
#  profile = "terraform-user"
}

/*
provider "aws" {
  region = var.aps1_region
  alias  = "aps1"
#  profile = "terraform-user"
}
*/