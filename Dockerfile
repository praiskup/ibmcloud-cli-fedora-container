FROM fedora:35

RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh

RUN ibmcloud plugin install cloud-object-storage

RUN dnf install -y wget && \
    dnf clean all
