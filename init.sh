#!/bin/bash 
    sudo apt update -y
    sudo apt install ansible -y
    echo "[win]" | sudo tee -a /etc/ansible/hosts
    echo "${aws_instance.EC2FROMTF.private_ip}" >> sudo tee -a /etc/ansible/hosts
    echo "${aws_instance.Win-2.private_ip}" >> /etc/ansible/hosts
    echo "${aws_instance.Win-3.private_ip}" >> /etc/ansible/hosts
    echo "[win:vars]" | sudo tee -a /etc/ansible/hosts
    echo "ansible_user=Ansible" | sudo tee -a /etc/ansible/hosts
    echo "ansible_password=Travel@2020" | sudo tee -a /etc/ansible/hosts
    echo "ansible_connection=winrm" | sudo tee -a /etc/ansible/hosts
    echo "ansible_winrm_server_cert_validation=ignore" | sudo tee -a /etc/ansible/hosts
    echo "ansible_winrm_scheme=http" | sudo tee -a /etc/ansible/hosts
    echo "ansible_port=5985" | sudo tee -a /etc/ansible/hosts
    echo "Hello, World!" > hello.txt
