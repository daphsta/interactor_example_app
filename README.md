# Interactor app example

This app demonstrates how [Interactor](https://github.com/collectiveidea/interactor) can be used to organise actions.
The app is generated using rails-api that accepts a POST to http://localhost:3000/clients.
Run the app by starting up the `rails server`.
Do a

 `curl -H "Content-Type: application/json" -X POST  -d '{"user_id": 1,"name":"Trustee of Moo", "abn":"123344"}' http://localhost:3000/clients`
