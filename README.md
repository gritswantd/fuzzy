fuzzy
=====

A web server that's vulnerable to fuzzing


## Set up

To install necessary libraries, run the following commands:

```bash
$ gem install bundle
$ bundle
```

After that, you should be ready to run the server:

```bash
$ rackup
```

This should start the server up on port 9292. To visit the server in your browser, go to http://localhost:9292

Alternatively, you can send requests to the server through the command line:

```bash
$ curl "http://localhost:9292"
```
