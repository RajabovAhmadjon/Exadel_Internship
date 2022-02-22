Task 2a: AWS Cloud
(Note. The assignment is written using AWS as an example. You can complete the assignment using any cloud services.)

It is recommended to check this video before completing the task:
https://www.youtube.com/watch?v=O1_--7IvP5g&list=PLg5SS_4L6LYsxrZ_4xE_U95AtGsIB96k9 (RU)


Important moments:
1.	Read about Cloud Services. Pros and Cons, Cloud VS Bare Metal infrastructure?
2.	Read about Region, Zone in AWS. What are they for? Which one will you use and why?
3.	Read about Security best practices in IAM.
4.	Read about AWS EC2, what is it, what is it useful for?
5.	Read about AWS VPC (SG, Route, Internet Gateway).
6.	Read about AWS Cloud storage, Route 53, CloudFront and CloudWatch.
7.	If you sign up in AWS for the first time, you will have the opportunity to use SOME AWS services for free (free tier) for 1 year. To register, you need a credit card from which it will be debited and returned 1-2$.
8.	Read about AWS Free Tier. Be aware what is free for new users and what is paid by your own money. Be sure and attentive.
9.	Pay attention to the Billing & Cost Management Dashboard in your account.

Tasks (mandatory):
1.	Sign up for AWS, familiarize yourself with the basic elements of the AWS Home Console GUI.
2.	Explore AWS Billing for checking current costs. 
3.	Create two EC2 Instance t2.micro with different operating systems (Amazon linux / Ubuntu ...). Try to stop them, restart, delete, recreate.
4.	Make sure there is an SSH connection from your host to the created EC2. What IP EC2 used for it?
5.	Make sure  ping and SSH are allowed from one instance to another in both ways. Configure SSH connectivity between instances using SSH keys.
6.	Install web server (nginx/apache) to one instance; 
- Create a web page with the text “Hello World” and additional information about OS version, free disk space,  free/used memory in the system and about all running processes;
- Make sure your web server is accessible from the internet and you can see your web page in your browser; 
- Make sure on the instance without nginx/apache you also maysee the content of your webpage from instance with nginx/apache.

 

EXTRA (optional): 
1.	Run steps 3-6 with instances created in different VPC. (connectivity must be both external and internal IP)	
2.	Write BASH script for installing web server (nginx/apache) and creating web pages with text “Hello World”, and information about OS version
3.	Run step.6 without “manual” EC2 SSH connection.
EXTRA (optional optional):
1.	Make a screenshot only of your web page сontent from your browser.
2.	Create your S3 bucket and place your screenshot there.
3.	Make your screenshot visible on the internet for everyone and make sure it works.

As a result of this task should be a link in your github on the your “Hello World” web page. After task check by your mentor, the instance may be deleted. EXTRA tasks are passed to mentors individually. 


OR



Task 2b: Azure Cloud

Important moments:
1. Read about Cloud Services. Pros and Cons, Cloud VS Bare Metal infrastructure?
2. Read about Resource Groups and Regions in Azure. What are they for? Which one will you use and why?
3. Read about Security best practices in IAM.
4. Read about Azure VM, what is it, what is it useful for?
5. Read about Azure Virtual Network (NSG, Routes, Internet Gateways).
6. Read about Azure Storage Account, Azure DNS Service, Azure CDN, Azure Monitor.
If you sign up in Azure for the first time, you will have the opportunity to use Azure Free Account. Please, check this link https://azure.microsoft.com/en-us/free/
To register, you need a credit card from which it will be debited and returned 1-2$.

Tasks:
1. Sign up for Microsoft Azure, familiarize yourself with the basic elements of the Azure console GUI.
2. PAY ATTENTION! Azure Billing and current costs and Azure services what you use.
3. Create two VM Instances with different operating systems (Linux / Ubuntu / ...). Try to stop them, restart, delete, recreate.
4. Make sure there is an SSH connection from your host to the created VM. What VM IP used for it?
5. Make sure  ping and SSH are allowed from one VM to another in both ways. Configure SSH connectivity between VMs using SSH keys.
6. Install web server (nginx/apache) to one instance;
    - Create a web page with the text “Hello World” and additional information about OS version, free disk space,  free/used memory in the system and about all running processes;
    - Make sure your web server is accessible from the internet and you can see your web page in your browser;
    - Make sure on the instance without nginx/apache you also maysee the content of your webpage from instance with nginx/apache.

 


EXTRA (optional): : 
1. Run steps 3-6 with VMs created in different Virtual Networks. (connectivity must be both external and internal IP).    
2. Write BASH script for installing web server (nginx/apache) and creating web pages with text “Hello World”, and information about OS version

EXTRA (optional optional):
1. Make a screenshot only of your web page сontent from your browser.
2. Create your Storage Account and place your screenshot there.
3. Make your screenshot visible (public) on the internet for everyone and make sure it works.
 
As a result of this task should be a link in your github on the your “Hello World” web page. After task check by your mentor, the instance may be deleted. EXTRA tasks are passed to mentors individually.



RESULT
My demo webpage: http://54.193.127.169/ or http://ec2-54-193-127-169.us-west-1.compute.amazonaws.com/

Link for my AWS S3 bucket. There are two screenshots:
1. https://ahmadjon-bucket.s3.us-west-1.amazonaws.com/3D7315B4-1063-41C4-A6B3-3C6BF0B88B17.png
2. https://ahmadjon-bucket.s3.us-west-1.amazonaws.com/8D51D3F4-7496-492B-B1C9-C9A267369188.png

Optional:
Install MobaXtrem CLI tool for convenience 