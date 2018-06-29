variable "cluster-name" {
  default = "eks-cluster"
}

variable "instance-size" {
  default = "t2.medium"
}

variable "autoscale-min" {
  default = 1
}

variable "autoscale-max" {
  default = 3
}
