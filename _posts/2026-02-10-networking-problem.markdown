---
layout: single
title: "A response to a job application; how IPv4 exhaustion ruined my childhood"
date: 2026-02-10 00:00:00 -0800
---

**This was in response to an job application with the prompt:**

*Can you describe a networking problem that you encountered that prevented an application from working as expected? What steps did you take to resolve the issue?:*

---

I have been fighting this specific networking problem since I was 10 years old. I am not kidding. I can tell you a whole chronology, below:

CG-NAT is a technique to solve the IPv4 exhaustion problem that many ISPs perform for mostly residential clients, or clients that don't serve anything on their IP. 

CG-NAT allows the ISP to pool IP address for people to share. For example, you and your neighbours using Telus would all share the IP 45.23.40.2. However, in reality, you and your neighbours all had IPs in the 100.64.34.0/24 range, which means you couldn't talk to the open internet and serve things on 45.23.40.2. This is about my understanding of CG-NAT.

This means if you try to port forward or serve ports on your router, it only port forwards on the 100.64.34.1 IP for example. (if you were assigned that by your ISP). This means you couldn't serve anything on your IP to the open internet.

Telus and Rogers (used to be Shaw) are the two ISPs available in my area. My parents chose to use a Telus reseller who loved CG-NAT. Shaw is actually quite nice and gives you a real, public facing IP.  It isn't static, still uses DHCP but the DHCP leases are almost 5 years long, so it may as well be static for most purposes. This is why I go with Shaw (now Rogers) as my ISP now.

For various reasons, and despite my relentless pleading from ages 12 to 15 my parents would not switch from this reseller. They did offered a better deal.

At 10 years old, I was deploying Java network applications! How impressive.

What app was I running? The Minecraft Java edition server .jar. I wanted to play Minecraft with my friends.

There were no Minecraft Realms at the time, and so the natural way would be to follow tutorials online, which usually involved port forwarding your router. I tried those tutorials, sometimes multiple times but I could never port forward anything. I was also a child, so nobody at the ISP's customer service would listen to me, and frankly, the level 1 support reps at the ISP didn't know anything about port forwarding. I gave up when I was 10 and instead played other games like Clash of Clans with my friends.

When I got a bit older (around 12 I'd say), I discovered Hamachi. It's a mesh VPN service, similar to Tailscale. It allowed us all to connect to a central network owned by the Hamachi people. I would host the Minecraft server, and my friends would be able to connect, bridged over Hamachi's servers (this is technically a lie as NAT holepunching is a thing, and it probably did that). Awesome, we could play Minecraft, but Hamachi limited us to 5 players at once, and more players would cost a lot more money. As children, we didn't have much disposable income, so we had to bite the 5 player limit and leave friends to take turns. This made us sad :(

I got older, and I was around 15, I had learned more about networking and computer science, I discovered what CG-NAT was, and finally understood the cause of my issues. At the time, I also started really getting into coding and wanted to host some websites on my home computer, since I had little income (dang child labour laws!), I couldn't afford any kind of hosting. My parents were unwilling to pay as they thought it was pointless (they were kind of right). I could host my stuff on a crappy laptop. But hamachi wouldn't let me host things on the *open internet*, of course.

I wanted to circumvent this restriction for good. I scrolled Reddit, StackExchange, and all the forums I could. I realized that Microsoft Imagine would give me around $100USD of Azure credits for free, and I could host the cheapest Azure VM instance possible. I could then use OpenVPN to connect to the server, and then I would have a static IP from Microsoft Azure. Tada!! I had solved the issue. I finally had a static IP, for basically free. I followed some online tutorial by a Redditor, of course.

This story is getting long, but now with this, I had many 6+ player Minecraft sessions. Tailscale and Zerotier came around too around then, so Hamachi basically died out. Tailscale and Zerotier are very similar to hamachi except they support way more people for free.

From fighting those networking problems, I now know a lot about networking, especially the practical side. I don't know the format of a TCP packet though.

These days, I still host a lot my own stuff. I am now no longer a teenager.

I have a home server, which serves my home media server, and a storage server. I use Tailscale for my non-public facing services like the storage server, and I have since switched to Shaw, an ISP that doesn't do CG-NAT to host my public facing stuff. You can see an example: my server management portal is at home.randyzhu.com:9090. My personal site is on Cloudflare Pages though for better uptime in case BC Hydro decides to cut my power. I also have a full repertoire of tools to get around CG-NAT in case Rogers, the new overlords of Shaw decide to implement CG-NAT.

Unfortunately, I am now too busy to play Minecraft with my friends, despite knowing so much more.

I could host a globally distributed network of Minecraft servers, and play with all my friends, all on top end hardware for maximal TPS. But I can't. School and applying for jobs (like this one) have taken up most of my leisure time. There's something ironic and kind of sad about that.

<!-- I hope you hire me, because I do understand networking quite well. I think I can really bring something to the team. I hope to get some more time away from job applications and school to play Minecraft with my friends.

One other thing I hope is that you read to the end of this, and read the whole thing.

I also enjoyed answering this question and going down memory lane and letting me reflect. It's a bittersweet end to the story. I'm going to post this on my website at randyzhu.com because I thought it was a good answer. -->

<!-- I could host a globally distributed network of Minecraft servers, and play with all my friends, all on top end hardware for maximal TPS. But I can't. School and applying for jobs (like this one) have taken up most of my leisure time. There's something ironic and kind of sad about that.

I hope you hire me, because I do understand networking quite well. I think I can really bring something to the team. I hope to get some more time away from job applications and school to play Minecraft with my friends.

One other thing I hope is that you read to the end of this, and read the whole thing.

I also enjoyed answering this question and going down memory lane. It's bittersweet. I'm going to post this on my website at randyzhu.com. -->