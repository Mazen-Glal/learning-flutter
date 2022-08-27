import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                print('Menu Icon...');
              }),
          title: Text('First Application'),
          actions: [
            IconButton(
                onPressed: () {
                  print('Notification IconButton');
                },
                icon: Icon(Icons.notification_important)),
            IconButton(
                onPressed: () {
                  print('Search IconButton');
                },
                icon: Icon(Icons.search))
          ],
          centerTitle: true,
        ),
        body: Column(
          children: [
            // the width of stack to the end of screen by (default).
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                width: 200.0,
                child: Stack(
                  //control the children (image && Text)
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlkzNUZeaQOzbvqZ5JpMe4NpahRSlpU2QZbA&usqp=CAU'),
                      width: 200.0,
                      height: 200.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        //if i didnot make width to stack,the width of this container will be to the end of screen. 
                        // alignment: Alignment.center,
                        width: double.infinity,
                        color: Colors.black.withOpacity(0.8),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Flower',
                          style: TextStyle(fontSize: 20,color: Colors.white),
                        ),
                      )
                  ],
                ),
              ),
            ),

          ],)


        //  Container(
        //   height: double.infinity,
        //   color: Colors.purple,
        //   child: Row(
        //     mainAxisSize: MainAxisSize.max,
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     children: [
        //       Container(
        //         color: Colors.red,
        //         child: Text(
        //           'First',
        //           style: TextStyle(fontSize: 30,color: Colors.white),))
        //     ],
        //   ),
        // )

        //     SingleChildScrollView(
        //   // scrollDirection: Axis.horizontal,
        //   child: Container(
        //     width: double.infinity,
        //     color: Colors.purple,
        //     child: Column(
        //         mainAxisSize: MainAxisSize.max,
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           Container(
        //               color: Colors.red,
        //               child:
        //                   Text('First Data', style: TextStyle(fontSize: 30))),
        //           Container(
        //             color: Colors.green,
        //             child: Text('Second Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.blue,
        //             child: Text('Third Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.amber,
        //             child: Text('Fourth Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //               color: Colors.red,
        //               child:
        //                   Text('First Data', style: TextStyle(fontSize: 30))),
        //           Container(
        //             color: Colors.green,
        //             child: Text('Second Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.blue,
        //             child: Text('Third Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.amber,
        //             child: Text('Fourth Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //               color: Colors.red,
        //               child:
        //                   Text('First Data', style: TextStyle(fontSize: 30))),
        //           Container(
        //             color: Colors.green,
        //             child: Text('Second Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.blue,
        //             child: Text('Third Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.amber,
        //             child: Text('Fourth Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //               color: Colors.red,
        //               child:
        //                   Text('First Data', style: TextStyle(fontSize: 30))),
        //           Container(
        //             color: Colors.green,
        //             child: Text('Second Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.blue,
        //             child: Text('Third Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.amber,
        //             child: Text('Fourth Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //               color: Colors.red,
        //               child:
        //                   Text('First Data', style: TextStyle(fontSize: 30))),
        //           Container(
        //             color: Colors.green,
        //             child: Text('Second Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.blue,
        //             child: Text('Third Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.amber,
        //             child: Text('Fourth Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //               color: Colors.red,
        //               child:
        //                   Text('First Data', style: TextStyle(fontSize: 30))),
        //           Container(
        //             color: Colors.green,
        //             child: Text('Second Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.blue,
        //             child: Text('Third Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.amber,
        //             child: Text('Fourth Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //               color: Colors.red,
        //               child:
        //                   Text('First Data', style: TextStyle(fontSize: 30))),
        //           Container(
        //             color: Colors.green,
        //             child: Text('Second Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.blue,
        //             child: Text('Third Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.amber,
        //             child: Text('Fourth Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //               color: Colors.red,
        //               child:
        //                   Text('First Data', style: TextStyle(fontSize: 30))),
        //           Container(
        //             color: Colors.green,
        //             child: Text('Second Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.blue,
        //             child: Text('Third Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.amber,
        //             child: Text('Fourth Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //               color: Colors.red,
        //               child:
        //                   Text('First Data', style: TextStyle(fontSize: 30))),
        //           Container(
        //             color: Colors.green,
        //             child: Text('Second Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.blue,
        //             child: Text('Third Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.amber,
        //             child: Text('Fourth Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //               color: Colors.red,
        //               child:
        //                   Text('First Data', style: TextStyle(fontSize: 30))),
        //           Container(
        //             color: Colors.green,
        //             child: Text('Second Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.blue,
        //             child: Text('Third Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.amber,
        //             child: Text('Fourth Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //               color: Colors.red,
        //               child:
        //                   Text('First Data', style: TextStyle(fontSize: 30))),
        //           Container(
        //             color: Colors.green,
        //             child: Text('Second Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.blue,
        //             child: Text('Third Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.amber,
        //             child: Text('Fourth Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //               color: Colors.red,
        //               child:
        //                   Text('First Data', style: TextStyle(fontSize: 30))),
        //           Container(
        //             color: Colors.green,
        //             child: Text('Second Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.blue,
        //             child: Text('Third Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.amber,
        //             child: Text('Fourth Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //               color: Colors.red,
        //               child:
        //                   Text('First Data', style: TextStyle(fontSize: 30))),
        //           Container(
        //             color: Colors.green,
        //             child: Text('Second Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.blue,
        //             child: Text('Third Data', style: TextStyle(fontSize: 30)),
        //           ),
        //           Container(
        //             color: Colors.amber,
        //             child: Text('Fourth Data', style: TextStyle(fontSize: 30)),
        //           )
        //         ]),
        //   ),
        // )

        );
  }
}



















// import 'package:flutter/material.dart';
// class HomeScreen extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//             icon: Icon(Icons.menu),
//             // ignore: avoid_print
//             onPressed: () {
//               print('menu icon...');
//             }),
//         title: Text('First Application'),
//         centerTitle: true,
//         actions: [
//           IconButton(
//               onPressed: () {
//                 print('Notification icon...');
//               },
//               icon: Icon(Icons.notification_important)),
//           IconButton(
//               onPressed: () {
//                 print('Search icon...');
//               },
//               icon: Icon(Icons.search))
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Container(
//               color: Colors.red,
//               child: Text('First Data', style: TextStyle(fontSize: 30)),height:165),
//           ),
//           Expanded(
//             child: Container(
//               color: Colors.green,
//               child: Text('Second Data', style: TextStyle(fontSize: 30)),
//               height:165),
//           ),
//           Expanded(
//             child: Container(
//               color: Colors.blue,
//               child: Text('Third Data', style: TextStyle(fontSize: 30)),
//               height: 165),
//           ),
//           Expanded(
//             child: Container(
//               color: Colors.amber,
//               child: Text('Fourth Data', style: TextStyle(fontSize: 30)),
//               height: 165),
//           ),
//         ],
//       ),
//     );
//   }
// }
