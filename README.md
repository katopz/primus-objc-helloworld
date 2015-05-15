# primus-objc-helloworld
Hello world [Primus](https://github.com/primus/primus) with [Objective-C](https://github.com/seegno/primus-objc) via [ActionHeroJS](http://www.actionherojs.com/)
![ActionHeroJS](https://cloud.githubusercontent.com/assets/97060/7652203/4c4c3724-fb34-11e4-8b98-d4a1e9fe70ab.png)
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
Open [http://127.0.0.1:8080/chat.html](http://127.0.0.1:8080/chat.html) with Browser, console log will show...
```
connected!
```
Open `primus-objc-helloworld.xcworkspace` with XCode and run then console will show...
```
2015-05-15 18:55:55.138 primus-objc-helloworld[9130:1423201] data:primus::ping::1431690955.138733
2015-05-15 18:55:55.139 primus-objc-helloworld[9130:1423201] [open] - The connection has been established.
2015-05-15 18:55:55.140 primus-objc-helloworld[9130:1423201] data:primus::ping::1431690955.138733
2015-05-15 18:55:55.140 primus-objc-helloworld[9130:1423201] [data] - Received data: {
    context = api;
    welcome = "Hello! Welcome to the actionhero api";
}
2015-05-15 18:55:55.141 primus-objc-helloworld[9130:1423201] data:{
    event = detailsView;
}
2015-05-15 18:55:55.142 primus-objc-helloworld[9130:1423201] [data] - Received data: {
    context = response;
    data =     {
        connectedAt = 1431690955120;
        fingerprint = "<null>";
        id = "0d2a1a2d-14f8-468b-ac17-499ebd1b8b5f";
        params =         {
        };
        pendingActions = 0;
        remoteIP = "127.0.0.1";
        remotePort = 57226;
        rooms =         (
        );
        totalActions = 0;
    };
    messageCount = 1;
    status = OK;
}
2015-05-15 18:55:55.142 primus-objc-helloworld[9130:1423201] data:{
    event = roomAdd;
    room = defaultRoom;
}
2015-05-15 18:55:55.149 primus-objc-helloworld[9130:1423201] [data] - Received data: {
    context = response;
    data = 1;
    messageCount = 2;
    status = OK;
}
2015-05-15 18:55:55.149 primus-objc-helloworld[9130:1423201] data:{
    event = say;
    message = "HelloWorld from ObjC!";
    room = defaultRoom;
}
2015-05-15 18:55:55.151 primus-objc-helloworld[9130:1423201] [data] - Received data: {
    context = response;
    messageCount = 3;
    status = OK;
}
2015-05-15 18:55:55.153 primus-objc-helloworld[9130:1423201] [data] - Received data: {
    context = user;
    from = "0d2a1a2d-14f8-468b-ac17-499ebd1b8b5f";
    message = "HelloWorld from ObjC!";
    room = defaultRoom;
    sentAt = 1431690955150;
}
```
And at server via terminal will show...
```shell
2015-05-15 15:59:43 - info: [server: websocket] new connection to=127.0.0.1
```

Viola! Happy Coding!
