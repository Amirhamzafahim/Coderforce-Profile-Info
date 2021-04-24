import 'package:codeforces/controller/controller.dart';
import 'package:codeforces/network/fetchdata.dart';
import 'package:codeforces/ui/screens/user_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var datagets = FetchData();
    var controller = Get.put(Dataget());

    /*  */

    final handlename = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xFF1A1919),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://codeforces.org/s/54745/images/codeforces-logo-with-telegram.png',
            height: 100,
            width: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: handlename,
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Enter Your Codeforce Handle Name",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 3.0)),
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                ),
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () async{
              await datagets.getData(username:handlename.text );
             
                await Get.to(UserDetailsScreen(
                  userinfo: controller.userinfo
               
                ));
               controller.isloading = false;



            },
            child: Container(
                height: 60,
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Color(0xFF1A1919),
                  elevation: 10,
                  child: Center(
                    child: Text(
                      "Get Codeforce Info",
                      style: TextStyle(color: Colors.amberAccent,fontSize: 20),
                    ),
                  ),
                )),
          ),
       
        ],
      ),
    );
  }
}
