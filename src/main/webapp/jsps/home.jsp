<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MylandmarkTech.com- Home Page</title>
<link href="images/log4.png" rel="icon">
</head>
</head>
<body>
<h1 align="center">Landmark Technologies</h1>
<h2 align="center"> Welcome to WeAreDevop-com.
	Using a load balancer to spread load across multiple downstream instances offers several advantages:
•	Provides a single point of access to your applications.
•	Seamlessly handles failures of downstream instances through health check mechanisms.
•	Supports health checks to determine instance availability.
•	Provides SSL termination for HTTPS encrypted traffic.
•	Enforces stickiness with cookies.
•	Ensures high availability across zones.
•	Separates public traffic from private traffic in your cloud environment.
The client accesses these load balancers. With cross zone load balancing, each load balancer instance distributes traffic evenly across all registered instances in all availability zones. For example, the client sends 50% of the traffic to the first Application Load Balancer (ALB) instance and 50% to the second ALB instance. Each ALB then redirects the traffic across all 10 EC2 instances regardless of their availability zone. This is why it is called cross zone load balancing.
Key Takeaways
•	Cross zone load balancing distributes traffic evenly across all registered EC2 instances in all availability zones.
•	Without cross zone balancing, traffic is contained within each availability zone, potentially causing imbalanced loads.
•	Application Load Balancers have cross zone load balancing enabled by default with no inter-AZ data charges.
•	Network and Gateway Load Balancers have cross zone load balancing disabled by default and enabling it incurs inter-AZ data charges.
SL Certificate Support by Load Balancer Type
•	Classic Load Balancer supports only one SSL certificate. To support multiple hostnames with multiple SSL certificates, multiple Classic Load Balancers are required.
•	Application Load Balancer (ALB) version 2 supports multiple listeners with multiple SSL certificates using SNI.
•	Network Load Balancer (NLB) also supports multiple listeners with multiple SSL certificates and uses SNI to manage them.
Key Takeaways
•	SSL certificates encrypt traffic between clients and load balancers, ensuring secure in-flight data transmission.
•	TLS is the modern version of SSL, but the term SSL is still commonly used for simplicity.
•	Public SSL certificates are issued by Certificate Authorities and must be regularly renewed.
•	Server Name Indication (SNI) allows multiple SSL certificates on one load balancer, enabling hosting multiple secure websites.
•	Application Load Balancers (ALB) and Network Load Balancers (NLB) support multiple SSL certificates with SNI, while Classic Load Balancers support only one.
Key Takeaways
•	Enabled SSL certificates on both Application Load Balancer (ALB) and Network Load Balancer (NLB).
•	Configured HTTPS listeners with default port 443 for ALB.
•	Set SSL security policies to manage certificate negotiation and compatibility.
•	Imported certificates directly into AWS Certificate Manager (ACM) or selected from IAM, with recommendation to use ACM.
•	Configured TLS listeners and security policies on NLB with options for certificate sources and advanced application layer protocol negotiation.
9.	Elastic Load Balancer - Connection Draining
Connection Draining is a feature relevant for load balancers that can appear in exams. It is known by two names depending on the type of load balancer used. For Classic Load Balancers, it is called Connection Draining, whereas for Application Load Balancers or Network Load Balancers, it is referred to as Deregistration Delay.
How Connection Draining Works
Consider a scenario with three EC2 instances behind a load balancer. When one instance is set to draining mode, users already connected to that instance are given enough time — known as the draining period — to complete their existing connections and requests. After all active connections are completed, the connections are shut down.
If new users attempt to connect to the ELB during this draining period, the ELB intelligently routes these new connections only to the other healthy EC2 instances that are not in draining state. For example, new connections would be established with the second or third EC2 instance instead of the one being drained.
Key Takeaways
•	Connection Draining allows instances to complete active requests before deregistration.
•	Classic Load Balancer uses the term Connection Draining; Application and Network Load Balancers use Deregistration Delay.
•	The draining period can be configured between 1 and 3600 seconds, with a default of 300 seconds.
•	Setting a low draining timeout suits short requests, while longer requests require a higher timeout to avoid premature termination.
10.	Auto Scaling Groups (ASG)
The goal of an ASG is to scale out, meaning to add EC2 instances to match an increased load, or to scale in, meaning to remove EC2 instances to match a decreased load. Therefore, the size of the ASG varies over time. We can define parameters to ensure a minimum and maximum number of EC2 instances are running at any time within the ASG.
Integration with Load Balancers
When an ASG has multiple instances registered, the Elastic Load Balancer (ELB) distributes incoming traffic across all these instances. This setup enables users to access a load-balanced website. The ELB also performs health checks on the EC2 instances and can communicate the health status to the ASG. If an instance is 
Attributes for Creating an ASG
To create an ASG, you need to define a launch template. Previously, launch configurations were used but they are now deprecated. A launch template contains all the information required to launch EC2 instances within the ASG, including:
•	Amazon Machine Image (AMI)
•	Instance type
•	EC2 user data
•	EBS volumes
•	Security groups
•	SSH key pair
•	IAM roles
  HE IS OUR SUCCESS ACCESS KEY</h2>
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/log4.png" alt="" width="200">
	</span>
	<span style="font-weight: bold;">
		Landmark Technology, 
		Toronto, Ontario, Canada
		+1 437 215 2483,
		mylandmarktech@gmail.com
		<br>
		<a href="mailto:mylandmarktech@gmail.com">Mail to Landmark Technologies</a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<hr>
<p align=center>Landmark Technologies - Consultant, Training, Development Center.</p>
<p align=center><small>Copyrights 2019 by <a href="http://mylandmark.tech/">Landmark Technologies</a> </small></p>

</body>
</html>
