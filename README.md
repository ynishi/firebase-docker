# firebase-docker

## build
```
sh build.sh
```
## usage
```
docker run --rm -it --init -v $(pwd):/project -p 5000:5000 ynishi/firebase-docker firebase
```
### use eslint
* set ESLint couldn't find a configuration file or setup by below.
```
# setup .eslintrc
docker run --rm -it --init -v $(pwd):/project ynishi/firebase-docker eslint --init
# install plugin
docker run --rm -it --init -v $(pwd):/project ynishi/firebase-docker yarn
```
