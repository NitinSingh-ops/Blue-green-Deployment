Write-Host "Switching production traffic to GREEN..."
kubectl patch service frontend-service -p '{"spec":{"selector":{"app":"frontend","version":"green"}}}'
kubectl patch service frontend-service -p '{"spec":{"ports":[{"name":"http","port":80,"targetPort":3200}]}}'
kubectl get service frontend-service
kubectl get endpoints frontend-service
