#! /bin/bash -x

images=(
 "kubernetes-dashboard-amd64:v1.10.0"
 "kube-apiserver:v1.12.2"
 "kube-controller-manager:v1.12.2"
 "kube-scheduler:v1.12.2"
 "kube-proxy:v1.12.2"
 "pause:3.1"
 "etcd:3.2.24"
 "coredns:1.2.2"
 "kube-addon-manager:v8.6"
)

for image in ${images[@]}; do
    docker pull registry.cn-qingdao.aliyuncs.com/k8s_detailyang_mirror/$image
    docker tag registry.cn-qingdao.aliyuncs.com/k8s_detailyang_mirror/$image k8s.gcr.io/$image
done

