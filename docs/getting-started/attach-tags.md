# Getting Started — Attach Tags

**Tags** are free-form text labels which can be attached to one or more systems in your account. Tags allow administrators to group systems with similar characteristics together. Tags can be manually added to an enrolled system, or an Enrolment Key can be configured to apply an initial set of tags to enrolling systems.

The following graphic illustrates how a single tag might apply to several individual systems, in this example systems called `gitlab`, `teamcity` and a third system called `repo` are all members of the tag `org.build.ci-cd`.

![Illustration of how tags are applied to systems](/images/quick-start/tags.png)

1. In the Portal, navigate to the **Systems** page and confirm both systems enrolled in step 2 of this guide are shown as connected.
   ![Illustration of how tags are applied to systems](/images/quick-start/system-details-pane.png)
2. Select the **first** system you enrolled to open the details pane and use the pencil icon (top-right of the pane) to enter edit mode. Give your first system a recognisable description (_e.g. Jane's Laptop_) and in the tags section type `org.quickstart.workstations` and press Enter. Then add a second tag of `org.quickstart.all-systems`. Click Save and close the details pane.

    | System   | Description          | Tags                          |
    |----------|----------------------|-------------------------------|
    | System 1 | _e.g. Jane's Laptop_ | `org.quickstart.workstations`<br />`org.quickstart.any` |

3. Select the **second** system you enrolled to open the details pane and use the pencil icon (top-right of the pane) to enter edit mode. Give your second system a recognisable description (_e.g. Web Server_) and in the tags section type `org.quickstart.servers`. Then add a second tag of `org.quickstart.all-systems`. Press Enter, click Save and close the details pane.

    | System   | Description          | Tags                          |
    |----------|----------------------|-------------------------------|
    | System 2 | _e.g. Web Server_    | `org.quickstart.servers`<br />`org.quickstart.any` |

> **Production use:** This guide suggests example Tags. You can (and should) create your Tags which reflect the structure of your organisation for use in production. Visit the [Policy and Tags](handbook/policies-and-tags.md) section of the handbook to learn more about creating and managing Tags.
