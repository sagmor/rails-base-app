import User from "frontend/user/model"

export default User.extend({
  primaryEmail: DS.attr("string"),
  password: DS.attr("string"),
});
