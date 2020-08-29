FROM node:13

RUN apt-get update && apt-get install -y openssh-server
RUN apt-get install -y openjdk-8-jdk
RUN echo 'root:root' | chpasswd
RUN mkdir /var/run/sshd
RUN chmod 755 /var/run/sshd
COPY sshd_config /etc/ssh/sshd_config
RUN mkdir /root/.ssh
RUN echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDP1gTStXJvhmw0InW9467J1JYWXx1CWrtN53kTAGs7Y2CE+ZFzgcdn0nxB7Ioi+GjUO6JSboXNJcti4n4GG4a/ly5zsMKMp7q3sQ2YtfXm14wd50bXsLEbyG3Pm2AkeFEmpO/+FQUw59l/C+Z4bLmMnyfwxUabQvCgy2RlMjL97khy62wbIJYK6M8Y1o8NLeHFSS0lNUjXPKjcmjIbalmuewCVtxOWrb2LTtcYfPRkW1BNy4o8sa+gSdMkC/EJEpyWYu7b1fvfQY/etY4l9SsUiaJ6KpXI4dbKAKZthWzjDfAlIHmDNxI1RXrRsxsgpmFI1qQyrg5H5xGNdewyP54r jenkins@4910e7846f9d" > /root/.ssh/authorized_keys
# SSH login fix. Otherwise user is kicked off after login
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
