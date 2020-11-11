# Helm Chart for Stateless Service

1. Assuming the a working k8s cluster is already provided for. Right now tested my config on docker-desktop for Mac.

2. This helm chart is simply running a `whoami` service with minimum of 3 replicas to maximum of 100 replicas based on CPU Utilisation > 80%.

Next Steps:

1. Get a proper URL for the service. So, using a cloud service provider, config a ingress for this service.

2. Implement a CD for this service using GitOps (Tried it with local cluster, but took too much time for error-free implementation):
  - Using Weaveworks Flux with Flux Helm Operator to automate CD
  - Create CRD called `HelmRelease` to watch for container registry updates (Automated CI deployment) and changes in values file for deployment
  - Ideally, the container image tag prefix matching the namespace will deploy new images to that namespace. And no changes need to be done on this helm chart repo.
  - For multiple environment, create multiple CRD `HelmRelease` and multiple container image tags.

3. Monitoring the app using prometheus, grafana and alertmanager.
