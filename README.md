# terraform_basic
API SSL Key
You will need an SSL key pair to enable Terraform to connect to the OCI API under your identity. Start by generating a key

user@computer$ openssl genrsa -out oci_api_key.pem 2048
set file access to owner only read and write

user@computer$ chmod 600 oci_api_key.pem
generate the public half of the key pair

user@computer$ openssl rsa -pubout -in oci_api_key.pem -out oci_api_key_public.pem
The public key needs to be added to your user account in the OCI console. Open the account page for your user and select the "Add Public Key" button. Copy and paste the contents of the oci_api_key_public.pem file in the box of the "Add Public Key" dialog as shown below.



Notice that after the public key is added the fingerprint is listed in the "API Keys" list. Copy the fingerprint for later use.
