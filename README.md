devbox
=============

# Synopsis
This repository contains my general-development setup. I have
decided to normalize on Debian Jessie.

The purpose is to relatively quickly spring new development environments
when I get new computers.

It comes with a projects folder which is where I have been putting most of
my new development projects.

# Dependencies
- Vagrant
- Virtual Box
- Ansible

# Includes
- zsh with [OhMyZsh](https://github.com/robbyrussell/oh-my-zsh)
- firefox
- tmux
- emacs and vim
- math
- i3
- development environments
 - c++ (gcc, clang), and build tools
 - mono & .net & vscode
 - erlang & elixir
 - nodejs & various javascript
 - java & scala
 - python including pandas, scipy, etc.
 - rust
 - golang
 - minimal perl and ruby settings
 - vim as IDE for many of these environments

 # Manual steps
In the interest of not uploading binaries to github, one needs to download 
a few items and put them in specified places. All the following items
are relative to `provisioning/roles`.

| Location   |  File | Instructions |
|---------- |------- |------- |
| development/templates | dotnet.tar.gz   | Download [.NET Core](https://go.microsoft.com/fwlink/?LinkID=83502) |

One also needs to run the following from vim `:VimProcInstall`.

