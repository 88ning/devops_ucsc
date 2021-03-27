# devops_ucsc Assignment 1

## a) Bash Script
This was a bit of a combo of docker and shell.

Run these commands in terminal:

njmuck@NJMUCK-MBP2:/UCSC/devops/assignment1|⇒  docker pull centos

njmuck@NJMUCK-MBP2:/UCSC/devops/assignment1|⇒  docker run -dit cent


My image were ba8c598aa373462c16cdf32f3641537a5e9eec1d44a69d9174a747ccd6c37ad1


njmuck@NJMUCK-MBP2:]/UCSC/devops/assignment1|⇒  docker exec -it ba8c598aa373462c16cdf32f3641537a5e9eec1d44a69d9174a747ccd6c37ad1 /bin/bash


To create the file:

[root@ba8c598aa373 /]# echo "filename=~/.hushlogin;if [ -f $filename ];then echo "File exists, All Good";else touch $filename && echo "File created"; fi" > checkhash.sh

To give the file exec permissions:
[root@ba8c598aa373 /]# chmod +x checkhash.sh

[root@ba8c598aa373 /]# sh checkhash.sh
File created

Run it again:
[root@ba8c598aa373 /]# sh checkhash.sh
File exists, All Good

No LINT errors in shellcheck or shfmt

## b) MacOS
This is a one-command script:
sysctl kern.version


## c) Docker

I intitally had some issues with authentication but figured it out.

Run these command to pll the nginx official docker image, tag it to your namespace, push the image the docker hub.
* docker image tag nginx urbanrobots/ucsc_devops_assignment1:nginx
* docker push urbanrobots/ucsc_devops_assignment1:nginx

Run this command to pull the image:
docker pull urbanrobots/ucsc_devops_assignment1:nginx

## d) Oh-My-ZSH
Looks like quite a few!

mvn=mvn-or-mvnw
'mvn!'='mvn -f $(git rev-parse --show-toplevel 2>/dev/null || echo ".")/pom.xml'
mvn-updates='mvn versions:display-dependency-updates'
mvnag='mvn archetype:generate'
mvnboot='mvn spring-boot:run'
mvnc='mvn clean'
mvncd='mvn clean deploy'
mvnce='mvn clean eclipse:clean eclipse:eclipse'
mvnci='mvn clean install'
mvncie='mvn clean install eclipse:eclipse'
mvncini='mvn clean initialize'
mvncist='mvn clean install -DskipTests'
mvncisto='mvn clean install -DskipTests --offline'
mvncom='mvn compile'
mvncp='mvn clean package'
mvnct='mvn clean test'
mvncv='mvn clean verify'
mvncvst='mvn clean verify -DskipTests'
mvnd='mvn deploy'
mvndocs='mvn dependency:resolve -Dclassifier=javadoc'
mvndt='mvn dependency:tree'
mvne='mvn eclipse:eclipse'
mvnfmt='mvn fmt:format'
mvnjetty='mvn jetty:run'
mvnp='mvn package'
mvnqdev='mvn quarkus:dev'
mvns='mvn site'
mvnsrc='mvn dependency:sources'
mvnt='mvn test'
mvntc='mvn tomcat:run'
mvntc7='mvn tomcat7:run'


Commands were:

brew install maven

Then go edit the profiles in ~/.zshrc

Finally open a new terminal window and run: alias


## e)  Create a Repo in Your Personal Github.com profile

We're here. :)
