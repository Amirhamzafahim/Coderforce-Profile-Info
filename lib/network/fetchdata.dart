import 'package:codeforces/controller/controller.dart';
import 'package:codeforces/model/usermodes.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;


class FetchData {
  var controller = Get.put(Dataget());

  Future getData({String username}) async {
    var url = "https://codeforces.com/api/user.info?handles=$username";

    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var controller = Get.put(Dataget());
      controller.updateData(userinfoFromJson(response.body));
      return response.body;
    } else {
      throw response.body;
    }
  }



}
