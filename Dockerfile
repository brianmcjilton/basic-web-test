# Use an official Apache image as the base image
FROM httpd:2.4

# Set the environment variable for the content
ENV HTML_CONTENT="Hello, World!"

# Copy a custom configuration to replace the default Apache config
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf

# Create a simple HTML page
RUN echo "<html><body><h1>${HTML_CONTENT}</h1></body></html>" > /usr/local/apache2/htdocs/index.html

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd-foreground"]
