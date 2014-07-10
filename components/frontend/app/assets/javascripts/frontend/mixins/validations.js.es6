export default Ember.Mixin.create(Ember.Validations.Mixin, {
  touchFormFields: function () {
    // Touch every input
    $("input[name]").focus().blur().focus();
  },
  mergeErrors: function (newErrors) {
    var errors = this.get('errors');
    Object.keys(newErrors).forEach(function (key) {
      errors.set(key, newErrors[key]);
      // Hack to touch the form:
      // https://github.com/dockyard/ember-easyForm/issues/128#issuecomment-42098958
      $("input[name=" + key + "]").focus().blur().focus();
    });
  },
  catchRemoteValidationErrors: function () {
    var controller = this;
    return function (reason) {
      controller.mergeErrors(reason.errors);
    };
  },
  validate: function () {
    var controller = this;
    return this._super().then(null, function () {
      controller.touchFormFields();
    });
  }
});
