variable "env" {
  description = "Environment name"
  type = string
}

variable "eks_version" {
  description = "Desired k8s master version"
  type = string
}

variable "eks_name" {
  description = "Name of the cluster"
  type = string
}

variable "subnet_ids" {
  description = "List of subnet ids in two different az's"
  type = list(string)
}

variable "node_groups" {
  description = "EKS node groups"
  type = map(any)
}

variable "node_iam_policies" {
  description = "List of iam policies to attach to eks managed nodes"
  type = map(any)
  default = {
    1 = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
    2 = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
    3 = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
    4 = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  }
}

variable "enable_irsa" {
  description = "Determines whether to create an OpenID Connect Provider"
  type = bool
  default = true
}