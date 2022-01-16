import 'package:dio/dio.dart';
import 'package:yujdesingssample/Common/helper.dart';
import 'package:yujdesingssample/Domain/DataClass/GetComplaintsModel.dart';
import 'package:yujdesingssample/Domain/DataClass/GetUserListModel.dart';
import 'package:yujdesingssample/Network/NetworkDataClass.dart';
import 'package:yujdesingssample/Network/NetworkStrings.dart';

class GetUserListAPIModel {
  final String id;

  GetUserListAPIModel({this.id});

  FormData getFormData() {
    // return FormData.fromMap(updateMap(data: <String, dynamic>{
    //         "image": "null",
    //       }, update: null));
  }

  NetworkDataClass getParam() {
    return NetworkDataClass(
        baseUrl: Helpers.baseUrl,
        extendedUrl: id != null ? Helpers.userGet + id : Helpers.userGet,

        ///Put in helpers file     /api/pms-discussion-i/comments
        options: Options(
          headers: {},
        ),
        // headers: {},
        isCookie: false,
        param: getFormData(),
        requestType: NetworkString.requestGet);
  }

  fromJson(val) => id != null
      ? GetComplaintModal.fromJson(val)
      : GetUserListModel.fromJson(val);

  withError(error) => id != null
      ? GetComplaintModal.withError(error)
      : GetUserListModel.withError(error);

  fromJsonError(valError) => id != null
      ? GetComplaintModal.fromJsonError(valError)
      : GetUserListModel.fromJsonError(valError);
}
