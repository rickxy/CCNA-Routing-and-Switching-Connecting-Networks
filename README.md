# CCNA-Routing-and-Switching-Connecting-Networks
CCNA Routing and Switching Connecting Networks

![Screenshot (93)](https://user-images.githubusercontent.com/36708000/136676639-434eca1d-b56a-4e80-b9a8-9c38b4406dc9.png)


Objectives


In this Packet Tracer Skills Based Assessment, you will do as follows:

Configure PPP encapsulation and CHAP authentication for serial links.

Configure a GRE tunnel.

Configure OSPF.

Configure BGP.

Configure standard and extended IPv4 ACLs.
Configure IPv6 ACLs.
For the sake of time, many repetitive, but important, configuration tasks have been omitted from this assessment. Many of these tasks, especially those related to security, are essential elements of a network configuration. The intent of this activity is not to diminish the importance of full device configurations.

The IP addresses for all the devices have been configured and some of the routing configurations are already completed in this activity.

You are required to configure the devices as follows:

Branch:

Configure PPP and CHAP authentication on the appropriate interface.
Configure GRE tunnel.
Configure OSPF.
Configure standard IPv4 ACL.
Customer:

Configure standard IPv4 ACLs.
HQ:

Configure PPP and CHAP authentication on the appropriate interface.
Configure GRE tunnel.
Configure OSPF.
Configure standard and extended IPv4 ACLs.
Configure IPv6 ACLs.
Note: All the routers in AS 65001 are locked and no configurations are performed by the students. Furthermore, all the switches are pre-configured.

Addressing Table
Connecting Networks v6.0 - CN Practice Skills Assessment - PT 2

 

Instructions
Step 1: Configure PPP encapsulation and authentication.
a.  Configure PPP encapsulation for the link between HQ and ISP1 and the link between Branch and ISP1.

b.  Configure CHAP authentication between the links.

c.  Configure the correct username and the password cisco123 for CHAP authentication on both HQ and Branch.

Step 2: Configure a GRE tunnel with routing.
a.  Configure a GRE tunnel between HQ and Branch.

b.  Configure OSPF 1 to route the traffic between the LANs of HQ and Branch through the GRE tunnel. Summarize the networks attached to Branch.

Step 3: Configure BGP.
Configure BGP between ISP1 in Internet cluster and 209.165.202.128/27 network on HQ.

a.  Use AS number 65020 for HQ.

b.  Configure ISP1 as the BGP neighbor.

c.  Only advertise the 209.165.202.128 / 27 network into BGP.

Step 4: Configure ACLs for NAT.
a.  Configure a standard access list numbered 1 on Branch to allow NAT for hosts in network 192.168.0.0 /23.

b.  Configure a standard access list numbered 1 on HQ to allow NAT for hosts in network 192.168.2.0 /24.

c.  Configure a standard access list numbered 1 on Customer to allow NAT for hosts in network 192.168.3.0 /24.

Step 5: Configure a standard ACL to restrict remote access to the Customer router.
A standard ACL named VTY_ADMIN is configured to limit access via VTY to the Customer router. This ACL will only allow hosts from the LAN attached to the G0/1 interface and the hosts from the LANs on Branch router to access the Customer router. All the other connections to VTY should fail.

a.  Configure one ACL named VTY_ADMIN with three ACEs in the following order:

1)     Allow any hosts from the LAN attached to the G0/1 interface of Customer router to access the router.

2)     Allow the hosts from the LANs in the Branch network to Customer router remotely.

3)     All other remote connections are denied.

b.  Apply the ACL to the appropriate interface.

Note: Use the public IPv4 addresses in the ACLs when the private IPv4 addresses have been mapped to public IPv4 addresses.

Step 6: Configure an extended ACL to restrict access to the HQ LAN.
a.  Configure an extended ACL named HTTP_ACCESS that allows Branch LANs, Customer LANs and the LAN inside HQ to access HQ-Server via the web browser.

Configure this ACL with the following 5 ACEs in the following order:

1)     Allow the hosts from the Branch network to access the HQ-Server.

2)     Allow the hosts from the Customer LANs to access the HQ-Server.

3)     Allow the internal network 192.168.2.0 /24 to access the HQ-Server.

4)     Allow ICMP replies to HQ-Server from any networks.

5)     Explicitly deny all other traffic from accessing the HQ-Server.

b.  Apply the ACL to the HQ G0/1 interface.

Note: Use the public IPv4 addresses in the ACLs when the private IPv4 addresses have been mapped to public IPv4 addresses.

Step 7: Configure an IPv6 access list to restrict access to the HQ LAN.
a.  Configure an IPv6 access list named HTTP6_ACCESS that allows Branch LANs, Customer LANs and the LAN inside HQ to access HQ-Server via the web browser.

b.  Configure this ACL with the following 6 ACEs in the following order:

1)     Allow the hosts from the Branch (2001:DB8:ACAD::/64) to access the HQ-Server.

2)     Allow the hosts from the Branch (2001:DB8:ACAD:1::/64) to access the HQ-Server.

3)     Allow the hosts from the Customer LANs to access the HQ-Server.

4)     Allow the internal network 2001:DB8:ACAD:2::/64 to access the HQ-Server.

5)     Allow ICMP from HQ-Server to the other networks.

6)     Explicitly deny all other traffic from accessing the HQ-Server.

c.  Apply the ACL to the HQ G0/1 interface.
