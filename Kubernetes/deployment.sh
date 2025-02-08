kubectl apply -f configmap-rabbitmq.yaml --validate=false
kubectl apply -f configmap-postgresql.yaml --validate=false
kubectl apply -f configmap-order-service.yaml --validate=false
kubectl apply -f configmap-process-service.yaml --validate=false
kubectl apply -f configmap-indetity-service.yaml

kubectl apply -f deployment-rabbitmq.yaml --validate=false
kubectl apply -f deployment-postgresql.yaml --validate=false
kubectl apply -f deployment-order-service.yaml --validate=false
kubectl apply -f deployment-process-service.yaml --validate=false
kubectl apply -f deployment-identity-service.yaml --validate=false