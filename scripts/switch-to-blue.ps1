Write-Host "Rolling production traffic back to BLUE..."
kubectl patch service frontend-service -p '{"spec":{"selector":{"app":"frontend","version":"blue"}}}'
kubectl patch service frontend-service -p '{"spec":{"ports":[{"name":"http","port":80,"targetPort":3100}]}}'
kubectl get service frontend-service
kubectl get endpoints frontend-service
