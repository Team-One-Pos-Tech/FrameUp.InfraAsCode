kubectl apply -f configmap-rabbitmq.yaml
kubectl apply -f configmap-postgresql.yaml
kubectl apply -f configmap-order-service.yaml
kubectl apply -f configmap-process-service.yaml
kubectl apply -f configmap-indetity-service.yaml

kubectl apply -f vpc-rabbitmq.yaml
kubectl apply -f deployment-rabbitmq.yaml
kubectl apply -f vpc-postgresql.yaml
kubectl apply -f deployment-postgresql.yaml
kubectl apply -f deployment-order-service.yaml
kubectl apply -f deployment-process-service.yaml
kubectl apply -f deployment-identity-service.yaml