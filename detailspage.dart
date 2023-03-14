import 'package:alluidesign/component.dart';
import 'package:alluidesign/utill.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class detailspage extends StatelessWidget {
  const detailspage({Key? key}) : super(key: key);

  // final textStyle2= TextStyle(fontSize: 11,fontWeight: FontWeight.w400);
  // final textStyle= TextStyle(fontSize: 12,fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {

    final textStyle1= TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white);
    final textStyle= TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.white);

    return Material(
      color: Color(0xff004280),
      child: Stack(children: [
        Positioned(right: 0,top: 0,
          child: ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100),),
              child:Container(
                height:60.h,
                width:38.w,
                color: Color(0xffffd9b3),
              )),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 3.h,vertical: 6.h),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:     Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back,color: Colors.white,size: 30),
                      ImageIcon(AssetImage('assets/icon/shopping-cart.png'),size: 30,)
                    ],
                  ),
                  smallheight,veryminiheight,
                  Icon(Icons.keyboard_arrow_up_outlined,color: Colors.white),smallheight,
                  Text('CASE SIZE',style: textStyle1),
                  Text('42 MM',style: textStyle,),veryminiheight,
                  Text('MOVEMENT',style: textStyle1),
                  Text('CHRONO',style: textStyle),veryminiheight,
                  Text('STRAP',style: textStyle1),
                  Text('Leather',style: textStyle),veryminiheight,
                  Text('STRAP WIDTH',style: textStyle1),
                  Text('22 MM',style: textStyle),smallheight,
                  Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white),
                  mediumheight,
                  Text('#TRENDING',style: TextStyle(color: Colors.white)),
                  Text('Leather Analog Watch',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900, fontSize: 20)),
                  veryminiheight,
                  Text('Let\'s meet up with our brand new and latest collection. Introducing new watch series for You. Simple, easy-to-read face designs come in handy during work and hang out. These models are waterproof under normal daily use, which means you can wear them without a worry in the rain or when you wash your hands. This model is much gorgeous and comfortable.',maxLines: 5,overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
                  mediumheight,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    SizedBox(height:7.h,width: 55.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary:  Color(0xffffd9b3), // Background color
                        ),
                        child: const Text(
                          'ADD TO CART',
                          style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height:7.h,width: 16.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary:  Color(0xffffd9b3), // Background color
                        ),
                        child: ImageIcon(AssetImage('assets/icon/heart.png'),color: Colors.red),
                      ),
                    ),
                  ],),
                ]),
          ),
        ),
        Positioned(right: -30,top: 100,child: Image.asset('assets/image/w6.png',height: 40.h,))

      ],

      ),


    );
  }
}



//