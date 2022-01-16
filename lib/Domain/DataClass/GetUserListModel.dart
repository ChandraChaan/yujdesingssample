import 'package:yujdesingssample/Domain/domain_class/GetUserList_domain.dart';

class GetUserListModel {
  var error;
  String responseOther;
  List<GetUserList> results;

  GetUserListModel({this.results, this.error, this.responseOther});

  static GetUserListModel fromJson(json) => GetUserListModel(
      results: json['data'] == null
          ? null
          : List<GetUserList>.from(
              json['data'].map((i) => GetUserList.fromJson(i))),
      responseOther: json['data'] == null ? null : json.toString(),
      error: json);

  static GetUserListModel withError(error) =>
      GetUserListModel(results: null, responseOther: null, error: error);

  static GetUserListModel fromJsonError(json) => GetUserListModel(
      results: null, responseOther: json.toString(), error: json);
}
