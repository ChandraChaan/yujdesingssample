import 'dart:convert';

class Helpers {
  /// Auth Services
  static final String baseUrl = "https://chandrachaan.in/yujdesingssample/";
  static final String complaintRaising = "item/";
  static final String getcomplaints = "item/";
  static final String userGet = "api/user/";
  static final String customer = "yujdesingssample/api/customer/";
  static final String viewComplaint = "yujdesingssample/api_list/item/";
  static final String item = "yujdesingssample/item/";
  static final String rating = "item/rating/";
  static final String customerSignupLogin = "api/customer/";
  static final String LoginEmail = "api/login";
  static final String newTechnitian = "api/registration";
  static final String assignComplaint = "item/complaint/";

  String convertToBase64(String credentials) {
    final Codec<String, String> stringToBase64 = utf8.fuse(base64);
    return stringToBase64.encode(credentials);
  }

  String base64ToString(String credentials) {
    final Codec<String, String> base64ToString = utf8.fuse(base64);
    return base64ToString.decode(credentials);
  }
}
