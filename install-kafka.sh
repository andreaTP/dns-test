kubectl create ns cloudflow | true
helm repo add strimzi https://strimzi.io/charts/ | true
helm repo update
helm upgrade -i strimzi strimzi/strimzi-kafka-operator --namespace cloudflow
(for i in 1 2 3; do kubectl apply -f kafka-cluster.yaml && break || sleep 2; done)
