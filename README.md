# fm_backend
Development of FM backend.

#Steps to get this app running.

###With Docker
1. Ask for credentials in slack.
2. In your terminal run,`docker-compose up`
3. Access via, `http://localhost:4567`<br>
  3.1 http://localhost:4567/streams
4. To run test <br>
  4.1 `docker-compose run web bundle exec rspec ./spec`

###Without Docker
1. Install Ruby 2.6.2 (use rbenv to manage your ruby versions)
2. Navigate to root folder of the app, the run `bundle install`
3. To run your app run `rackup -p 4567`
