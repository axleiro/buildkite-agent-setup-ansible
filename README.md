# buildkite-agent-setup-ansible
1. add your machine public ip in host of ansible master "sudo vi /etc/ansible/hosts"
2. copy your master id_rsa.pub key of root "sudo cat /root/.ssh/id_rsa.pub" 
3. Go to the machine where you want to setup new buildkite and run "ssh-keygen" after that paste the above copied public ssh key to "sudo vi /home/user/.ssh/authorized_keys"
4. change buildkite-agent token in setup-buildkite.sh file
5. run the ansible script "ansible-playbook new-playbook.yml"
6. add tags in server machine "sudo vi /etc/buildkite-agent/buildkite-agent.cfg" 
7. run "sudo systemctl daemon-reload" and then fire up buildkite-agent using command "sudo systemctl enable --now buildkite-agent" and make sure to change the user to buildkite-agent before running this command

