import 'package:flutter/material.dart';
import 'package:travel_ui/models/destination_model.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                
                Text('Top Destinations', style : TextStyle(fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 1.5 )),
                GestureDetector(
                  onTap: () => print('See all'),

                    child: Text ('See All', style : TextStyle(
                    color : Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  )),
                ),
              ],), 
            ),
            SizedBox(height: 20.0),
            Container(
               height: 300.0,
              //  color: Colors.blue,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 itemCount: destinations.length,
                 itemBuilder: (BuildContext context, int index) {
                   Destination destination = destinations[index];
                   return Container (
                     margin: EdgeInsets.all(10.0),
                     width: 210.0,
                    //  color: Colors.red,
                     child : Stack(
                       alignment: Alignment.topCenter,
                       children : <Widget> [
                         Positioned(
                           bottom: 15.0,
                             child: Container(
                             height: 120.0,
                             width: 200.0,
                             decoration: BoxDecoration(
                               color: Colors.white,
                                borderRadius : BorderRadius.circular(10.0)
                             ),
                             child: Padding(
                               padding: EdgeInsets.all(10.0),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   Text('${destination.activities.length} activities', style: TextStyle(
                                     fontSize: 22.0,
                                     fontWeight: FontWeight.w600,
                                     letterSpacing: 1.2,
                                    ),
                                   ),
                                   Text(destination.description, style: TextStyle(
                                     color: Colors.grey,
                                   ),
                                   ),
                                 
                               ],
                               ),
                             )
                             ),
                         ),
                           Container(
                             decoration: BoxDecoration(
                               color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(0.0, 2.0),
                                blurRadius: 6.0,
                                ),
                                ]

                                ),
                            child: Stack(
                             children: <Widget>[
                               ClipRRect(
                                 borderRadius: BorderRadius.circular(20.0),
                                  child: Image(height: 180.0, 
                                 width: 180.0,
                                 image:AssetImage(destination.imageUrl),
                                 fit: BoxFit.cover,
                                 ),
                               )
                             ],
                           )
                           )
                       ]
                     )
                      
                     );
                 }
               ),
               )

          ],
          
    );
  }
}