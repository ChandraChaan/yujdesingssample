class LoginModal {
  var results;

  LoginModal({this.results});

  static LoginModal fromJson(json) => LoginModal(
    results: json == null ? null : json,
  );

  static LoginModal withError(error) => LoginModal(results: null);

  static LoginModal fromJsonError(json) => LoginModal(results: null);
}
