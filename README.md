# custom-error-pages
Custom error pages for Nginx ingress Controller.

# Getting Started

1. Clone repo
2. Replace www folder with your error pages.
3. Docker build and push

# Kubernetes Deployment

Use Docker image: pavansh/custom-error-pages 

1. Replace default-http-backend image with *pavansh/custom-error-pages* . 
2. Change default-http-backend service with targetPort 80. 

or create new deployment

```
cd k8s
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```


# Change in Nginx Ingress Configuration. 

1. Edit the nginx-ingress-controller Deployment and set the value of the --default-backend flag to the name of the newly created error backend

2. Edit the nginx-configuration ConfigMap and create the key custom-http-errors with a value of 404,500,502,503
