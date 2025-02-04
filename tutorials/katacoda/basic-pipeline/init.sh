# Wait for Katacoda to initialize
sleep 1

# Start Kubernetes
launch.sh

# Install Tekton Pipelines
# kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml
# Pin to v0.26 since that's the last supported release on Kubernetes 1.18 (environment provided by Katacoda)
kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/previous/v0.26.0/release.yaml

# Install the Tekton CLI
curl -LO https://github.com/tektoncd/cli/releases/download/v0.18.0/tkn_0.18.0_Linux_x86_64.tar.gz
sudo tar xvzf tkn_0.18.0_Linux_x86_64.tar.gz -C /usr/local/bin/ tkn

