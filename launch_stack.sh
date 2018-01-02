#!/usr/bin/env bash
set -e

STACK_NUMBER=$1

# Delete an existing stack of the same name
# aws cloudformation delete-stack --stack-name --profile sudo omero-test-stack$[STACK_NUMBER-1]

# Validate the stack
aws cloudformation validate-template --template-body file://main.yml > /dev/null

echo "Launching stack: main.yml"

# Launch the stack with the given parameters
aws cloudformation create-stack \
  --profile sudo \
  --capabilities CAPABILITY_IAM \
  --stack-name etl-pat \
  --template-body file://main.yml \
  --tags \
    Key=project,Value=lincs \
  --parameters \
    ParameterKey=EcsInstanceType,ParameterValue=t2.2xlarge \
    ParameterKey=VpcId,ParameterValue=vpc-77548c11 \
    ParameterKey=SubnetIds,ParameterValue=\"subnet-eed049c3,subnet-7b7a3332\" \
    ParameterKey=AsgMaxSize,ParameterValue=1 \
    ParameterKey=KeyName,ParameterValue=ec2_omero_dpwrussell \
    ParameterKey=EBSVolumeSizeForData,ParameterValue=1200 \
    ParameterKey=EBSVolumeTypeForData,ParameterValue=gp2 \
    ParameterKey=Tag,ParameterValue=lincs


  # ParameterKey=EFSOn,ParameterValue="EFS On" \
  # ParameterKey=SecurityGroupId,ParameterValue=sg-ced031b2 \
  # ParameterKey=DeviceNameForData,ParameterValue=/dev/sdm \
  # ParameterKey=DeviceNameForData,ParameterValue=/dev/xvdm \
  # ParameterKey=SubnetIds,ParameterValue=\"subnet-eed049c3,subnet-7b7a3332,subnet-d954c482,subnet-06a50e3a\" \
  # ParameterKey=S3Bucket,ParameterValue=s3://dpwr/d4 \

  # Deprecated
  # ParameterKey=EcsAmiId,ParameterValue=ami-b2df2ca4 \
  # ParameterKey=IamRoleInstanceProfile,ParameterValue=arn:aws:iam::292075781285:instance-profile/ecsInstanceRole \
