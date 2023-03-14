import 'package:alluidesign/utill.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

import 'package:sizer/sizer.dart';


class WatchHome extends StatefulWidget {
  const WatchHome({Key? key}) : super(key: key);

  @override
  State<WatchHome> createState() => _WatchHomeState();
}

class _WatchHomeState extends State<WatchHome> {
  final List<Map<String, dynamic>>Categories=[
    { "image": "assets/image/w1.png","title": "#STRAP","subtitle":"NAVY CERAMIC","icon":"assets/icon/heart.png",},
    { "image": "assets/image/w5.png","title": "#STRAP","subtitle":"NAVY CERAMIC","icon":"assets/icon/heart.png"},
    { "image": "assets/image/w7.png","title": "#STRAP","subtitle":"NAVY CERAMIC","icon":"assets/icon/heart.png"},
    { "image": "assets/image/w2.png","title": "#STRAP","subtitle":"CHRONOGRAPH","icon":"assets/icon/heart.png" },
    { "image": "assets/image/w3.png","title": "#LEATHER","subtitle":"BLACK KALBORA","icon":"assets/icon/heart.png" },
    { "image": "assets/image/w4.png","title": "#STRAP","subtitle":"GOLDEN DIGO","icon":"assets/icon/heart.png" }
  ];
  final maincolor=Color(0xffffd9b3);

  @override
  Widget build(BuildContext context) {
   // double screenHeight= MediaQuery.of(context).size.height;
   // double screenWidth= MediaQuery.of(context).size.width;
    return Material(
      color: const Color(0xff004280),
      child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 3.h,vertical: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageIcon(AssetImage('assets/icon/categories.png'),size: 30,color: Colors.white),
                  Row(children: [
                    ImageIcon(AssetImage('assets/icon/newsearch.png'),size: 30,color: Colors.white),
                    SizedBox(width: 5.w,),
                    ImageIcon(AssetImage('assets/icon/shopping-cart.png'),size: 30,color: Colors.white)
                  ],),
                ],),
              SizedBox(height: 5.h,),
              // mediumheight,mediumheight,
              Text('#FEATURED',style: TextStyle(color: Colors.white)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('PRODUCTS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900, fontSize: 20.sp)),

                  Wrap(children: [
                    Icon(Icons.arrow_back_ios,color: maincolor),
                    Icon(Icons.arrow_forward_ios,color: maincolor),
                  ],),
                ],
              ),
              smallheight,
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Stack( children: [
                  Container(color: maincolor,
                    height: 30.h,
                    child: Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.all(3.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('#VINTAGE',style: TextStyle()),verysmallheight,
                                Text('TRISTEL EDITION',style: TextStyle(fontWeight: FontWeight.bold)),smallheight,
                                Text('Let\'s meet up with our brand \nnew and latest collection. \nIntroducing new watch series for You.',style: textStyle2),smallheight,
                                ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white) ,onPressed: () {

                                }, child:  Text('BUY NOW',style:GoogleFonts.eczar(color: Colors.black,fontWeight: FontWeight.bold)),)
                              ],),
                          ),
                        ]),
                  ),
                  Positioned(right: 19,  top: 45, child: CircleAvatar(radius: 65,backgroundColor: Color(0xffffffe6).withOpacity(0.8),)),
                  Positioned(right: -15,top:12,child: Transform.rotate(angle: -math.pi/-9,child: Image.asset('assets/image/w6.png',height: 26.h,)))
                ],
                ),
              ),
              height,
              Text('#TRENDING',style: TextStyle(color: Colors.white)),
              Text('PRODUCTS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900, fontSize: 20)),

              GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    mainAxisExtent: 260, ),
                  itemCount: Categories.length,
                  itemBuilder: (context,index){
                    return Stack(
                      children: [
                        Card(
                          color: Colors.transparent,
                          elevation: 0.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: maincolor,),
                              height: 24.h,child: Container(margin: EdgeInsets.all(20),child: Image.asset(Categories.elementAt(index)['image'],height: 80.h,fit: BoxFit.cover))),
                            verysmallheight,
                            Text(Categories.elementAt(index)['title'],overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white)),
                            Text(Categories.elementAt(index)['subtitle'],maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800)),
                            smallheight,
                          ]),
                        ),
                        Positioned(
                            right: 1.h,
                            child: IconButton(onPressed: () {
                              print(Categories[index]);
                            }, icon:ImageIcon(AssetImage(Categories.elementAt(index)['icon'])),color: Colors.white,)),
                        Positioned(
                            right: 5,bottom: 77,
                            child: FloatingActionButton.small(elevation: 0.0,onPressed: () {
                            },child: Icon(Icons.add,),backgroundColor: Color(0xff004280).withOpacity(0.5),)
                        )
                      ],
                    );
                  }),
            ],
          ),
        )),

    );

  }
}
