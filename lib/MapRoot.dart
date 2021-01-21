import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home: mapRoot(),
));

class mapRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[900],
        body: Column(
            children: <Widget>[
              Container(
                height: 180,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),),
                    color: Colors.black26
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.arrow_back_ios, color: Colors.white),
                        SizedBox(width: 120,),
                        Text('My Profile', style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),),
                        SizedBox(width: 100,),
                        Icon(Icons.more_horiz, color: Colors.white,)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('assets/food.jpg',),),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Yogajothi Chandrasekaran', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15),),
                            SizedBox(height: 10,),
                            Text('Krakow,Poland', style: TextStyle(
                                color: Colors.white, fontSize: 12),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Column(children: <Widget>[
                          Text('RIDES', style: TextStyle(
                              color: Colors.white60, fontSize: 10),),
                          SizedBox(height: 5,),
                          Text('67', style: TextStyle(color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),)
                        ],),
                        SizedBox(width: 100,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Text('FREE RIDES', style: TextStyle(
                              color: Colors.white60, fontSize: 10),),
                          SizedBox(height: 5,),
                          Text('12', style: TextStyle(color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),)
                        ],),
                        SizedBox(width: 80,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Text('CREDITS', style: TextStyle(
                              color: Colors.white60, fontSize: 10),),
                          SizedBox(height: 5,),
                          Row(
                            children: <Widget>[
                            Text(r'$100',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                          ],),
                        ],)
                      ],
                    )
                  ],
                ),
              ),
          Container(
            height:460,
            padding: EdgeInsets.all(7),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height:30,
                  padding: EdgeInsets.only(left: 7),
                  child:  Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Past trips',style: TextStyle(color: Colors.white,fontSize: 14),),
                    SizedBox(width: 185,),
                    FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>seeAll()),);
                      },
                      child: Text(
                        'see all',
                        style: TextStyle(color: Colors.redAccent),
                      ),
                    )
                  ],
                ),),
                Container(
                  height: 250,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context,int index)=>buildItemForMap()
                  ),
                ),
                SizedBox(height: 10,),
                Text('Payment',style: TextStyle(color: Colors.white,fontSize: 14,),),
                SizedBox(height: 10,),
                Container(
                  height: 120,
                  child: GridView.builder(itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          childAspectRatio: 8/16,
                        mainAxisSpacing: 4
                      ),
                      itemBuilder: (BuildContext context,int index){
                        return Container(
                          height: 80,
                          width: 60,
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              image: new DecorationImage(image:AssetImage('assets/card.jpg'),
                              fit: BoxFit.cover),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.black26
                          ),
                        );
                      }),
                )
              ],
            ),
          )

            ],
          ),
      );
  }
}
class seeAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          color:Colors.indigo[900] ,
          height: 750,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon:Icon(Icons.arrow_back_ios,color: Colors.white,),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>mapRoot()),);
                    },),
                  SizedBox(width: 110,),
                  Text('Back',style: TextStyle(color: Colors.white),),
                  SizedBox(width: 100,),
                  Icon(Icons.more_horiz,color: Colors.white,)
                ],
              ),
              Text('October',style: TextStyle(color: Colors.white),),
          Container(
            height: 250,
            width: double.infinity,
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context,int index)=>buildItemForMap()
            ),
          ),
          SizedBox(height: 20,),
          Text('Sept',style: TextStyle(color: Colors.white),),
          Container(
            height: 250,
            width: double.infinity,
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context,int index)=>buildItemForMap()
            ),
          ),
            ],
          ),
        ));
    }
}
class buildItemForMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      margin: EdgeInsets.only(top: 0, bottom: 5),
      padding: EdgeInsets.only(left: 10,right: 5,top: 5,bottom: 15),
      alignment:Alignment.topLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Colors.black26
      ),
      child: Row(
        children: <Widget>[
          Text('Old town st.',style: TextStyle(color: Colors.white,)),
          SizedBox(width: 150,),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('Total',style: TextStyle(color: Colors.white,fontSize: 8),),
              Row(children: <Widget>[
                Text(r'$',style: TextStyle(color: Colors.white,fontSize: 12),),
                Text('16',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ],),
              Text('Travel time:2h.28mins',style: TextStyle(color: Colors.white,fontSize: 8),)
            ],
          )
        ],
      ),
    );

  }
}

