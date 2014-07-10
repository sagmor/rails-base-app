import LoginControllerMixin from 'simple-auth/mixins/login-controller-mixin';
import ValidationsMixin from 'frontend/mixins/validations';

export default Ember.Controller.extend(ValidationsMixin,LoginControllerMixin, {
  validations: {
    identification: {
      presence: true
    },
    password: {
      presence: true
    }
  },
  authenticator: 'authenticator:application'
});
