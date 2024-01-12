## Kubernetes Cluster Setup:

<br>

**1.Prerequisites**

- install awscli
and configure with aws credentials

- install kubectl 
to confirm the same run kubectl version

- install eksctl 
to confirm the same run eksctl version


**2.Run below command to create eks cluster**
<br>
`eksctl create cluster --name cluster1 --region us-west-2 --node-type t3.small --nodes-min 1 --nodes-max 2`


**3.To check cluster run below command**
<br>
`eksctl get cluster`


## Nginx Ingress Setup:

<br>

**1.add helm repo**
`helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx`

**2.update helm**
`helm repo update`

**3.Install nginx**
`helm install nginx-ingress ingress-nginx/ingress-nginx`

**4.Verify installation**
`kubectl get pods -n ingress-nginx`


## Sample Application Deployment:

**1.Deployment**
`kubectl apply -f Deploument.yaml`
`kubectl apply -f Service.yaml`
`kubectl apply -f Ingress.yaml`

**2.service port-forwar**
`kubectl port-forward svc/nodejs-service 8080:8080 --address 0.0.0.0`

**3.To check ingress type below url**
`domain.com/`


