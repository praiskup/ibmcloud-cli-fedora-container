The `ibmcloud` utility installed into/isolated in Fedora container.

Run

    $ export IBMCLOUD_API_KEY=$(pass -c path/to/the/token)
    $ podman run -e IBMCLOUD_API_KEY -v /some/image.qcow2 -ti quay.io/praiskup/ibmcloud-cli

Alternatively for manual operations:

    $ podman run -e IBMCLOUD_API_KEY -v /some/image.qcow2 -ti quay.io/praiskup/ibmcloud-cli bash
