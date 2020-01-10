"""
Constructs a XenVM and installs WebPageTest

Instructions:
?
"""

import geni.portal as portal
import geni.rspec.pg as pg

request = portal.context.makeRequestRSpec()

node = request.XenVM("node")

# Ubuntu 16.04 LTS 64-bit
node.disk_image = "urn:publicid:IDN+emulab.net+image+emulab-ops:UBUNTU16-64-STD"

# Get an IP address for the VM (CloudLab Docs 10.3: https://docs.cloudlab.us/advanced-topics.html)
node.routable_control_ip = True

portal.context.printRequestRSpec()
