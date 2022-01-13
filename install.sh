#opsys=linux  # or darwin, or windows
#curl -s https://api.github.com/repos/kubernetes-sigs/kustomize/releases/latest |\
#  grep browser_download |\
#  grep $opsys |\
#  cut -d '"' -f 4 |\
#  xargs curl -O -L
#mv kustomize_*_${opsys}_amd64 kustomize
#chmod u+x kustomize


mkdir -p ${HOME}/.config/kustomize/plugin/policy.open-cluster-management.io/v1/policygenerator
curl -L   -o ${HOME}/.config/kustomize/plugin/policy.open-cluster-management.io/v1/policygenerator/PolicyGenerator \
  https://github.com/open-cluster-management/policy-generator-plugin/releases/download/v1.2.2/linux-amd64-PolicyGenerator
chmod +x ${HOME}/.config/kustomize/plugin/policy.open-cluster-management.io/v1/policygenerator/PolicyGenerator
export PATH=$PATH:${HOME}/.config/kustomize/plugin/policy.open-cluster-management.io/v1/policygenerator/PolicyGenerator

