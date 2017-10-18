OMERO.cloudarchive
==================

OMERO.cloudarchive can be used to provision the infrastructure for OMERO in a
local or cloud environment. This mechanism can "hydrate" a previously created
archive or be empty. Once running, data can be loaded/annotated/etc and then
finally "dehydrated" into object storage.

Instructions for deploying locally are available at:
https://sorgerlab.github.io/omero.cloudarchive-docker/

Instructions for deploying on AWS with CloudFormation locally follow.

Cloudformation Deployment
-------------------------

Deploy the CloudFormation script using the AWS Console


Prerequsitive Settings
----------------------

Gather required information in the AWS Console in the desired region:

**VPC:** Goto `VPC -> Your VPCs`. Choose the desired VPC (potentially there is only the default) and copy the `VPC ID`.

**Subnets:** Goto `VPC -> Subnets`. Choose the desired subnets and copy the `Subnet ID`.

**EC2 Key:** Goto `EC2 -> Key Pairs`. Choose the key that will be able to SSH in to the provisioned nodes, copy the `Key pair name`. If none, then create one.


Optionally:

**S3 Bucket:** Goto `S3`. Choose the bucket or key within a bucket that "contains" the archive to be hydrated, copy the path. Without this a blank OMERO is provisioned.

**Security Group:** Goto `VPC -> Security Groups`. Choose the desired security group and copy the `Group ID`. Without this a new, very permissisive security group will be automatically created for this stack.


Launching the CloudFormation stack
----------------------------------

The CloudFormation template is hosted on S3 and can be launched by passing
its location to the AWS Console CloudFormation service as an argument. Clicking
on the below links for the correct region will do that for the latest version.

##### LaunchUSEast1
[<img src="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png">](https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml)

##### LaunchUSEast2
[<img src="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png">](https://console.aws.amazon.com/cloudformation/home?region=us-east-2#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml)

##### LaunchUSWest1
[<img src="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png">](https://console.aws.amazon.com/cloudformation/home?region=us-west-1#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml)

##### LaunchUSWest2
[<img src="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png">](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml)


##### LaunchEUWest1
[<img src="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png">](https://console.aws.amazon.com/cloudformation/home?region=eu-west-1#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml)

##### LaunchEUWest2
[<img src="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png">](https://console.aws.amazon.com/cloudformation/home?region=eu-west-2#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml)

##### LaunchEUCentral1
[<img src="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png">](https://console.aws.amazon.com/cloudformation/home?region=eu-central-1#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml)

##### LaunchEUCentral2
[<img src="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png">](https://console.aws.amazon.com/cloudformation/home?region=eu-central-2#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml)

##### LaunchAPNortheast1
[<img src="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png">](https://console.aws.amazon.com/cloudformation/home?region=ap-northeast-1#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml)

##### LaunchAPSoutheast1
[<img src="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png">](https://console.aws.amazon.com/cloudformation/home?region=ap-southeast-1#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml)

##### LaunchAPSoutheast2
[<img src="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png">](https://console.aws.amazon.com/cloudformation/home?region=ap-southeast-2#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml)

##### LaunchCACentral1
[<img src="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png">](https://console.aws.amazon.com/cloudformation/home?region=ca-central-1#/stacks/new?stackName=OMEROCloudArchive&templateURL=https://s3.amazonaws.com/omero.cloudarchive-cloudformation/master.yml)

The link will present the AWS CloudFormation Console with the S3 template URL
location prepopulated. Click `Next` to continue.

This page presents the configuration options for the CloudFormation template
including those for the settings gathered above. Enter or choose the required
options from above and any optional ones as well.
