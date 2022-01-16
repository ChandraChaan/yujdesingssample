import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:yujdesingssample/Domain/DataClass/GetComplaintsModel.dart';
import 'package:yujdesingssample/Infrastructure/GetComplaints_param.dart';
import 'package:yujdesingssample/Provider/LoadingAdapter.dart';
import 'package:yujdesingssample/Utils/localStorageValues.dart';

class GetComplaintsController extends SuperController<GetComplaintsModal> {
  GetComplaintsController({this.payrollRepository});

  /// inject repo abstraction dependency
  final ILoadingRepository payrollRepository;

  /// When the controller is initialized, make the http request
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController complaint = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    // callAPI();
  }

  @override
  void onReady() {
    print('The build method is done. '
        'Your controller is ready to call dialogs and snackbars');
    super.onReady();
  }

  @override
  void onClose() {
    print('onClose called');
    super.onClose();
  }

  callAPI() {
    change(null, status: RxStatus.loading());
    payrollRepository.dynamic(GetComplaintsAPIModal(id: null)).then((data) {
      change(data, status: RxStatus.success());
    }, onError: (err) {
      print(err);
      change(null, status: RxStatus.error(err.toString()));
    });
  }

  callAPIGetemployee() {
    change(null, status: RxStatus.loading());
    payrollRepository
        .dynamic(GetComplaintsAPIModal(
            id: GetStorage().read(CustemerLocalValues.userId), emp: true))
        .then((data) {
      if (data.results != null) {
        if (data.results[0].status != 'Done') {
          name.text = data.results[0].cName;
          phone.text = data.results[0].cPhone;
          address.text = data.results[0].cAddress;
          complaint.text =
              data.results[0].title + ' ${data.results[0].description}';
          GetStorage()
              .write(CustemerLocalValues.complaintId, data.results[0].id);
        }
      }
      change(data, status: RxStatus.success());
    }, onError: (err) {
      print(err);
      change(null, status: RxStatus.error('Something went Wrong'.toString()));
    });
  }

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }
}
