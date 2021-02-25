kubectl create ns test | true

kubectl apply -f pod.yaml -n test
