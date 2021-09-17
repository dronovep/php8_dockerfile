FROM centos
RUN   \
    dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && \
    dnf install -y https://rpms.remirepo.net/enterprise/remi-release-8.rpm && \
    dnf module enable php:remi-8.1 -y && \
    dnf install -y php php-cli php-common php-fpm php-pdo php-pgsql && \
    mkdir /run/php-fpm