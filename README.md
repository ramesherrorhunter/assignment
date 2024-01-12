## Kubernetes Cluster Setup:

<br>

**1.Prerequisites**

<br>
- install awscli and configure on local machine
- install kubectl 
<br> to confirm the same run kubectl version
- install eksctl 
<br> to confirm the same run eksctl version


**2.Run below command to create eks cluster**

<br>
`eksctl create cluster --name cluster1 --region us-west-2 --node-type t3.small --nodes-min 1 --nodes-max 2`


**3.To check cluster run below command**

<br>
`eksctl get cluster`

