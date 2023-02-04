# RemoteWS

RemoteWorkStation: when codespaces just isn't enough.

## What is it for?

Lately I've been shifting from my macbook to coding on an iPad. Given the software limitations and the fact that codespaces just doesn't cut it, I terraformed this VM
with all the tools I need to work on my terminal.

## What it does

- creates a VPC with a public subnet
- creates a security group and blocks all inbound traffic by default (add your IP from AWS Console)
- spins an instance (t2.micro) and attaches an EIP to it
