import sys
import boto3

ASG = 'AWS::AutoScaling::AutoScalingGroup'

if len(sys.argv) != 2:
    print 'Usage:\n\tpython instances.py <stack-name>'
    exit(1)

cf_name = sys.argv[1]

cf_client = boto3.client('cloudformation')
asg_client = boto3.client('autoscaling')
ec2_client = boto3.client('ec2')

resources = cf_client.describe_stack_resources(
    StackName=cf_name
)['StackResources']

asg_resource = next(r for r in resources if r['ResourceType'] == ASG)

asg = asg_client.describe_auto_scaling_groups(
    AutoScalingGroupNames=[asg_resource['PhysicalResourceId']]
)['AutoScalingGroups'][0]

instance_resources = asg['Instances']

instances = ec2_client.describe_instances(
    InstanceIds=[i['InstanceId'] for i in instance_resources]
)['Reservations']

instances = [i['Instances'] for i in instances]
instances = [i for s in instances for i in s]

for instance in instances:
    print instance['PublicDnsName']
