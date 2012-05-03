# Dreamhost on Rails

Bleeding edge Ruby on bleeding edge Rails on a fucking shared Dreamhost server! Mwahahahaha

## Abstract

Here are some of the goals I have for this project:

1. <del>Deploy to Dreamhost via Capistrano pulling from Git</del>
2. <del>Get stable Rails app remotely + locally</del>
3. <del>Upgrade gems as much as Dreamhost will allow</del>
4. <del>Add staging server to Capistrano recipe</del>

Shit, well now what? Guess I need to add more things to do:

5. Add Dreamhost Ruby upgrade tasks to recipe
6. Add Dreamhost Rails upgrade tasks to recipe
7. Write full documentation
8. Make spock a gem
9. Add support for other shared hosts

## Preflight Checklist

According to the [Capistrano docs](https://github.com/capistrano/capistrano/wiki/2.x-From-The-Beginning), knowing what we are dealing with up front is a healthy exercise. There are also several inherent limitations with the outdated, default Dreamhost configuration.

- Apache web server (prefer nginx)
- MySQL database (prefer PostgreSQL)
- Ruby 1.8.7 (prefer 1.9.3, and I got it, Mig)
- WEBrick application layer (prefer Unicorn)
- Git source control (even though Dreamhost prefers svn)
- Rails 3.0.3 (prefer 3.2.2, and I got it, too)

## Install Rails 3.0.3 Locally

~~~
rails _3.0.3_ new spock 
~~~

## Success!!!

Holy shit, I did it! I simply added the htaccess and dispatch files manually after the deploy and she worked! Now I just need to clean up my recipe since I'm not sure about a few things + we should be set to explore how to "upgrade."

~~~
chmod 755 dispatch.fcgi
~~~

## Resources

These are a bunch of outdated articles I used to piece together my solution. And they said it couldn't be done. :)

- [Capistrano without Rails](http://ryanflorence.com/deploying-with-capistrano-without-rails)
- [Multistage Extension](https://github.com/capistrano/capistrano/wiki/2.x-Multistage-Extension)
- [Using Capistrano with Dreamhost](http://blog.gridworlds.com/rails/using-capistrano-with-dreamhost)
- [Rails3, Dreamhost + You](http://chrislaco.com/blog/rails3-dreamhost-and-you)
- [I beat Dreamhost.](http://blog.joeygeiger.com/2010/05/17/i-beat-dreamhost-how-to-really-get-rails-3-bundler-and-dreamhost-working)
- [DH Ruby on Rails](http://wiki.dreamhost.com/Ruby_on_Rails)
- [DH Rails 3 Using FastCGI](http://wiki.dreamhost.com/Rails_3#Using_FastCGI)
- [DH 9th Circle of Hell](http://discussion.dreamhost.com/thread-129360.html)