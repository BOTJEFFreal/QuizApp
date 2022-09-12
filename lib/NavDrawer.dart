import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  bool checkOpen = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.grey[300],
        child: ListView(

          children: <Widget>[
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.only(topLeft:Radius.circular(15), topRight: Radius.circular(15)),
              ),
              child: Center(child: const Text("Questions",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 50),)),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(15), bottomRight: Radius.circular(15)),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.all(Radius.circular(15)),

                      ),
                      child: FlatButton(onPressed: (){}, child: const Text("Physics",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.all(Radius.circular(15)),

                      ),

                      child: FlatButton(onPressed: (){}, child: const Text("Chemistry",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.all(Radius.circular(15)),

                      ),

                      child: FlatButton(onPressed: (){}, child: const Text("Maths",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))),

                ],
              ),
            ),
            SizedBox(height: 7,),
            GridView.count(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 5,
              children: List.generate(30, (index) {
                return Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    border: Border.all(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                child: Center(
                  child: Text(
                    (index+1).toString(),
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),);
              }),
            ),
            SizedBox(height: 20,),
            Card(
              child: SizedBox(
                width: 300,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left:10,right:10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.square,
                                color: Colors.greenAccent,
                              ),
                              Text("Answered")
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.square,
                                color: Colors.redAccent,
                              ),
                              Text("Not Answered")
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.square,
                                color: Colors.grey,
                              ),
                              Text("Not Visited")
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.square,
                                color: Colors.purpleAccent,
                              ),
                              Text("Review Later")
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.square,
                            color: Colors.purple,
                          ),
                          Text("Answered and Marked for Review")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
