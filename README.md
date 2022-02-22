# azure-vpn-point2site

Currently there are 3 ways of connecting your Azure VNET to your on premise/home environment. 
* VPN, Point to Site; this project will describe how to this up
* VPN, Site to Site; a bit more complex than the point to site config, as your on premise environment needs to have a dedicated gateway server
* Express Route; Enterprise solution with a dedicated line and a lot of options

Demo available on: https://youtu.be/cEbIvDrWnno

## Point to Site

Steps taken in the demo: 
* On Azure
  * Create VNET
  * Create Subnet and Subnet Gateway
  * Create VPN Gateway
* On Mac
  * with keychain create Certificate Authority (Private/ Public keypair)
  * make root Certifcate trusted
  * Export the certicate as P12, and convert it to KEY file (see src code for example)
  * Create CSR based on Private Key file
  * Create Certificate based on Private key file and CSR
  * Remove the space of the new Certificate and copy it (use src code script)
  * Import the new Certificate to Keychain
* On Azure
  * In the VPN gateway config, go to connections
  * In the Connection, add a connection and paste the content of the new Certificate (without spaces) in the connection config
  * Download the VPN Client
  * Unzip the downloaded VPN client and go to Generic....open the content of the XML file 
  * In the Connection...Config a new VPN connection ...use the IKE2
  * ServerAddress and External ID, have the VPN connection of the XML file
  * Local ID, is the same name of the newly VPN certificate in the KEychain
  * Change Authentication to certificate based...and choose the name of the new Certificate

