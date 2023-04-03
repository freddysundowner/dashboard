import 'package:dashboard/details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Investment",
      subtitle: "All money invested by the partner",
      event: "\$ 20.00",
      color: Color(0XFF97d1c8));

  Items item2 = new Items(
      title: "Expenses",
      subtitle: "All paid expenses",
      event: "\$ 70.00",
      color: Color(0XFF212e68));
  Items item3 = new Items(
      title: "Income",
      subtitle: "All received and recorded income",
      event: "\$ 120.00",
      color: Colors.amber.withOpacity(0.6));
  Items item4 = new Items(
      title: "Outstanding payables",
      subtitle: "All unpaid payables",
      event: "\$ 300.00",
      color: Colors.black.withOpacity(0.6));
  Items item5 = new Items(
      title: "Outstanding liabilities",
      subtitle: "All client billed account receivable",
      event: "\$ 100.00",
      color: Colors.grey.withOpacity(0.6));
  Items item6 = new Items(
      title: " Current account balance",
      subtitle: "Outstanding estimated account receivable",
      event: "\$ 500.00",
      color: Colors.purpleAccent.withOpacity(0.6));

  Items item7 = new Items(
      title: "Current partners available payout",
      subtitle: "Maximum amount the partner can currently request",
      event: "\$ 400.00",
      color: Color(0XFFf6e6a8));

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6, item7];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15),
            Text("New York Flagship Location"),
            Text("1 New York Avenue, New York, NY 11111"),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.add, size: 35, color: Color(0XFF97d1c8)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Medrite".toUpperCase(),
                        style: TextStyle(
                            color: Color(0XFF212e68),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: const Text(
                          "partner financial portal",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0XFF212e68), shape: BoxShape.circle),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: ListView.builder(
                      itemCount: myList.length,
                      shrinkWrap: true,
                      physics:ScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(() => DetailsPage(
                                title: "${myList[index].title}".capitalize));
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            padding: EdgeInsets.symmetric(vertical: 20),
                            decoration: BoxDecoration(
                              color: myList[index].color,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  myList[index].title!,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  myList[index].subtitle!,
                                  style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 14),
                                Text(
                                  myList[index].event!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })),
            ),
          ],
        ),
      ),
    );
  }
}

class Items {
  String? title;
  String? subtitle;
  String? event;
  Color? color;

  Items({this.title, this.subtitle, this.event, this.color});
}

// child: GridView.count(
//   childAspectRatio: 1.0,
//   padding: EdgeInsets.only(left: 16, right: 16),
//   crossAxisCount: 2,
//   crossAxisSpacing: 18,
//   mainAxisSpacing: 18,
//   children: myList.map((data) {
//     return Container(
//       decoration: BoxDecoration(
//         color: data.color,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             data.title!,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           SizedBox(height: 8),
//           Text(
//             data.subtitle!,
//             style: TextStyle(
//               color: Colors.white60,
//               fontSize: 13,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           SizedBox(height: 14),
//           Text(
//             data.event!,
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 15,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }).toList(),
// ),
