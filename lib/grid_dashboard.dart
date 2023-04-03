import 'package:flutter/material.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Investment",
      subtitle: "Sanlam",
      event: "\$ 20",
      color: Color(0XFF97d1c8));

  Items item2 = new Items(
      title: "Expenses",
      subtitle: "Electric Bills",
      event: "\$ 70",
      color: Color(0XFF212e68));
  Items item3 = new Items(
      title: "Income",
      subtitle: "Leasing",
      event: "\$ 120",
      color: Colors.amber.withOpacity(0.6));
  Items item4 = new Items(
      title: "Outstanding payables",
      subtitle: "Farm Daily",
      event: "\$ 300",
      color: Colors.black.withOpacity(0.6));
  Items item5 = new Items(
      title: "Outstanding liabilities",
      subtitle: "Loan ",
      event: "\$ 100",
      color: Colors.grey.withOpacity(0.6));
  Items item6 = new Items(
      title: " Current account balance",
      subtitle: "Saving Account",
      event: "\$ 500",
      color: Colors.purpleAccent.withOpacity(0.6));

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 5,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            )
          ],
        ),
      ),
      body: Container(
          margin: EdgeInsets.only(top: 10,left: 20,right: 20),
          child: ListView.builder(
              itemCount: myList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
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
                          fontWeight: FontWeight.w600,
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
                );
              })),
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