import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:employee_demo/constant.dart';
import 'package:employee_demo/modals/employee_modal.dart';
import 'package:get/get.dart';

class EmployeeController extends GetxController{
  final Rx<List<User>> _userList = Rx<List<User>>([]);
   final Rx<List<User>> _totaluserList = Rx<List<User>>([]);
  List<User> get userList => _userList.value;
  List<User> get totaluserList => _totaluserList.value;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    _userList.bindStream(
        firestore.collection('employee').where("workingPeriod", isGreaterThanOrEqualTo: 5).snapshots().map((QuerySnapshot query) {
      List<User> retval = [];
      for (var element in query.docs) {
        retval.add(User.fromSnap(element));
      }
      return retval;
    }));

    _totaluserList.bindStream(
        firestore.collection('employee').snapshots().map((QuerySnapshot query) {
      List<User> retval = [];
      for (var element in query.docs) {
        retval.add(User.fromSnap(element));
      }
      return retval;
    }));
  }
}