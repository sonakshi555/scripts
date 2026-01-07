# scripts

# cron job scheduler


``` crontab -e```


0 9 * * * resourceTracker.sh >> tracker.log 2>&1

│ │ │ │ │

│ │ │ │ └─ Any day of week (*)

│ │ │ └─── Any month (*)

│ │ └───── Any day of month (*)

│ └─────── 9 AM (hour 9)

└───────── 0 minutes past the hour


```crontab -l    # List your cron jobs```

```crontab -e    # Edit your cron jobs```

```crontab -r    # Remove all cron jobs (be careful!)```


Watch the log file in real-time


```tail -f ~/cloud/scripts/tracker.log```

 ```cat ~/cloud/scripts/tracker.log```


# Ansible

=> adhoc commands : used for single and simple task execution like nproc , touch

=> inventory : the file which has the IP address of all the target servers

```ansible -i inventory -m "shell" -a "touch file1.txt"```


=> Playbook : are used to configure and push the more than one tasks to all other targets

```ansible-playbook -i inventory playbook.yml ```

-v or -vv or -vvv : provides information about whats happening behind in more deatil

-m : module using, here "shell" module

-a : is the arguments passsed with module

-i : indicates inventory file name

Ansible Roles are the standard way to organize and reuse automation content (tasks, variables, files, handlers) into a structured, modular format, making complex playbooks manageable and shareable. They enforce a specific directory layout (like tasks/main.yml, vars/, files/) for consistency, enabling teams to build reusable toolkits for specific functions (e.g., web server setup) that can be easily shared via Ansible Galaxy or within projects

```ansible-galaxy role init Kubernetes```

folder named Kubernetes is created with bunch of files and floders , which helps in writing complex ansible playbook 


# Passwordless authentication

For push tasks to all the target system, their should be passwordless authentication for ansible.
Follow steps to create passwordless authentication

``` ssh-keygen -t rsa ```


it was ask some secret phrase.

Go to file where ssh_id is stored, file name can be seen in output of the keygen command


open and copy the ssh_id in ssh_id.pub file



Move to the target system open 

```vim ~/<path> /.ssh/authorized_keys```

paste your ssh_id and press esc and type ":wq" ,press enter

Go to your system terminal ,paste the below code

``` ssh <ip_address_of_target>```

You will be connected to target system but for ansible you don't need to connect to target as the inventory file will have the ip_address of all the files

All set for passwordless authenticaion 🎉🎉