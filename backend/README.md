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
terraform plan -var-file="backend.tfvars" -var="createdby=sheytech"
```
## Setp 4: 
```terraform apply -var-file="backend.tfvars" -var="createdby=sheytech"
```
## Setp 5: 
```
terraform destroy -var-file="backend.tfvars" -var="createdby=sheytech"
```

