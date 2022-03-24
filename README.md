## VirtusLab Cloud Intern Task



### steps taken
Firstly I created basic HTML page using borderplate code. 
Then I made a Dockerfile that is using Nginx image and uses html page.
After that I created two terraform files with tf file format. Main.tf file has 





### Ideas or improvements
-internal port variable isn't in this case but I implemented it if you want to use it with other docker images with other exposed port wich I use in this task 

-I could add more variables to make this infrastructure more flexible and reusable

-I could add outputs.tf content in case we want to expand our infrastructure with other modules wich would use return values from previously created modules



### Anwsers for questions from recruitment task

1. We could use cloud solutions using kubernetes like GKE in GCP or equivalents in AWS and Azure.

2. Another IaC technology is Ansible. The thing that I like about terraform is that it uses a declarative approach.
    We define what the end should be instead of definig exactly what to do as in imperative approach.
    If we want to change configuration with Declarative approach we can just adjust old config file and re-execute it instead of adding new set of instructions thus our configuration file stays clean and small. And what is more, we always know what current setup is just by looking at a configuration file because it's always an end resault.

3. We have to define Kubernetes provider and aditionally define new variables like for example cluster or zone and then 
    build a structure according. In case of using GCP we have to enable GKE API and define provider for that. We have to use our credentials to authenticate in GCP.



