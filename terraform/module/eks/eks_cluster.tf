resource "aws_eks_cluster" "eks_cluster" {
  name            = "${var.cluster-name}"
  role_arn        = "${aws_iam_role.eks_iam_role_cluster.arn}"

  vpc_config {
    security_group_ids = ["${aws_security_group.eks_security_group_cluster.id}"]
    subnet_ids         = ["${aws_subnet.eks_subnet.*.id}"]
  }

  depends_on = [
    "aws_iam_role_policy_attachment.eks_cluster_AmazonEKSClusterPolicy",
    "aws_iam_role_policy_attachment.eks_cluster_AmazonEKSServicePolicy",
  ]
}
