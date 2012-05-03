# Dreamhost on Rails

## Abstract

Here are some of the goals I have for this project:

1. <del>Deploy to Dreamhost via Capistrano pulling from Git</del>
2. Get stable Rails app remotely + <del>locally</del>
3. Upgrade gems as much as Dreamhost will allow
4. <del>Add staging server to Capistrano recipe</del>

## Preflight Checklist

According to the [Capistrano docs](https://github.com/capistrano/capistrano/wiki/2.x-From-The-Beginning), knowing what we are dealing with up front is a healthy exercise. There are also several inherent limitations with the outdated, default Dreamhost configuration.

- Apache web server (prefer nginx)
- MySQL database (prefer PostgreSQL)
- Ruby 1.8.7 (prefer 1.9.3)
- Passenger application layer (prefer Unicorn)
- Git source control (even though Dreamhost prefers svn)
- Rails 3.0.3 (prefer 3.2.2)

## Install Rails 3.0.3 Locally

~~~
rails _3.0.3_ new spock 
~~~