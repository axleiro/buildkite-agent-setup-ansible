# buildkite-agent-setup-ansible

This Ansible playbook (**new-playbook.yml**) will setup buildkite-agent on Servers that are added in `/etc/ansible/host`, then configures it as a service. Currently it supports **ubuntu**.

## Steps To Be Followed To Use this playbook to setup buildkite-agent on machine :

1. Add your machine Public ip (on which you want to setup buildkite-agent) in host of ansible master

 ```bash
  sudo vi /etc/ansible/hosts
 ```
 
2. Copy your master Public key `id_rsa.pub key` of user root 
 
 ```bash
  sudo cat /root/.ssh/id_rsa.pub
 ```

3. Go to the machine where you want to setup new buildkite and run 

 ```bash
  ssh-keygen
 ```
   After that paste the above copied public ssh key to `authorized_keys` file
  
  ```bash
  sudo vi /home/user/.ssh/authorized_keys
  ```
  
4. Change `buildkite-agent token` in **setup-buildkite.sh** file
 
5. Run the Ansible playbook **new-playbook.yml** using this command :
 
  ```bash
  ansible-playbook new-playbook.yml
  ```
 
6. Add `buildkite agent tags` in server machine in `buildkite-agent.cfg` file (Example: `queue=my_example_queue` )

```bash
  sudo vi /etc/buildkite-agent/buildkite-agent.cfg
```
7. Switch user to `buildkite-agent` using command :
 
```bash
  su buildkite-agent
```
8. Then fire up buildkite-agent using this command :
```bash
  sudo systemctl enable --now buildkite-agent
```


