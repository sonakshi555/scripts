# scripts

# cron job scheduler is add


crontab -e


0 9 * * * /home/sonu/cloud/scripts/resourceTracker.sh >> /home/sonu/cloud/scripts/tracker.log 2>&1

│ │ │ │ │

│ │ │ │ └─ Any day of week (*)

│ │ │ └─── Any month (*)

│ │ └───── Any day of month (*)

│ └─────── 9 AM (hour 9)

└───────── 0 minutes past the hour


crontab -l    # List your cron jobs


crontab -e    # Edit your cron jobs


crontab -r    # Remove all cron jobs (be careful!)


# Watch the log file in real-time
tail -f ~/cloud/scripts/tracker.log


cat cat ~/cloud/scripts/tracker.log
