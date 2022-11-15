// import 'package:flutter/material.dart';
// import 'package:foodies/Home/profile.dart';
// import 'package:foodies/Home/shift_status.dart';
// import 'package:foodies/Home/terms.dart';

// import 'dashboard.dart';
// import 'header.dart';
// import 'notice_board.dart';
// import 'order_history.dart';

// class DrawerPage extends StatefulWidget {
//   @override
//   _DrawerPageState createState() => _DrawerPageState();
// }

// class _DrawerPageState extends State<DrawerPage> {
//   var currentPage = DrawerSections.dashboard;
//   @override
//   Widget build(BuildContext context) {
//     var container;
//     if (currentPage == DrawerSections.dashboard) {
//       container = DashboardPage();
//     } else if (currentPage == DrawerSections.profile) {
//       container = ProfilePage();
//     } else if (currentPage == DrawerSections.shift_status) {
//       container = ShiftStatus();
//     } else if (currentPage == DrawerSections.notice_board) {
//       container = NoticeBoard();
//     } else if (currentPage == DrawerSections.order_history) {
//       container = ORDERHISTORY();
//     } else if (currentPage == DrawerSections.terms) {
//       container = TERMPAGE();
//     }
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xffFF6D00),
//         title: const Text("LIVE TASKS"),
//       ),
//       body: container,
//       drawer: Drawer(
//         child: SingleChildScrollView(
//           child: Container(
//             child: Column(
//               children: [
//                 MyHeaderDrawer(),
//                 MyDrawerList(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget MyDrawerList() {
//     return Container(
//       padding: EdgeInsets.only(
//         top: 15,
//       ),
//       child: Column(
//         // shows the list of menu drawer
//         children: [
//           menuItem(1, "Profile", "assets/drawer/profile1.png",
//               currentPage == DrawerSections.profile ? true : false),
//           menuItem(2, "Shift Status", "assets/drawer/shift1.png",
//               currentPage == DrawerSections.shift_status ? true : false),
//           menuItem(3, "Notice Board", "assets/drawer/notice.png",
//               currentPage == DrawerSections.notice_board ? true : false),
//           menuItem(4, "Order History", "assets/drawer/order.png",
//               currentPage == DrawerSections.order_history ? true : false),
//           menuItem(5, "Terms and Conditions", "assets/drawer/term.png",
//               currentPage == DrawerSections.terms ? true : false),
//         ],
//       ),
//     );
//   }

//   Widget menuItem(int id, String title, String image1, bool selected) {
//     return Material(
//       color: selected ? Colors.grey[300] : Colors.transparent,
//       child: InkWell(
//         onTap: () {
//           Navigator.pop(context);
//           setState(() {
//             if (id == 1) {
//               currentPage = DrawerSections.profile;
//             } else if (id == 2) {
//               currentPage = DrawerSections.shift_status;
//             } else if (id == 3) {
//               currentPage = DrawerSections.notice_board;
//             } else if (id == 4) {
//               currentPage = DrawerSections.order_history;
//             } else if (id == 5) {
//               currentPage = DrawerSections.terms;
//             }
//           });
//         },
//         child: Padding(
//           padding: EdgeInsets.all(15.0),
//           child: Row(
//             children: [
//               Expanded(
//                   child: Image.asset(
//                 image1,
//                 width: 30,
//                 height: 30,
//               )),
//               Expanded(
//                 flex: 3,
//                 child: Text(
//                   title,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// enum DrawerSections {
//   profile,
//   dashboard,
//   shift_status,
//   notice_board,
//   order_history,
//   terms,
// }

// import 'package:demo/pages/people.dart';
import 'package:flutter/material.dart';
import 'package:foodies/Home/order_history.dart';
import 'package:foodies/Home/profile.dart';
import 'package:foodies/Home/shift_status.dart';
// import 'package:foodies/Subscriptions/subscription.dart';
import 'package:foodies/Home/terms.dart';

import '../Subscriotions/subscriotions.dart';
import 'drawer_item.dart';
import 'header.dart';
import 'notice_board.dart';
// import 'package:flutter_navigation_drawer/drawer_item.dart';
// import 'package:flutter_navigation_drawer/pages/people.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          // color: Colors.white,
          children: [
            // color: Colors.white,
            // headerWidget(),
            MyHeaderDrawer(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: DrawerItem(
                name: 'Profile',
                image1: "assets/drawer/profile1.png",
                onPressed: () => onItemPressed(context, index: 0),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: DrawerItem(
                  name: 'Shift Status ',
                  image1: "assets/drawer/shift1.png",
                  onPressed: () => onItemPressed(context, index: 1)),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: DrawerItem(
                  name: 'Notice Board',
                  image1: "assets/drawer/notice.png",
                  onPressed: () => onItemPressed(context, index: 2)),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: DrawerItem(
                  name: 'Order History',
                  image1: "assets/drawer/order.png",
                  onPressed: () => onItemPressed(context, index: 3)),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: DrawerItem(
                  name: 'Subscription',
                  image1: "assets/drawer/subscription.png",
                  onPressed: () => onItemPressed(context, index: 4)),
            ),
            const SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: DrawerItem(
                  name: 'Terms and Conditions',
                  image1: "assets/drawer/term.png",
                  onPressed: () => onItemPressed(context, index: 5)),
            ),
          ],
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProfilePage()));
        break;
    }
    switch (index) {
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ShiftStatus()));
        break;
    }
    switch (index) {
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NoticeBoard()));
        break;
    }
    switch (index) {
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ORDERHISTORY()));
        break;
    }
    switch (index) {
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Subscriotions()));
        break;
    }
    switch (index) {
      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TERMPAGE()));
        break;
    }
  }
}

  // Widget headerWidget() {
  //     return Container(
  //       // color: Color(0xffFF6D00),
  //       width: double.infinity,
  //       // height: 200,
  //       padding: EdgeInsets.only(top: 20.0),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Container(
  //             margin: EdgeInsets.only(bottom: 10),
  //             height: 70,
  //             decoration: const BoxDecoration(
  //               shape: BoxShape.circle,
  //               image: DecorationImage(
  //                 image: AssetImage('assets/images/profile.png'),
  //               ),
  //             ),
  //           ),
  //           Text(
  //             "Ricky Martin",
  //             style: TextStyle(color: Colors.white, fontSize: 20),
  //           ),
  //           Text(
  //             "#8000518",
  //             style: TextStyle(
  //               color: Colors.grey[200],
  //               fontSize: 14,
  //             ),
  //           ),
  //         ],
  //       ),
  //     );
  //   }
  // }
