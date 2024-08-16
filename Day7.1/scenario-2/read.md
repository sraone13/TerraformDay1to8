If any one from the devops engineer or IAM user role did some changes manually to the 
the AWS resources in console/UI.

it will cause the issue we don't know who did the changes and how we can over come this

1. Refresh in terraform 
 
 we can do the cron jobs for every one hour, 1 minute, or 1 day
 if any changes it will happen it will sent the alert to the team. so on so issue on the particuler service.

2. AWS lamba functions or any logging app

we can add all the resources which are in terraform with AWS to the AWS lambda 
it store the all the logs in the app and if issue or chnages will happen it will sent the alerts emails to the team.
