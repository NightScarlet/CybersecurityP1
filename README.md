# Cybersecurity P1
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Image of Network](/Images/Network.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the yamle may be used to install only certain pieces of it, such as Filebeat.

![Web Setup](/Ansible/my_playbook.yml)
![Metric Beat](/Ansible/metricbeat-playbook.yml)
![File Beat](/Ansible/filebeat_playbook.yml)

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available in addition to restricting access to the network.


Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.


The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.5   | Linux            |
| Web 1    |Web Server| 10.0.0.6   | Linux            |
| Web 2    |Web Server| 10.0.0.7   | Linux            |
| Elk Stack|Monitoring| 10.1.0.5   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: 
104.63.249.117


Machines within the network can only be accessed by Jump Box.
10.0.0.5

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 104.63.249.117       |
| Web 1    | No                  | 10.0.0.5             |
| Web 2    | No                  | 10.0.0.5             |
  Elk Stack| No                  | 10.0.0.5             |
### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it allows you to configure multiple different devices effectively.
The playbook implements the following tasks:
- Configure the webservers with Docker
- Configure Elk with Docker
- Install File and Metricbeat

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Elk ps output](/Images/Elk.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
10.0.0.6(Web1)
10.0.0.7(Web2)

We have installed the following Beats on these machines:

Metricbeats which allows us to collect and metrics and statistics and outputs it to our ELK server.
Filebeats allows us to collect and log file data.


### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the dvwa_playbook.yaml file to /etc/ansible/.
- Update the hosts file to include the ip of your webservers and elk host.
- Run the playbook, and navigate to http://[your_elk_server_ip]:5601/app/kibana
 to check that the installation worked as expected.


-The Playbook is the three .yaml files located in the Ansible folder. One of them will download docker and elk on your machines, while the other two will download Metricbeats and Filebeats. Copy it by either copy pasting it into your own yaml file. (Care for your spacing)
 
Be sur-e to update your hosts file in /etc/ansible/hosts. Make sure you specifiy that your webservers machines are categorized under [Webservers] and your elk server is categorized under a new host which you will call [host]

-Check your Elk server is running at http://[your_elk_server_ip]:5601/app/kibana

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
1.On the Jump box in your container run the following command to get the playbook: curl https://github.com/NightScarlet/Roberts-Repo/blob/main/Ansible/dvwa_playbook.yml > /etc/ansible/

2.Edit the hosts file in /etc/ansible

3.Run the Playbook: ansible-playbook /etc/ansible/dvwa_playbook.yml

4.Check your installation is working by visiting in a browser: http://[your_elk_server_ip]:5601/app/kibana

5.Install Filebeats by downloading my filebeat yaml with curl https://github.com/NightScarlet/Roberts-Repo/blob/main/Ansible/filebeat-playbook.yml > /etc/ansible/

6. Run the Filebeats Playbook ansible-playbook /etc/ansible/filebeat-playbook.yaml

7. Install Metricbeats with curl https://github.com/NightScarlet/Roberts-Repo/blob/main/Ansible/metricbeat-playbook.yml > /etc/ansible/

8.Run the Metricbeats Playbook ansible-playbook /etc/ansible/metricbeat-playbook.yaml

9.Check your installation is working by visiting in a browser: http://[your_elk_server_ip]:5601/app/kibana
