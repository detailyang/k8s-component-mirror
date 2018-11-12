#! /bin/bash -x

images=(
 "kube-controller-manager:v1.12.1"
 "kube-scheduler:v1.12.1"
 "kube-proxy:v1.12.1"
 "pause:3.1"
 "etcd:3.2.24"
 "coredns:1.2.2"
)

for image in ${images[@]}; do
    docker pull registry.cn-qingdao.aliyuncs.com/k8s_detailyang_mirror/$image
    docker tag registry.cn-qingdao.aliyuncs.com/k8s_detailyang_mirror/$image k8s.gcr.io/$image
done
