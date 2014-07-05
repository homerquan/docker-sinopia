docker-sinopia
==============
A docker for sinopia -- npm private repository. 
https://github.com/rlidwka/sinopia

Use newer version of ubuntu, nodejs and remove some extra steps from 
https://github.com/keyvanfatehi/docker-sinopia/blob/master/build.sh

## How to use
`sudo docker run -name sinopia -d -p 4873:docker-sinopia/4873 -v /var/sinopia/storage:/storage homerquan/docker-sinopia`
