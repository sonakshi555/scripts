# scripts

# cron job scheduler


crontab -e


0 9 * * * resourceTracker.sh >> tracker.log 2>&1

│ │ │ │ │

│ │ │ │ └─ Any day of week (*)

│ │ │ └─── Any month (*)

│ │ └───── Any day of month (*)

│ └─────── 9 AM (hour 9)

└───────── 0 minutes past the hour


crontab -l    # List your cron jobs

crontab -e    # Edit your cron jobs

crontab -r    # Remove all cron jobs (be careful!)


Watch the log file in real-time


tail -f ~/cloud/scripts/tracker.log

cat cat ~/cloud/scripts/tracker.log


# Ansible

adhoc commands : used for single and simple task execution like nproc , touch

inventory : the file which has the IP address of all the target servers

ex : ansible -i inventory -m "shell" -a "touch file1.txt"


Playbook : are used to configure and push the more than one tasks to all other targets

ex: ansible-playbook -i inventory playbook.yml

-m : module using, here "shell" module

-a : is the arguments passsed with module

-i : indicates inventory file name
