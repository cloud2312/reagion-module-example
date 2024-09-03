provider "aws" {
  region  = var.use1_region
  alias   = "use1"
  profile = "terraform-user"
  assume_role {
    role_arn = "arn:aws:iam::075939457855:role/cross-account-assume-role"
  }
}

provider "aws" {
  region  = var.euw1_region
  alias   = "euw1"
  profile = "terraform-user"
  assume_role {
    role_arn = "arn:aws:iam::075939457855:role/cross-account-assume-role"
  }
}

provider "aws" {
  region  = var.aps1_region
  alias   = "aps1"
  profile = "terraform-user"
  assume_role {
    role_arn = "arn:aws:iam::075939457855:role/cross-account-assume-role"
  }
}
