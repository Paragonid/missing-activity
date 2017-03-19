{ Accounts } = require 'meteor/accounts-base'

Accounts.ui.config
  passwordSignupFields: 'USERNAME_ONLY',

# TODO: does this run for clientside too and I should exclude it?
# But how do I use appId then? The fuck is ServiceConfiguration at all.
if Meteor.server
  ServiceConfiguration.configurations.remove
    service: "facebook"

  ServiceConfiguration.configurations.insert
    service: "facebook"
    appId: '175394546309016'
    secret: 'bf75821a6f498abdef2b3b78579e8024'
