terraform {
  backend "s3" {
    bucket = "<tfstate-bucket>" # MEMO: tfstate格納用のS3バケットを事前に作成する
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
