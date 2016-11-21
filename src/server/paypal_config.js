Meteor.Paypal.config({
    'host': 'api.sandbox.paypal.com',
    'port': '',
    'client_id': 'Your Paypal Client Id',
    'client_secret': 'Your Paypal Client Secret'
  });
    Meteor.Paypal.authorize({
      name: 'Buster Bluth',
      number: '4111111111111111',
      type: 'visa',
      cvv2: '123',
      expire_year: '2015',
      expire_month: '01'
    },
    {
      total: '100.10',
      currency: 'USD'
    },
    function(error, results){
      if(error)
      {}
        //Deal with Error
      else
      {}
        //results contains:
        //  saved (true or false)
        //  if false: "error" contains the reasons for failure
        //  if true: "payment" contains the transaction information
    });