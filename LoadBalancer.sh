# Install a Kubernetes load balancer
# https://opensource.com/article/20/7/homelab-metallb

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

cat <<EOF | kubectl create -f -
> apiVersion: v1
> kind: ConfigMap
> metadata:
>   name: config
> data:
>   config: |
>     address-pools:
>     - name: address-pool-1
>       protocol: layer2
>       addresses:
>       - 192.168.0.192/28
> EOF
