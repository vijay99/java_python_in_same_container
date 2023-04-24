FROM ubuntu:latest

# Install Java and Python packages
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk python3.7

# Set environment variables for Java and Python
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/
ENV PATH=$PATH:$JAVA_HOME/bin

# Copy your Java and Python application files to the container
COPY /target/java_python_in_same_container-0.0.1.jar /app/MyApp.jar
COPY my_python_script.py /app/my_python_script.py

# Set the working directory to /app
WORKDIR /app

# Start the Java application
CMD ["java", "-jar", "/app/MyApp.jar"]
