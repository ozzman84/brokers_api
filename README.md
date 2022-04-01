# README

## Environment Setup

```
bundle install
rails db:setup
```

## The Technical Exercise

### Background

We are creating a system that serves our clients at Brokerages around the country.  We need an application to create and manage the Broker Users at those Brokerages as well as expose details about those users through our internal APIs. Our roadmap also includes extending our system to support Carrier Users. Brokerages do business with Carriers, but login to our system independently. To start we'll create an entity to store Brokerages and a few details about them.

### Assumptions

* An existing Rails application (6.1.4.6)
* A SQLite database that has a users table (3 seeded users)
* A spec for the User model
