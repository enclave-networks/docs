# Getting Started — Attach Tags

Tags are free-form text labels attached to one or more systems in your account. Tags allow administrators to group systems together which share similar characteristics (i.e. business unit, security level or function). Tags can be manually added to an enrolled system, or an Enrolment Key can be configured to apply an initial set of tags to enrolling systems.

The following graphic illustrates how a single tag might apply to several individual systems, in this example systems called `gitlab`, `teamcity` and a third system called `repo` are all members of the tag `org.build.ci-cd`.

![Illustration of how tags are applied to systems](/images/quick-start/tags.png)

> **Production use:** This guide suggests example Tags. You can (and should) create your Tags which reflect the structure of your organisation for use in production. Visit the [Policy and Tags](/management/policies-and-tags#naming) section of the handbook to learn more about creating, naming and managing Tags.

## Add tags

In the Portal, navigate to the `Systems` page and confirm at least two systems are enrolled and showing as connected.
![Illustration of how tags are applied to systems](/images/quick-start/system-details-pane.png)

### Tag your first system

1. Select the **first** system you've enrolled to open its details pane.
2. Use the pencil icon (top-right of the pane) to enter edit mode. 
3. Give this first system a recognisable description (_e.g. Jane's Laptop_).
4. Add the tags `org.workstations` and `org.any` to this first system and click Save.


### Tag your second system

1. Open the details pane for the **second** system you've enrolled. 
2. Use the pencil icon enter edit mode.
3. Give the second system a recognisable description (_e.g. Web Server_).
4. Add the tags `org.servers` and `org.any` to this second system and click Save.

### Summary

The Portal should indicate that you've assigned two tags to each system:

| System                         | Description          | Tags                          |
|--------------------------------|----------------------|-------------------------------|
| The first system you enrolled | _e.g. Jane's Laptop_ | `org.workstations`<br />`org.any` |
| The second system you enrolled | _e.g. Web Server_    | `org.servers`<br />`org.any` |

Great! You've successfully tagged your first systems. Next [define a policy](/getting-started/define-policy) to establish connectivity between them.
