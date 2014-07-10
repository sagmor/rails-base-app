import ValidationsMixin from 'frontend/mixins/validations';

export default Ember.ObjectController.extend(ValidationsMixin, {
  validations: {
    primaryEmail: {
      presence: true,
      format: { with: /@/, message: 'must be an email address'  }
    },
    password: {
      presence: true,
      confirmation: true
    },
  },

  actions: {
    submit: function () {
      var controller = this;

      // build the account
      var account = this.get('model');
      var password = this.get('password');

      // Create account
      account.save().then(function () {
        // Authenticate the user if successfully registered
        controller.get('session').authenticate('authenticator:application', {
          identification: controller.get('primaryEmail'),
          password: password
        });
      }).catch(this.catchRemoteValidationErrors());
    }
  }
});
