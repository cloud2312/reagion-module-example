provider "aws" {
  region = var.use1_region
  alias  = "use1"
}

provider "aws" {
  region = var.euw1_region
  alias  = "euw1"
}

provider "aws" {
  region = var.aps1_region
  alias  = "aps1"
}