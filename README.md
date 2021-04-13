# Using Debian Bullseye Docker Images

Welcome to my repository for using my Docker images based on Debian Bullseye.

## Prerequisites
* Git and Docker should be installed.
* /bin/sh should point to Bash instead of Dash.  If you installed Docker with the procedure in my [Different Docker Tutorial](https://www.differentdockertutorial.com/), this step is automatically taken care of for you.  If you did not install Docker in this manner, enter the following commands:

```
sudo rm /bin/sh
sudo ln -s /bin/bash /bin/sh
```

## Other Notes
* When you start the Rails server from an app in your Docker container, enter the command "rails s -b 0.0.0.0". The "-b 0.0.0.0" is ESSENTIAL for viewing your app from the web browser on your host machine. If you simply enter "rails s" or "rails server", you will NOT be able to view your app from the web browser on your host machine.
* Viewing PostgreSQL data on the host machine with pgAdmin requires that the Docker container's PostgreSQL setup be configured to provide output to the IP address 0.0.0.0.  Docker images are preconfigured to take care of this.
* PostgreSQL and other servers are dormant until you or a script acts to start them.  Remember that because there is no virtual machine to boot up, no mechanism is provided to automatically turn on servers.
* PAY ATTENTION to the port numbers when you use your web browser or pgAdmin to view your apps. No two apps may share the same port number, and this is why you are asked to enter a port offset when you run the script for getting started with a Docker image.  As a result, the port number to use in your web browser will NOT always be 3000, and the port number to use in pgAdmin will NOT always be 5432 or 15432. The use of different port numbers for different Docker images allows you to work on multiple projects simultaneously.

## Using Docker Images
* The scripts for using the Docker images listed below select the appropriate Docker image for your purpose.  Just enter "bash (script name)", and then follow the instructions printed on the screen.  For example, enter "bash rvm-rails-neutrino6.sh" to use the Docker image for Ruby on Rails with RVM for Rails Neutrino 6 development.
* The scripts in the main directory of this repository create a folder full of scripts customized for using a specific Docker image.
* The download_new_image.sh script removes the Docker image from your local machine (if it's there), downloads the Docker image from Docker Hub, and starts up a Docker container based on this Docker image.  Any changes you made to the Docker container previously are undone.
* The reset.sh script keeps the Docker image on your local machine (assuming it's there) and starts up a Docker container based on this Docker image.  Any changes you made to the Docker container previously are undone.
* After you exit a Docker container, you can run the resume.sh to start up the Docker container in the same state in which you left it.

## Javascript Docker images
| Script | Docker Image | Comments |
|--------|--------------|----------|
| js-react.sh | [debian-bullseye-min-stage2](https://gitlab.com/rubyonracetracks/docker-debian-bullseye-min-stage2) | Uses the min-stage2 Docker image; Docker container designed for working on React apps |
| js-docusaurus.sh | [debian-bullseye-min-stage2](https://gitlab.com/rubyonracetracks/docker-debian-bullseye-min-stage2) | Uses the min-stage2 Docker image; Docker container designed for working on Docusaurus apps |

## Other Docker Images
| Script | Docker Image | Comments |
|--------|--------------|----------|
| min-stage1.sh | [debian-bullseye-min-stage1](https://gitlab.com/rubyonracetracks/docker-debian-bullseye-min-stage1) | Building block for downstream images |
| min-stage2.sh | [debian-bullseye-min-stage2](https://gitlab.com/rubyonracetracks/docker-debian-bullseye-min-stage2) | Building block for downstream images and for working on Javascript apps |
| min-rvm.sh | [debian-bullseye-min-rvm](https://gitlab.com/rubyonracetracks/docker-debian-bullseye-min-rvm) | Building block for downstream images |
| rvm-rails-neutrino6.sh | [debian-bullseye-rvm-rails-neutrino6](https://gitlab.com/rubyonracetracks/docker-debian-bullseye-rvm-rails-neutrino6) | For developing Rails Neutrino 6 |
