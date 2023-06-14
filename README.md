## Cria uma imagem do spark

    make build


## Instalando Apache Airflow no K8s
    $ helm install airflow -f helm/airflow/values.yaml helm/airflow -n orchestrator --create-namespace

    # habilita permissão para que o airflow consiga submeter o YAML do Spark 
    $ kubectl apply -f helm/airflow/config-permission.yaml

    mapeia a porta do localhost para o container
    $ kubectl port-forward svc/airflow-webserver 8080:8080 --namespace orchestrator

    # Login
    Usuario: admin
    Senha: admin

### Links
https://github.com/datamechanics/delight

https://github.com/GoogleCloudPlatform/spark-on-k8s-operator/blob/master/docs/user-guide.md