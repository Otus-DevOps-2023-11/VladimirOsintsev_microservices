kubectl create ns gitlab
helm repo add gitlab https://charts.gitlab.io/
helm repo update
helm upgrade --install gitlab gitlab/gitlab --namespace=gitlab \
  --timeout 600s \
  --set global.hosts.domain=example.com \
  --set global.hosts.externalIP=158.160.161.166 \
  --set certmanager-issuer.email=me@example.com \
  --set global.edition=ce \
  --set postgresql.image.tag=14.1.0

kubectl get secret gitlab-gitlab-initial-root-password -n gitlab -ojsonpath='{.data.password}' | base64 --decode ; echo
