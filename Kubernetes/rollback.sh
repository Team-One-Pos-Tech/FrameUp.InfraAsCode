kubectl delete -f configmap-rabbitmq.yaml 
kubectl delete -f configmap-postgresql.yaml 
kubectl delete -f configmap-order-service.yaml 
kubectl delete -f configmap-process-service.yaml 
kubectl delete -f configmap-indetity-service.yaml

kubectl delete -f deployment-rabbitmq.yaml 
kubectl delete -f vpc-rabbitmq.yaml
kubectl delete -f deployment-postgresql.yaml
kubectl delete -f vpc-postgresql.yaml
kubectl delete -f deployment-order-service.yaml 
kubectl delete -f deployment-process-service.yaml 
kubectl delete -f deployment-identity-service.yaml 