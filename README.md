# node-local-dns

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.22.28](https://img.shields.io/badge/AppVersion-1.22.28-informational?style=flat-square)

NodeLocal DNS Cache helm chart for RKE2 with Cilium.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| cilium.clusterDNSNamespace | string | `""` |  |
| cilium.clusterDNSService | string | `"rke2-coredns-rke2-coredns"` |  |
| cilium.enabled | bool | `true` |  |
| cilium.localDnsIp | string | `"169.254.20.11"` |  |
| cilium.tcp.portName | string | `""` |  |
| cilium.udp.portName | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"rancher/hardened-dns-node-cache"` |  |
| image.tag | string | `"1.22.28-build20240125"` |  |
| imagePullSecrets | list | `[]` |  |
| metrics.port | int | `9253` |  |
| metrics.prometheusScrape | string | `"true"` |  |
| nodeSelector | object | `{}` |  |
| nodelocal.config.zones.".:53".plugins.bind | string | `"0.0.0.0"` |  |
| nodelocal.config.zones.".:53".plugins.cache.parameters | int | `30` |  |
| nodelocal.config.zones.".:53".plugins.errors | bool | `true` |  |
| nodelocal.config.zones.".:53".plugins.forward.parameters | string | `"__PILLAR__UPSTREAM__SERVERS__"` |  |
| nodelocal.config.zones.".:53".plugins.loop | bool | `true` |  |
| nodelocal.config.zones.".:53".plugins.prometheus | bool | `true` |  |
| nodelocal.config.zones.".:53".plugins.reload | bool | `true` |  |
| nodelocal.config.zones."cluster.local:53".plugins.bind | string | `"0.0.0.0"` |  |
| nodelocal.config.zones."cluster.local:53".plugins.cache.denial.size | int | `9984` |  |
| nodelocal.config.zones."cluster.local:53".plugins.cache.parameters | int | `30` |  |
| nodelocal.config.zones."cluster.local:53".plugins.cache.sucess.size | int | `9984` |  |
| nodelocal.config.zones."cluster.local:53".plugins.errors | bool | `true` |  |
| nodelocal.config.zones."cluster.local:53".plugins.forward.force_tcp | bool | `true` |  |
| nodelocal.config.zones."cluster.local:53".plugins.forward.parameters | string | `"__PILLAR__CLUSTER__DNS__"` |  |
| nodelocal.config.zones."cluster.local:53".plugins.health | bool | `true` |  |
| nodelocal.config.zones."cluster.local:53".plugins.loop | bool | `true` |  |
| nodelocal.config.zones."cluster.local:53".plugins.prometheus | bool | `true` |  |
| nodelocal.config.zones."cluster.local:53".plugins.reload | bool | `true` |  |
| nodelocal.config.zones."in-addr.arpa:53".plugins.bind | string | `"0.0.0.0"` |  |
| nodelocal.config.zones."in-addr.arpa:53".plugins.cache.parameters | int | `30` |  |
| nodelocal.config.zones."in-addr.arpa:53".plugins.errors | bool | `true` |  |
| nodelocal.config.zones."in-addr.arpa:53".plugins.forward.force_tcp | bool | `true` |  |
| nodelocal.config.zones."in-addr.arpa:53".plugins.forward.parameters | string | `"__PILLAR__CLUSTER__DNS__"` |  |
| nodelocal.config.zones."in-addr.arpa:53".plugins.log.classes | string | `"all"` |  |
| nodelocal.config.zones."in-addr.arpa:53".plugins.log.format | string | `"combined"` |  |
| nodelocal.config.zones."in-addr.arpa:53".plugins.loop | bool | `true` |  |
| nodelocal.config.zones."in-addr.arpa:53".plugins.prometheus | bool | `true` |  |
| nodelocal.config.zones."in-addr.arpa:53".plugins.reload | bool | `true` |  |
| nodelocal.config.zones."ip6.arpa:53".plugins.bind | string | `"0.0.0.0"` |  |
| nodelocal.config.zones."ip6.arpa:53".plugins.cache.parameters | int | `30` |  |
| nodelocal.config.zones."ip6.arpa:53".plugins.errors | bool | `true` |  |
| nodelocal.config.zones."ip6.arpa:53".plugins.forward.force_tcp | bool | `true` |  |
| nodelocal.config.zones."ip6.arpa:53".plugins.forward.parameters | string | `"__PILLAR__CLUSTER__DNS__"` |  |
| nodelocal.config.zones."ip6.arpa:53".plugins.log.classes | string | `"all"` |  |
| nodelocal.config.zones."ip6.arpa:53".plugins.log.format | string | `"combined"` |  |
| nodelocal.config.zones."ip6.arpa:53".plugins.loop | bool | `true` |  |
| nodelocal.config.zones."ip6.arpa:53".plugins.prometheus | bool | `true` |  |
| nodelocal.config.zones."ip6.arpa:53".plugins.reload | bool | `true` |  |
| nodelocal.container.args[0] | string | `"-upstreamsvc"` |  |
| nodelocal.container.args[1] | string | `"kube-dns-upstream"` |  |
| nodelocal.container.args[2] | string | `"-skipteardown=true"` |  |
| nodelocal.container.args[3] | string | `"-setupinterface=false"` |  |
| nodelocal.container.args[4] | string | `"-setupiptables=false"` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| podmonitor.additionalLabels.prometheus | string | `"rancher-monitoring-prometheus"` |  |
| podmonitor.annotations | object | `{}` |  |
| podmonitor.enabled | bool | `true` |  |
| podmonitor.metricRelabelings | list | `[]` |  |
| priorityClassName | string | `"system-node-critical"` |  |
| resources.requests.cpu | string | `"30m"` |  |
| resources.requests.memory | string | `"50Mi"` |  |
| securityContext.privileged | bool | `true` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations[0].key | string | `"CriticalAddonsOnly"` |  |
| tolerations[0].operator | string | `"Exists"` |  |
| tolerations[1].effect | string | `"NoExecute"` |  |
| tolerations[1].operator | string | `"Exists"` |  |
| tolerations[2].effect | string | `"NoSchedule"` |  |
| tolerations[2].operator | string | `"Exists"` |  |
| updateStrategy.rollingUpdate.maxUnavailable | string | `"10%"` |  |
| useHostNetwork | bool | `false` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.13.1](https://github.com/norwoodj/helm-docs/releases/v1.13.1)
