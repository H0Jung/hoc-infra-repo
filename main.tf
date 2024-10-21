module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-0cd1c84748a16ec98"

  private_subnets = ["subnet-0cf129cbb5072c562", "subnet-0fd69b76db5978b21"]
  public_subnets  = ["subnet-0e9c13e77dc59fb72", "subnet-064ca11251dc30470"]
}