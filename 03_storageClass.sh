echo "" 
echo "--> current storageclass"
echo "kubectl get nodes"
kubectl get storageclass 
echo "" 
echo "--> deploy storageOS storageClass / 0 replica / encryption off"
echo "kubectl apply -f storageClass_basic.yaml"
kubectl apply -f storageClass_basic.yaml
echo "" 
echo "--> deploy storageOS storageClass / 1 replica / encryption on"
echo "kubectl apply -f storageClass_basic.yaml"
kubectl apply -f storageClass_rep1_encryption.yaml
echo "" 
echo "--> check PVC"
echo "kubectl get pvc -A"
kubectl get pvc -A
echo "" 
echo "--> check PVs"
echo "kubectl get pv"
kubectl get pv
echo ""