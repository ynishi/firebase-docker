# firebase-docker

## build
```
sh build.sh
```
## usage
```
docker run --rm -it --init -v $(pwd):/project -p 5000:5000 ynishi/firebase-docker firebase
```
### use eslint/tslint
* set config file or setup by below.
```
# setup
LINT=[eslint|tslint]
docker run --rm -it --init -v $(pwd):/project ynishi/firebase-docker $LINT --init
# install plugin
docker run --rm -it --init -v $(pwd):/project ynishi/firebase-docker yarn
```
