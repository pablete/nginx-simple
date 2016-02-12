#nginx-simple for deploying static sites
A docker container that allows you to deploy a bunch of static files HTML+CSS+JS using nginx

###CHECKOUT REPOSITORY

Checkout the repository and remove .git directory
replace the files located in ./site with your own files

    git clone https://github.com/pablete/nginx-simple.git

    cp -r ~/mycoolsite/* sites/
    git add .
    git commit -m "Added mycoolsite"
    git push origin master


###BUILD IT LOCALLY
There is a script that builds and push the docker image to all registries (vpcqa, vpc0 and vpceu)

Pick a name for your site (simplesite in this case)

    ./build.sh


###RUN DOCKER


Execute the docker command to start nginx

    docker -p 9999:80 run nginx-simple

Open another terminal

    open http://$(boot2docker ip):9999/voronoi-restaurants/
