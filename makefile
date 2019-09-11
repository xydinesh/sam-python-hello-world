ALL: build

build:
	sam build;sam package --output-template packaged.yaml --s3-bucket newrails-sam-bucket-us-west-2
deploy:
	sam deploy --template-file packaged.yaml --region us-west-2 --capabilities CAPABILITY_IAM --stack-name aws-sam-python-hello-world
