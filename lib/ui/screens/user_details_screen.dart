import 'package:codeforces/model/usermodes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDetailsScreen extends StatelessWidget {
  Userinfo userinfo;

  UserDetailsScreen({this.userinfo});

  @override
  Widget build(BuildContext context) {
    // var controller = Get.put(Dataget());

    // print(userinfo.handle;

    return Scaffold(
      backgroundColor: Color(0xFF1A1919),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: userinfo.result.length,
                  itemBuilder: (BuildContext context, int index) {
                    var info = userinfo.result[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: CircleAvatar(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    // color: Colors.black
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.white,
                                    )),
                              ),
                              radius: 50,
                              backgroundImage: NetworkImage(info.titlePhoto),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Text(
                            " Handle Name: ${info.handle}",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                            ),
                          )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customlayout(
                                  text: " First Name: ${info.firstName}"),
                              customlayout(
                                  text: " Last Name: ${info.lastName}"),
                              customlayout(text: " Rank: ${info.rank}"),
                              customlayout(text: " MaxRank: ${info.maxRank}"),
                              customlayout(text: " Rating: ${info.rating}"),
                              customlayout(
                                  text: " MaxRating: ${info.maxRating}"),
                                   customlayout(
                                  text: " Contribution: ${info.contribution}"),

                                       customlayout(
                                  text: " FriendOfCount: ${info.friendOfCount}"),

                                  
                              customlayout(text: " Email: ${info.email}"),
                              customlayout(
                                  text: " Organization: ${info.organization}"),
                              customlayout(text: " City: ${info.city}"),
                              customlayout(text: " Country: ${info.country}"),
                              customlayout(text: " Email: ${info.email}"),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }

  customlayout({String text}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 60,
          width: double.infinity,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Color(0xFF1A1919),
            elevation: 10,
            child: Row(
              children: [
                Text(
                  "$text",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Colors.amberAccent,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
