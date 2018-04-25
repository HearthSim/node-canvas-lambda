# node-canvas-lambda

Build node-canvas for lambda using docker.
Based on https://github.com/Automattic/node-canvas/wiki/Installation---AWS-Lambda#using-newer-versions-of-libcairo.

## Usage

Start the docker demon (if it is not running).

```
./build.sh
```

This should result in the file `awslambda-canvas.zip`.
