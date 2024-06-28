FROM ubuntu
RUN apt update -y && apt install apache2 git -y
RUN cd /var/www/html && git clone https://github.com/rajat8528/DevOpsProfessional.git && mv DevOpsProfessional/* /var/www/html
ENTRYPOINT apache2ctl -DFOREGROUND
EXPOSE 85
