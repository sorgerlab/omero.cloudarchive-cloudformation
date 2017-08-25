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
  --stack-name omero-test-stack${STACK_NUMBER} \
  --template-body file://main.yml \
  --tags \
    Key=project,Value=lincs \
  --parameters \
    ParameterKey=EcsInstanceType,ParameterValue=t2.large \
    ParameterKey=VpcId,ParameterValue=vpc-77548c11 \
    ParameterKey=SubnetIds,ParameterValue=\"subnet-eed049c3,subnet-7b7a3332\" \
    ParameterKey=AsgMaxSize,ParameterValue=3 \
    ParameterKey=KeyName,ParameterValue=ec2_omero_dpwrussell \
    ParameterKey=EFSOn,ParameterValue="EFS On" \
    ParameterKey=S3Bucket,ParameterValue=s3://dpwr/d4 \
    ParameterKey=Tag,ParameterValue=lincs


  # ParameterKey=EBSVolumeSizeForData,ParameterValue=10 \
  # ParameterKey=EBSVolumeTypeForData,ParameterValue=gp2 \
  # ParameterKey=SecurityGroupId,ParameterValue=sg-ced031b2 \
  # ParameterKey=DeviceNameForData,ParameterValue=/dev/sdm \
  # ParameterKey=SubnetIds,ParameterValue=\"subnet-eed049c3,subnet-7b7a3332,subnet-d954c482,subnet-06a50e3a\" \

  # Deprecated
  # ParameterKey=EcsAmiId,ParameterValue=ami-b2df2ca4 \
  # ParameterKey=IamRoleInstanceProfile,ParameterValue=arn:aws:iam::292075781285:instance-profile/ecsInstanceRole \
