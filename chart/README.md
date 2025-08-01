# kamaji-cluster

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.33.2](https://img.shields.io/badge/AppVersion-1.33.2-informational?style=flat-square)

Kubernetes cluster for Kamaji

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

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cluster.cni | string | `"calico"` | Name of the used cni provider |
| cluster.containerd | string | `"1.7.26"` | Version of containerd installed |
| cluster.dns | list | `["10.96.0.10"]` | IPs for the cluster DNS service |
| cluster.endpoint | string | `nil` | Address or domain for cluster endpoint |
| cluster.name | string | `nil` | Name of the cluster |
| cluster.podCidrs | list | `["10.1.0.0/16"]` | List of pod cidrs for the cluster |
| cluster.runc | string | `"1.2.5"` | Version of runc installed |
| cluster.sans | list | `[]` | List of cert SANs applied to API server |
| cluster.serviceCidrs | list | `["10.96.0.0/12"]` | List of service cidrs for the cluster |
| cluster.version | string | `nil` | Version of the Kubernetes components |
| cp.replicas | int | `3` | Number of replicas for control plane |
| hcloud.loadBalancer.enabled | bool | `true` | Enable load balancer for Kamaji cluster |
| hcloud.loadBalancer.type | string | `"lb11"` | Type of the load balancer |
| hcloud.loadBalancer.zone | string | `"eu-central"` | Network zone for load balancer |
| hcloud.network | object | `{"enabled":true}` | Network configuration for Hetzner cluster |
| hcloud.sshKeys | list | `["terraform"]` | List of integrated SSH keys |
| labels | object | `{}` | Define additional labels |
| oidc.adminGroup | string | `nil` | Override group name for cluster-admin mapping |
| oidc.client | string | `"kubernetes"` | Client used for OIDC authentication |
| oidc.enabled | bool | `true` | Enable authentication via OIDC |
| oidc.issuer | string | `"https://auth.cloudhippie.de/realms/console"` | Issuer used for OIDC authentication |
| worker.image | string | `"ubuntu-24.04"` | Instance image used for workers |
| worker.instance | string | `"cx22"` | Instance type used for workers |
| worker.sets | list | `[{"domain":"fsn1","name":"fsn1","replicas":1},{"domain":"nbg1","name":"nbg1","replicas":1},{"domain":"hel1","name":"hel1","replicas":1}]` | List of deployment sets for workers |
