Policies allow Administrators to centrally define which Managed systems in their account should be connected to one another and under what conditions. 

> **Production use:** Changes to policies take effect immediately and Enclave will quickly build direct connectivity between enrolled systems named in each Policy.

## Access control

Each Policy is composed of [Tags](/management/tags) which are assigned to one of two roles: a `Sender` role and a `Receiver` role. Traditional firewalls are often configured permit outbound traffic but block all inbound or unsolicited traffic. In much the same way Enclave will allow systems in the `Sender` role to originate traffic to systems in the `Receiver` role but not the reverse.

Systems are grouped together under common Tags and Tags are attached to policies. As an example, consider the following policy:

| Policy Name       | Sender Tags                     | Receiver Tags     |
| ----------------- | ------------------------------- | ----------------- |
| Kubernetes access | `developers`<br />`contractors` | `kubernetes-pods` |

 Any system which is a member of either the `developers` or `contractors` Tags will be connected to any system in the `kubernetes-pods` Tag, but systems in the `developers` Tag will not be connected to other `developers`, or `contractors` by this Policy.

Systems in the `kubernetes-pods` Tag will be unable to initiate outbound connections to `developers` or `contractors` systems as the `Receiver` role prohibits unsolicited traffic and only allows responses to traffic which originated from a system with the `Sender` role.

Unlike the public Internet, without an Enclave connection in place between two peers, no traffic can be send across an Enclave link which enables access controls to be exclusively `Receiver` defined. There is no way to apply sender-side restrictions to an Enclave peer to prohibit what can or can't be sent to other peers, all access controls are applied by the `Receiver` and govern what each system is willing to accept. 

Depending on how Administrators arrange Tags in each a Policy they may create either [partially connected](#partially-connected-mesh) or [fully connected](#fully-connected-mesh) mesh topologies.

## Naming

The Enclave access control model is defined by the `Receiver` role of each Policy, so Policy names should normally reflect the resource accessed and consumer(s) in an `X for Y` pattern.

For example if a Policy defines access to a GitLab server for Developers, naming the policy `GitLab for Developers` provides a clear and concise description.

Separate policies may grant access to the same resource or set of resources. For example one Policy may grant Developers to access Database Servers during working hours and a separate policy may grant the Site Reliability Engineering (SRE) team 24/7 access to the same Database Servers.

* `Database Servers for Developers`
* `Database Servers for SRE`

## Topology

Connectivity is established between the systems with membership in Tags attached on the  but never between systems on the same side.

### Partially connected mesh

In a partially connected mesh, only specific systems connect to one another across the policy. This assumes that no systems belong to Tags on multiple sides of the Policy.

| Policy Name                    | Sender Tags    | Receiver Tags |
| ------------------------------ | -------------- | ------------- |
| Server access for Workstations | `workstations` | `servers`     |

### Fully connected mesh

Full mesh connectivity arises when multiple systems are members of Tags on both sides of a Policy, all affected systems are connected to one another. In the following example a Policy defines connectivity between systems tagged with the `servers` Tag.

| Policy Name       | Sender Tags | Receiver Tags |
| ----------------- | ----------- | ------------- |
| Servers full mesh | `servers`   | `servers`     |

Fully connected mesh networks may create large numbers of connections between participating systems. The number of connections in a fully connected mesh is equal to `N∗(N−1)/2` (i.e. number of systems times the number of systems minus 1, divided by 2). 

A fully connected mesh of 16 systems will create 120 connections, where as a mesh twice the size with 32 participants will create 496 connections. You should consider the capabilities of your underlying network infrastructure when deploying a fully connected mesh as some stateful network appliances impose limit on the maximum number of connections they can track or support.