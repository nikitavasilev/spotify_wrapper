# Basic Spotify Wrapper using API

This work was done as a project for [The Hacking Project Bootcamp](https://www.thehackingproject.org/).
The goal was to learn how to implement your own API Wrapper.

## Requirements

You need at least ruby 4.5.1 installed on your computer and you need to create your own Spotify API keys.

You can get them by signing up on [Spotify for Developers website](https://developer.spotify.com/dashboard/)

1. First of all `git clone the repo`
2. Run `$ cd spotify-wrapper`
3. Run `$ bundle install`
4. Create a new .env file `$ touch .env`
5. Open the .env file and paste these two lines by replacing it with your own values:
```
CLIENT_ID="replace_it_with_your_client_id"

CLIENT_SECRET="replace_it_with_your_client_secret"
```
6. Enjoy by executing the program `$ ruby spotify-wrapper.rb`