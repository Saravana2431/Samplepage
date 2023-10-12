# Use an official PHP image as the base image
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Install PHP extensions for MySQL support
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy your PHP application files from the current directory to the container
COPY . /var/www/html/

# Expose port 80 for Apache web server
EXPOSE 80

# Start the Apache web server
CMD ["apache2-foreground"]
