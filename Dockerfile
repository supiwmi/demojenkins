In the preceding folder, create a sample1 subfolder and navigate to it:
mkdir sample1 && cd sample1


Use your favorite editor to create a file called Dockerfile inside this sample folder with the following content:

FROM centos:7
RUN yum install -y wget

Back in the Terminal, we can now build a new container image using the preceding Dockerfile as a manifest or construction plan:
docker image build -t my-centos .

Note:
docker image build -t my-centos -f Dockerfile .
But we can omit the -f parameter, since the builder assumes that the Dockerfile is literally called Dockerfile. 
We only ever need the -f parameter if our Dockerfile has a different name or is not located in the current directory.
