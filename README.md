# littledevopsassignment
A little devops assignment

## For the Ansible demo:
Uses an Ansible playbook to start up a docker container with Jenkins
installed.

###### To start the container:

  `ansible-playbook -i hosts webapp-start.yml`

###### To stop the container:

  `ansible-playbook -i hosts webapp-stop.yml`

- Jenkins HTTP port is 8080 and Jenkins Agent port is 50000.



## For the Vagrant demo
Uses Vagrant to start up a docker container with Apache2
installed.

###### To start the container:

  `vagrant up`

###### To stop the container:

  `vagrant destroy`

To open an SSH connection to the container:

  vagrant ssh


- HTTP port is 80 and SSH port is 2222


###### Changelog:
* 17-08-2016
  * Crated an Ansible playbook for starting a Jenkins Docker image and forwarding
    the application ports.

  * Added readme files to both vagrant-docker and ansible-docker directories.

* 16-08-2016
  * Automated Vagrant startup of an Apache2 Docker image with SSH access and
    forwarded HTTP ports 80, 443, and SSH to 2222 using a Vagrantfile, a
    Dockerfile, and SSH key for the administrator user.

* 15-08-2016
  * Created this GitHub repository and started adding a Dockerfile.
