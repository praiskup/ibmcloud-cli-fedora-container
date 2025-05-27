# Use ./build for building/uploading images.

FROM fedora:42

RUN dnf -y install util-linux-core jq awk \
    && dnf clean all

RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh \
    && ibmcloud plugin install vpc-infrastructure \
    && ibmcloud plugin install cloud-object-storage

COPY container_files/upload /usr/bin/upload-image
 
CMD upload-image
