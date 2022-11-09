data "aws_subnets" "example" {
  vpc_id = "vpc-00faffe55555c2c46"
}

data "aws_subnet" "main" {
  for_each = data.aws_subnets.example.ids
  id       = each.value
}


data "aws_availability_zones" "available" {
  state = "available"
}
