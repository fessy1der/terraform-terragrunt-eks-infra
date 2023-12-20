resource "aws_subnet" "private_us_east_2a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "us-east-2a"

  tags = {
    "Name"                               = "staging-private-us-east-2a"
    "kubernetes.io/role/internal-elb"    = "1"
    "kubernetes.io/cluster/staging-demo" = "owned"
  }
}

resource "aws_subnet" "private_us_east_2b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.32.0/19"
  availability_zone = "us-east-2b"

  tags = {
    "Name"                               = "staging-private-us-east-2b"
    "kubernetes.io/role/internal-elb"    = "1"
    "kubernetes.io/cluster/staging-demo" = "owned"
  }
}

resource "aws_subnet" "public_us_east_2a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.64.0/19"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true

  tags = {
    "Name"                               = "staging-private-us-east-2a"
    "kubernetes.io/role/internal-elb"    = "1"
    "kubernetes.io/cluster/staging-demo" = "owned"
  }
}

resource "aws_subnet" "public_us_east_2b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.96.0/19"
  availability_zone       = "us-east-2b"
  map_public_ip_on_launch = true

  tags = {
    "Name"                               = "staging-private-us-east-2b"
    "kubernetes.io/role/internal-elb"    = "1"
    "kubernetes.io/cluster/staging-demo" = "owned"
  }
}

