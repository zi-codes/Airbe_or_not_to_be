# AirB-or-not-to-B

An AirBnB clone made for a one week Makers group project. After just 6 weeks of learning to code we taught ourselves how to use Rails and built a full stack web app, complete with database and some seriously sweet CSS.

[Visit the live production website here!](https://airb-or-not-to-b.herokuapp.com/)

## Run it yourself

#### Mac OS
Requires Ruby and Bundler

```sh
$ git clone https://github.com/zi-codes/Airbe_or_not_to_be/
$ cd Airbe-or-not-to-be
$ bundle
$ rake db:create
$ rake db:migrate
$ rails s
```

In your favourite browser navigate to localhost:3000 and have fun :)

## User stories implemented

- Any signed-up user can list a new space.
- Users can list multiple spaces.
- Users should be able to name their space, provide a short description of the space, and a price per night.
- Users should be able to offer a range of dates where their space is available.
- Any signed-up user can request to hire any space for one night, and this should be approved by the user that owns that space.
- Nights for which a space has already been booked should not be available for users to book that space.
Until a user has confirmed a booking request, that space can still be booked for that night.
