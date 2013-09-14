docker-nginx-redirector
=======================

Redirects stuff.

    $ docker run -d -e REDIRECT_URL=http://docker.io bfirsh/nginx-redirector
    da809981545f
    $ curl localhost -v
    * About to connect() to localhost port 80 (#0)
    *   Trying 127.0.0.1...
    * Connected to localhost (127.0.0.1) port 80 (#0)
    > GET / HTTP/1.1
    > User-Agent: curl/7.29.0
    > Host: localhost
    > Accept: */*
    >
    < HTTP/1.1 301 Moved Permanently
    < Server: nginx/1.4.1
    < Date: Sat, 14 Sep 2013 16:36:26 GMT
    < Content-Type: text/html
    < Content-Length: 184
    < Connection: keep-alive
    < Location: http://docker.io
    <
    <html>
    <head><title>301 Moved Permanently</title></head>
    <body bgcolor="white">
    <center><h1>301 Moved Permanently</h1></center>
    <hr><center>nginx/1.4.1</center>
    </body>
    </html>
    * Connection #0 to host localhost left intact



