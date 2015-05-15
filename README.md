# primus-objc-helloworld
Hello world Primus with Objective-C via ActionHero

Prerequisite
---
* Client : [Primus Objective-C](https://github.com/seegno/primus-objc)
* Server : [ActionHeroJS](http://www.actionherojs.com/)
* Package Manager : [CocoaPod](https://cocoapods.org/)

Step
---
Clone this repos
```shell
$ git clone git@github.com:katopz/primus-objc-helloworld.git
```
Go to `primus-objc-helloworld` folder
```shell
$ cd primus-objc-helloworld
```
Install pod in `primus-objc-helloworld` folder
```shell
$ pod install
```
Start server
```shell
$ npm start
```
Watching server up and running and smile :D
```shell
> my_actionhero_project@0.0.1 start /Users/katopz/git/actionhero
> actionhero start

info: actionhero >> start
2015-05-15 15:59:25 - notice: *** starting actionhero ***
2015-05-15 15:59:25 - warning: running with fakeredis
2015-05-15 15:59:25 - notice: pid: 3901
2015-05-15 15:59:25 - notice: server ID: 192.168.2.63
2015-05-15 15:59:25 - info: ensuring the existence of the chatRoom: defaultRoom
2015-05-15 15:59:25 - info: ensuring the existence of the chatRoom: anotherRoom
2015-05-15 15:59:25 - notice: starting server: web
2015-05-15 15:59:25 - notice: starting server: websocket
2015-05-15 15:59:28 - notice: environment: development
2015-05-15 15:59:28 - notice: *** Server Started @ 2015-05-15 15:59:28 ***
2015-05-15 15:59:28 - info: actionhero member 192.168.2.63 has joined the cluster
```
Open `primus-objc-helloworld.xcworkspace` with XCode and run then console will show...
```
2015-05-15 15:59:43.690 primus-objc-helloworld[3919:550447] [open] - The connection has been established.
2015-05-15 15:59:43.691 primus-objc-helloworld[3919:550447] [data] - Received data: {
    context = api;
    welcome = "Hello! Welcome to the actionhero api";
}
```
And at server via terminal will show...
```shell
2015-05-15 15:59:43 - info: [server: websocket] new connection to=127.0.0.1
```

Viola! Happy Coding!
