# How to execute
## Step 1 : 
```
terraform init
```
## Step 2: 
```
terraform validate
```
## Setp 3: 
```
terraform plan -var-file="eks.tfvars" -var="createdby=sheytech"
```
## Setp 4: 
```terraform apply -var-file="eks.tfvars" -var="createdby=sheytech"
```
## Setp 5: 
```
terraform destroy -var-file="eks.tfvars" -var="createdby=sheytech"
```

# #########################################
             RARE ERROR MESSAGE
# #############################################
Enter a value: yes

module.sheytech-eks.aws_eks_cluster.eks-cluster: Creating...
╷
│ Error: creating EKS Cluster (eks-cluster-RxHpv): UnsupportedAvailabilityZoneException: Cannot create cluster 'eks-cluster-RxHpv' because us-east-1e, the targeted availability zone, does not currently have sufficient capacity to
support the cluster. Retry and choose from these availability zones: us-east-1a, us-east-1b, us-east-1c, us-east-1d, us-east-1f
│ {
│   RespMetadata: {
│     StatusCode: 400,
│     RequestID: "e834dd99-d844-4584-8a06-724c7b84f675"
│   },
│   ClusterName: "eks-cluster-RxHpv",
│   Message_: "Cannot create cluster 'eks-cluster-RxHpv' because us-east-1e, the targeted availability zone, does not currently have sufficient capacity to support the cluster. Retry and choose from these availability zones: us-east-1a, us-east-1b, us-east-1c, us-east-1d, us-east-1f",
│   ValidZones: [
│     "us-east-1a",
│     "us-east-1b",
│     "us-east-1c",
│     "us-east-1d",
│     "us-east-1f"
│   ]
│ }
│
│   with module.sheytech-eks.aws_eks_cluster.eks-cluster,
│   on ..\modules\sheytech-eks\main.tf line 8, in resource "aws_eks_cluster" "eks-cluster":
│    8: resource "aws_eks_cluster" "eks-cluster" {
│

### https://discuss.hashicorp.com/t/exclude-names-not-working-as-expected-in-aws/17579
