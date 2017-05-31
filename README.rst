=========================
Cloudformation Deployment
=========================

Deploy the cloudformation script using the AWS Console


Prerequsitive Settings
----------------------

Gather required information in the AWS Console in the desired region:

**VPC:** Goto `VPC -> Your VPCs`. Choose the desired VPC (potentially there is only the default) and copy the `VPC ID`.

**Subnets:** Goto `VPC -> Subnets`. Choose the desired subnets and copy the `Subnet ID`.

**EC2 Key:** Goto `EC2 -> Key Pairs`. Choose the key that will be able to SSH in to the provisioned nodes, copy the `Key pair name`. If none, then create one.


Optionally:

**S3 Bucket:** Goto `S3`. Choose the bucket or key within a bucket that "contains" the archive to be hydrated, copy the path. Without this a blank OMERO is provisioned.

**Security Group:** Goto `VPC -> Security Groups`. Choose the desired security group and copy the `Group ID`. Without this a new, very permissisive security group will be automatically created for this stack.


Launching the Cloudformation stack
----------------------------------

The Cloudformation template is hosted on S3 and can be launched by passing
its location to the AWS Console Cloudformation service as an argument. Clicking
on the below links for the correct region will do that for the latest version.

.. |LaunchUSEast1| image:: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png
.. _LaunchUSEast1: https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml

.. |LaunchUSEast2| image:: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png
.. _LaunchUSEast2: https://console.aws.amazon.com/cloudformation/home?region=us-east-2#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml

.. |LaunchUSWest1| image:: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png
.. _LaunchUSWest1: https://console.aws.amazon.com/cloudformation/home?region=us-west-1#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml

.. |LaunchUSWest2| image:: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png
.. _LaunchUSWest2: https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml

.. |LaunchEUWest1| image:: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png
.. _LaunchEUWest1: https://console.aws.amazon.com/cloudformation/home?region=eu-west-1#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml

.. |LaunchEUWest2| image:: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png
.. _LaunchEUWest2: https://console.aws.amazon.com/cloudformation/home?region=eu-west-2#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml

.. |LaunchEUCentral1| image:: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png
.. _LaunchEUCentral1: https://console.aws.amazon.com/cloudformation/home?region=eu-central-1#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml

.. |LaunchAPNortheast1| image:: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png
.. _LaunchAPNortheast1: https://console.aws.amazon.com/cloudformation/home?region=ap-northeast-1#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml

.. |LaunchAPSoutheast1| image:: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png
.. _LaunchAPSoutheast1: https://console.aws.amazon.com/cloudformation/home?region=ap-southeast-1#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml

.. |LaunchAPSoutheast2| image:: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png
.. _LaunchAPSoutheast2: https://console.aws.amazon.com/cloudformation/home?region=ap-southeast-2#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml

.. |LaunchCACentral1| image:: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png
.. _LaunchCACentral1: https://console.aws.amazon.com/cloudformation/home?region=ca-central-1#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml

================ =======================
     Region              Launch
================ =======================
   us-east-1        |LaunchUSEast1|_
   us-east-2        |LaunchUSEast2|_
   us-west-1        |LaunchUSWest1|_
   us-west-2        |LaunchUSWest2|_
   eu-west-1        |LaunchEUWest1|_
   eu-west-2        |LaunchEUWest2|_
  eu-central-1     |LaunchEUCentral1|_
 ap-northeast-1   |LaunchAPNortheast1|_
 ap-southeast-1   |LaunchAPSoutheast1|_
 ap-southeast-2   |LaunchAPSoutheast2|_
  ca-central-1     |LaunchCACentral1|_
================ =======================

The link will present the AWS Cloudformation Console with the S3 template URL
location prepopulated. Click `Next` to continue.

This page presents the configuration options for the cloudformation template
including those for the settings gathered above. Enter or choose the required
options from above and any optional ones as well.
