# README

This is a basic application that can add users to a tea subscription, remove them, and list subscriptions.

## Schema
<img width="652" alt="image" src="https://github.com/kohyoungheon/tea_subscription/assets/92887935/c89b5c1c-244f-48c5-ad1f-d08e8b1a451a">

## Endpoints

### Subscribing
```/api/v1/customer_subs ```\
Request Body:
```{
    "customer_sub": {
        "subscription_id": 5, 
        "customer_id": 6
    }
}
```

Response Example:
```
  {
    "data": {
        "id": "12",
        "type": "customer_sub",
        "attributes": {
            "id": 12,
            "customer_id": 6,
            "subscription_id": 5,
            "customer": {
                "id": 6,
                "first_name": "Nery",
                "last_name": "Stark",
                "email": "emery_torp@nader.example",
                "address": "Apt. 552 83464 Jacobi Mountain, Olenmouth, GA 62759-4730",
                "created_at": "2023-08-03T01:42:17.558Z",
                "updated_at": "2023-08-03T01:42:17.558Z"
            },
            "subscription": {
                "id": 5,
                "title": "Tea Subscribtion 85",
                "price": "50.38",
                "status": "in_progress",
                "frequency": "weekly",
                "created_at": "2023-08-03T01:42:17.550Z",
                "updated_at": "2023-08-03T01:42:17.550Z"
            },
            "tea": [
                {
                    "id": 5,
                    "title": "Congou",
                    "description": "Herbal",
                    "temperature": 197,
                    "brew_time": 321,
                    "created_at": "2023-08-03T01:42:17.549Z",
                    "updated_at": "2023-08-03T01:42:17.549Z"
                }
            ]
        }
    }
}
```
### Unsubscribing
```/api/v1/customer_subs/:id ```\
Response:
```
{
    "message": "Subscription 5 cancelled successfully."
}
```
### All Subscriptions
```/api/v1/customers/:id/subscriptions ```\
Response:
```
{
    "data": [
        {
            "id": "6",
            "type": "subscription",
            "attributes": {
                "id": 6,
                "title": "Tea Subscribtion 74",
                "price": "70.63",
                "status": "in_progress",
                "frequency": "weekly",
                "tea": [
                    {
                        "id": 6,
                        "title": "Gaoshan",
                        "description": "White",
                        "temperature": 197,
                        "brew_time": 577,
                        "created_at": "2023-08-03T01:42:17.555Z",
                        "updated_at": "2023-08-03T01:42:17.555Z"
                    }
                ]
            }
        },
        {
            "id": "5",
            "type": "subscription",
            "attributes": {
                "id": 5,
                "title": "Tea Subscribtion 85",
                "price": "50.38",
                "status": "cancelled",
                "frequency": "weekly",
                "tea": [
                    {
                        "id": 5,
                        "title": "Congou",
                        "description": "Herbal",
                        "temperature": 197,
                        "brew_time": 321,
                        "created_at": "2023-08-03T01:42:17.549Z",
                        "updated_at": "2023-08-03T01:42:17.549Z"
                    }
                ]
            }
        }
    ]
}
```

## How to Install Locally
Ensure you have the correct versions of Ruby and Ruby on Rails installed.

1. In your terminal, navigate to the directory you would like to host the repository in.

2. Clone the project repository:
```
git clone git@github.com:kohyoungheon/tea_subscription.git
```
3. Run `bundle install` in repository in your terminal to install project gems.

4. In the repository, run these commands to initialize the databases and set up database structure:

```
rails db:drop
rails db:create
rails db:migrate
```

5. Run the `bundle exec rspec` command to see all of the Rspec tests run and ensure the program is running properly.

6. Run `rails s` in the repository to run endpoints.

## Testing

- To run tests for this app, type the following command in your terminal from inside the cloned project folder:

```
bundle exec rspec spec
```
