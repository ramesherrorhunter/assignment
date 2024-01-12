## Kubernetes Cluster Setup:
<br>

**1.Prerequisites**
<br>

- install awscli and configure on local machine
- install kubectl
  <br>
  to confirm the same run
  <br>
  
  `kubectl version`
- install eksctl
  <br>
  to confirm the same run
  <br>
  
  `eksctl version`

**2.Run below command to create eks cluster**
<br>
`eksctl create cluster --name cluster1 --region us-west-2 --node-type t3.small --nodes-min 1 --nodes-max 2`

**3.To check cluster run below command**
<br>
`eksctl get cluster`

## Nginx Ingress Setup:
<br>

**1.add helm chat repo**

`helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx`
<br>

**2.update helm repo**

`helm repo update`
<br>

**3.install ingress controller**

`helm install nginx-ingress ingress-nginx/ingress-nginx`
<br>

**4.verify installation**

`kubectl get pods -n ingress-nginx`
<br>

## Sample Application Deployment:

**1.Deploye K8s manifest**
<br>
`kubectl apply -f Deployment.yaml`
<br>
`kubectl apply -f Service.yaml`
<br>
`kubectl apply -f Ingress.yaml`

**2.To check ingress**
<br>
`kubectl get ingress`
<br>
`dommain.com/`
