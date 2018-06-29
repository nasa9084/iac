Infrastructure as Code
===

## Terraform modules

### AWS

#### Elastic Container Service for Kubernetes (EKS)

* source: `module/eks`

| variable name | description            | default     |
|:-------------:|:-----------------------|:------------|
| cluster-name  | EKS cluster name       | eks-cluster |
| instance-size | node EC2 instance size | t2.medium   |
| autoscale-min | min number of nodes    | 1           |
| autoscale-max | max number of nodes    | 3           |

##### example

``` ruby
provider "aws" {
    region     = "us-west-2"   # currentry, us-east-1 or us-west-2
    access_key = "YOUR_ACCESS_KEY"
    secret_key = "YOUR_SECRET_ACCESS_KEY"
}

module "eks-cluster" {
    source       = "./module/eks"
    cluster-name = "my-cluster"
}
```
