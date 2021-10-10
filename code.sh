/// On Router 1: HQ – Main – Corp (Note: Username & Password for CHAP authentication)

en
conf ter
username ISP1 password cisco123 (or Cisco or 321cisco)
int s0/0/0
encapsulation ppp
ppp authentication chap
exit

interface tunnel 0
ip address 172.16.1.1 255.255.255.252
tunnel source s0/0/0
tunnel destination 209.165.200.225
tunnel mode gre ip
exit

router ospf 1
network 192.168.2.0 0.0.0.255 area 0
network 172.16.1.0 0.0.0.3 area 0
exit

router bgp 65020
network 209.165.202.128 mask 255.255.255.224
neighbor 209.165.200.230 remote-as 65001
exit

access-list 1 permit 192.168.2.0 0.0.0.255

ip access-list extended HTTP_ACCESS
permit tcp host 209.165.200.225 host 209.165.202.158 eq 80
permit tcp host 209.165.200.238 host 209.165.202.158 eq 80
permit ip 192.168.2.0 0.0.0.255 host 209.165.202.158
permit icmp any host 209.165.202.158 echo-reply
deny ip any any

int g0/1
ip access-group HTTP_ACCESS out
exit

ipv6 access-list HTTP6_ACCESS
permit tcp 2001:DB8:ACAD::/64 host 2001:DB8:ACAD:B::158 eq 80
permit tcp 2001:DB8:ACAD:1::/64 host 2001:DB8:ACAD:B::158 eq 80
permit tcp 2001:DB8:ACAD:3::/64 host 2001:DB8:ACAD:B::158 eq 80
permit ipv6 2001:DB8:ACAD:2::/64 host 2001:DB8:ACAD:B::158
permit icmp any host 2001:DB8:ACAD:B::158 echo-reply
deny ipv6 any host 2001:DB8:ACAD:B::158

interface g0/1
ipv6 traffic-filter HTTP6_ACCESS out

 
///////////On Router 2: Branch – Remote – Branch1 (Note: Username & Password for CHAP authentication)


en
conf ter
username ISP1 password cisco123 (or Cisco or 321cisco)
int s0/0/0
encapsulation ppp
ppp authentication chap
exit

interface tunnel 0
ip address 172.16.1.2 255.255.255.252
tunnel source s0/0/0
tunnel destination 209.165.200.229
tunnel mode gre ip
exit

router ospf 1
network 172.16.1.0 0.0.0.3 area 0
network 192.168.0.0 0.0.0.255 area 0
network 192.168.1.0 0.0.0.255 area 0
exit

access-list 1 permit 192.168.0.0 0.0.1.255



////////////////On Router 3: Customer – Other – Branch2


en
conf t
access-list 1 permit 192.168.3.0 0.0.0.255

ip access-list standard VTY_ADMIN
permit 192.168.3.0 0.0.0.255
permit host 209.165.200.225
deny any

line vty 0 4
access-class VTY_ADMIN in