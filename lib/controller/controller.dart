import 'package:codeforces/model/usermodes.dart';
import 'package:get/get.dart';


class Dataget extends GetxController {
  var userinfo = Userinfo();


  bool isloading = true;

  updateData(value) {
    userinfo = value;

    update();
  }

}
