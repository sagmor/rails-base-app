export default DS.Model.extend({
  username: DS.attr('string'),
  firstName: DS.attr('string'),
  lastName: DS.attr('string'),

  fullName: function() {
    var firstName = this.get('firstName') || "";
    var lastName = this.get('lastName') || "";

    return firstName + ' ' + lastName;
  }.property('firstName', 'lastName')
});

