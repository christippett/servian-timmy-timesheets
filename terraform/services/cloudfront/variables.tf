data "terraform_remote_state" "shared" {
    backend = "s3"
    config {
        bucket              = "team2-terralock"
        key                 = "Team2/terraform/shared/terraform.tfstate"
        region              = "ap-southeast-2"
    }
}

data "terraform_remote_state" "s3" {
    backend = "s3"
    config {
        bucket              = "team2-terralock"
        key                 = "Team2/terraform/global/S3/terraform.tfstate"
        region              = "ap-southeast-2"
    }
}

data "terraform_remote_state" "acm" {
    backend = "s3"
    config {
        bucket              = "team2-terralock"
        key                 = "Team2/terraform/global/acm/terraform.tfstate"
        region              = "ap-southeast-2"
    }
}

data "terraform_remote_state" "route53" {
    backend = "s3"
    config {
        bucket              = "team2-terralock"
        key                 = "Team2/terraform/global/route53/terraform.tfstate"
        region              = "ap-southeast-2"
    }
}
