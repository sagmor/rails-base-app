import ValidationsMixin from 'frontend/mixins/validations';

export default Ember.ObjectController.extend(ValidationsMixin, {
  validations: {
  },
  actions: {
    submit: function () {
      var controller = this;
      var account = this.get('model');

      account.save().then(function () {
        console.log('Account saved');
      }).catch(this.catchRemoteValidationErrors());
    }
  }
});
