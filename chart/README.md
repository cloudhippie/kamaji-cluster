# kamaji-cluster

![Version: 1.1.1](https://img.shields.io/badge/Version-1.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.1](https://img.shields.io/badge/AppVersion-1.1.1-informational?style=flat-square)

Kubernetes cluster with Kamaji

**Homepage:** <https://github.com/cloudhippie/kamaji-cluster>

## Installing the Chart

```console
helm install kamaji-cluster oci://ghcr.io/cloudhippie/kamaji-cluster
```

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| tboerger | <thomas@cloudhippie.de> | <https://github.com/tboerger> |

## Source Code

* <https://github.com/cloudhippie/kamaji-cluster>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://ghcr.io/cloudhippie/charts | calico-cni-proxy | 1.0.0 |
| oci://ghcr.io/cloudhippie/charts | hcloud-ccm-mgmt | 1.1.0 |
| oci://ghcr.io/cloudhippie/charts | hcloud-csi-mgmt | 1.0.2 |
| oci://ghcr.io/cloudhippie/charts | hcloud-csi-proxy | 1.0.2 |
| oci://ghcr.io/cloudhippie/charts | prom-crds-proxy | 1.0.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| calico-cni-proxy | object | `{"fullnameOverride":"calico-cni"}` | Values for calico-cniproxy dependency |
| cluster.cni | string | `"calico"` | Name of the used cni provider |
| cluster.containerd | string | `"1.7.26"` | Version of containerd installed |
| cluster.dns | list | `["10.96.0.10"]` | IPs for the cluster DNS service |
| cluster.endpoint | string | `nil` | Address or domain for cluster endpoint |
| cluster.name | string | `nil` | Name of the cluster |
| cluster.podCidrs | list | `["10.1.0.0/16"]` | List of pod cidrs for the cluster |
| cluster.runc | string | `"1.2.5"` | Version of runc installed |
| cluster.sans | list | `[]` | List of cert SANs applied to API server |
| cluster.serviceCidrs | list | `["10.96.0.0/12"]` | List of service cidrs for the cluster |
| cluster.version | string | `"v1.33.2"` | Version of the Kubernetes components |
| cp.replicas | int | `3` | Number of replicas for control plane |
| hcloud-ccm-mgmt | object | `{"config":{"kubeconfig":null,"network":null},"fullnameOverride":"hcloud-ccm"}` | Values for hcloud-ccm-mgmt dependency |
| hcloud-csi-mgmt | object | `{"config":{"kubeconfig":null},"fullnameOverride":"hcloud-csi"}` | Values for hcloud-csi-mgmt dependency |
| hcloud-csi-proxy | object | `{"fullnameOverride":"hcloud-csi","target":{"kamajiCluster":true,"namespace":"kube-system","release":"hcloud-csi"}}` | Values for hcloud-csi-proxy dependency |
| hcloud.ccm.enabled | bool | `true` | Enable Hetzner Cloud CCM sub-chart |
| hcloud.csi.enabled | bool | `true` | Enable Hetzner Cloud CSI sub-chart |
| hcloud.enabled | bool | `true` | Enable the Hetzner infrastructure provider |
| hcloud.network | object | `{"enabled":true}` | Network configuration for Hetzner cluster |
| hcloud.sshKeys | list | `["terraform"]` | List of integrated SSH keys |
| kamaji.loadBalancer.type | string | `"lb11"` | Type of the load balancer |
| kamaji.loadBalancer.zone | string | `"eu-central"` | Network zone for load balancer |
| kamaji.serviceType | string | `"LoadBalancer"` | Service type for Kamaji cluster |
| labels | object | `{}` | Define additional labels |
| oidc.adminGroup | string | `nil` | Override group name for cluster-admin mapping |
| oidc.client | string | `"kubernetes"` | Client used for OIDC authentication |
| oidc.enabled | bool | `true` | Enable authentication via OIDC |
| oidc.issuer | string | `"https://auth.cloudhippie.de/realms/console"` | Issuer used for OIDC authentication |
| prom-crds-proxy | object | `{"fullnameOverride":"prom-crds"}` | Values for prom-crds-proxy dependency |
| worker.image | string | `"ubuntu-24.04"` | Instance image used for workers |
| worker.instance | string | `"cx22"` | Instance type used for workers |
| worker.sets | list | `[{"domain":"fsn1","name":"fsn1","replicas":1},{"domain":"nbg1","name":"nbg1","replicas":1},{"domain":"hel1","name":"hel1","replicas":1}]` | List of deployment sets for workers |
