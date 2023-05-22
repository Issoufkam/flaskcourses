FROM UBUNTU
RUN apt-get update && \
    apt-get upgrade && \
    apt-get install -y curl && \
    apt-get install -y git
    
    RUN 
