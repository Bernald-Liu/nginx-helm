# nginx-helm

create secret:
kubectl create secret tls nginx-tls --cert=/root/nginx-helm/sslcert/cert.crt --key=/root/nginx-helm/sslcert/key.key

install helm:
helm install my-nginx ./nginx-helm/
