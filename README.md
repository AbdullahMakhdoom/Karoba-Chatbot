# python-deep-learning-chatbot
A deep learning chatbot created with Python and Flask.

### Docker 

 Go to root directory of this repo. Build the docker using the following command :
```
docker build -t chatbot_flask .
```

After successful build, run the docker container using the following command :

```
docker run chatbot_flask
```

### Minikube

   This is the tool used to run Kubernetes locally, for your OS. This includes installing a hypervisor and `kubectl`, the command-line tool used to manage Kubernetes from your local workstation.
   
 Start Minikube cluster using the following command :
 ```
 minikube start
 ```
 
 Set the environment variable :
 
 ```
 eval $(minikube docker-env)
 ```
 
Create the docker image

```
docker build -t chatbot_flask .
```

Verify the image was created

```
docker image ls
```

Create deployments using following command :

```
kubectl create --filename deployment.yaml
```

Verify deployment 

```
kubectl get deployments
```

Create deployments using following command :

```
kubectl create --filename service.yaml
```

Verify services 

```
kubectl get services

```


Run the following command to view the replicas of pods (containers). 

```
kubectl get pods

```

Note : All the 3 pods are running in single nod.


Start the chatbot app.

```
minikube service python-deep-learning-chatbot
```


Generate a network tunnel from my host machine to the minikube cluster to route traffic.

```
minikube tunnel
```

It will prompt for sudo password.

Now from another terminal, run the following command to view the running services' External-IP :

```
kubectl get services
```

Open `http://<EXTERNAL-IP>:8888` in the browser to go to the Karoba Chatbot Flask web app.


