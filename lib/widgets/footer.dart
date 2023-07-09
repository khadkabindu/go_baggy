import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      padding: EdgeInsets.all(30),
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text("GO BAGGY",style: TextStyle(color: Colors.white, fontSize: 30),),
          Text("Move, carry and live with style",style: TextStyle(color: Colors.white),),
          SizedBox(height: 50,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text('Location',style: TextStyle(color: Colors.white, fontSize: 20),),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Icon(
                        Icons.pin_drop_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5,),
                      Text("Shop4M1, Trobe Street KTM",style: TextStyle(color: Colors.white),),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contacts',style: TextStyle(color: Colors.white,fontSize: 20),),
                  SizedBox(height: 15,),

                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5,),

                      Text("081-554307",style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  Row(

                    children: [
                      Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5,),

                      Text("gobaggy@gmail.com",style: TextStyle(color: Colors.white),)
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Socials',style: TextStyle(color: Colors.white,fontSize: 20),),
                  SizedBox(height: 15,),

                  Row(
                    children: [
                      Icon(
                        Icons.facebook_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5,),

                      Icon(
                        Icons.facebook_outlined,
                        color: Colors.white,

                      ),
                      SizedBox(width: 5,),

                      Icon(
                        Icons.facebook_outlined,
                        color: Colors.white,

                      ),

                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
