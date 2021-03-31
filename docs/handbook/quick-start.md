# Getting Started

In this guide we will start your journey with Enclave by showing you how to enrol your **first two** systems. We will show you how to use the portal with tags and policy to **centrally manage** the connectivity between them.


![Quick start steps](/img/quick-start/steps.png)

## Prerequisites

To follow this guide and build your first connections with Enclave, you will need:

1. An Enclave account, it's [free to register](https://portal.enclave.io/account/register).
2. Two computers running Windows or Linux and permission to install software.

---

## 1. Get an Enrolment Key

Enrolment keys allow new systems and devices to join your account. Enrolment keys are also used to apply initial configuration settings (such as [Policy and Tags](handbook/tags-and-policies.md)) to new systems as they enrol. 

> **Security note:** Enrolment keys should be treated as secrets; Handle, share and store your Enrolment Keys as you would any other organisational secret.

> **Production use:** This guide uses a `Default Enrolment Key` which was automatically created when you registered for an account. You can (and should) create your own Enrolment keys for use in production. Visit the [Enrolment keys](/handbook/enrolment.md) section of the handbook to learn more about creating and managing Enrolment Keys.

1. Login to your account in the [Enclave Portal](https://portal.enclave.io/my/new-system).
2. Navigate to the **Enrol a new system** page and select the `Default Enrolment Key` from the drop down list. Make a note of the 30 character enrolment key as you will need it to install Enclave.

---

## 2. Enrol two new Systems

Follow the installation guide for each operating system where you're installing Enclave. For this guide you will need to install Enclave on two separate systems. Each installer will prompt you to supply an enrolment key from step 1 of this guide.

Use the `Default Enrolment Key` key to enrol **both** systems.

<table>
    <thead>
        <tr>
            <th colspan=2>Operating System</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan=1><strong>Windows</strong></td>
            <td><a href="/handbook/install/windows.md">Windows</a></td>
        </tr>
        <tr>
            <td rowspan=7><strong>Linux</strong></td>
            <td><a href="/handbook/install/debian.md">Ubuntu / Debian</a></td>
        </tr>
        <tr>
            <td><a href="/handbook/install/rhel.md">CentOS / RHEL</a></td>
        </tr>
        <tr>
            <td><a href="/handbook/install/fedora.md">Fedora</a></td>
        </tr>
        <tr>
            <td><a href="/handbook/install/amazon-linux.md">Amazon Linux</a></td>
        </tr>
        <tr>
            <td><a href="/handbook/install/arch.md">Arch Linux</a></td>
        </tr>
        <tr>
            <td><a href="/handbook/install/raspbian.md">Raspbian</a></td>
        </tr>
        <tr>
            <td><a href="/handbook/install/synology-nas.md">Synology NAS</a></td>
        </tr>
        <tr>
            <td rowspan=2><strong>Containers</strong></td>
            <td><a href="/handbook/install/docker.md">Docker</a></td>
        </tr>
        <tr>
            <td><a href="/handbook/install/kubernetes.md">Kubernetes</a></td>
        </tr>
    </tbody>
</table>

---

## 3. Attach Tags

Tags are free-form text labels which can be attached to one or more systems in your account. Tags allow administrators to group systems with similar characteristics together. Tags can be manually added to an enrolled system, or an Enrolment Key can be configured to apply an initial set of tags to enrolling systems.

The following graphic illustrates how a single tag might apply to several individual systems, in this example systems called `gitlab`, `teamcity` and a third system called `repo` are all members of the tag `org.build.ci-cd`.

![Illustration of how tags are applied to systems](/img/quick-start/tags.png)

> **Production use:** This guide uses a `org.quickstart` tag. You can (and should) create your own Tags for use in production. To learn more about how to create and manage Tags in your organisation, please refer to the [Policy and Tags](/handbook/tags-and-policies.md) section of this handbook. 

1. In the Portal, navigate to the **Systems** page and confirm both systems enrolled in step 2 of this guide are shown as connected.
2. Select the **first** system you enrolled to open the details pane and use the pencil icon (top-right of the pane) to enter Edit mode.
3. Give your first system a recognisable description (_e.g. Jane's Laptop_) and in the tags section type `org.quickstart` and press Enter. Click Save and close the details pane.
4. Select the **second** system you enrolled to open the details pane and use the pencil icon (top-right of the pane) to enter Edit mode.
5. Give your second system a recognisable description (_e.g. Test Server_) and in the tags section type `org.quickstart` again. Press Enter, click Save and close the details pane.

![Illustration of how tags are applied to systems](/img/quick-start/system-details-pane.png)

---

## 4. Define a Policy

Policies determine which systems can connect to each other via Enclave. Each policy is composed of one or more Tags which are assigned either to the Sender or Receiver side of  policy. Any systems which fall under the Sender side tags of a policy can send traffic to any systems which fall under the Receiver side tags.

`Quick start guide mesh`



![Enclave Portal showing approve](http://via.placeholder.com/680x360)




