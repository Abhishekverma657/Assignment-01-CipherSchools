import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

 class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
    late bool val=false;
   
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
         appBar: AppBar(
        
         backgroundColor: Colors.white,
          actions: [
             Row(children: [
    
            
            Switch(inactiveThumbColor: Colors.white,activeTrackColor: Colors.black,activeThumbImage: NetworkImage("https://freepngimg.com/thumb/sun/23611-7-sun-thumb.png"),value: val, onChanged: (value){
           
       setState(() {
         val=!val;
          if(val==true){
             Get.changeTheme( ThemeData.dark());
               
             
    
        
              
    
          }
           else{
             Get.changeTheme(ThemeData.light());
    
           }
    
         
       });
    
            }),
            Icon(Icons.notifications,size: 20,color: Vx.black,),
            Icon(Icons.search,size: 20,  color: Colors.black,),
    
             ],),
             
             
            
    
          ],
          title: "ClipherSchools".text.black.make(),
        leading: CircleAvatar(
          
          backgroundColor: Colors.black,child:    "C".text.bold.size(70).orange500.make(),)),
           body: SingleChildScrollView(
             child: Column(children: [
              CarouselSlider(
              // carouselController:  buttonCarouselController,
                
                  items: [
                     bannercantainer("https://miro.medium.com/v2/resize:fit:1080/1*gbEACmdilqm77SNG-9wQkA.jpeg","App devlopment with flutter", "App Development", "Aditya Thakur", "Watch"),
                    
                    
                    bannercantainer("https://www.ideamotive.co/hubfs/what%20is%20python%202088x1252%20%281%29.png", "Python & django for  Beginners", "Programming", "Clipher  Schools",  "Watch"),
           
                     bannercantainer("https://getit-fair.com/wp-content/uploads/2020/12/Assessment-04-1200.png", "Free Mock  IELTS/TOEFL", "Assessment test", "Languify", "Try now"),
                  
           
               
                  ],
                  options: CarouselOptions(
                     height:200,
                     aspectRatio: 16/9,
                     viewportFraction: 1,
                     initialPage: 0,
                    //  enableInfiniteScroll: true,
                    //  reverse: false,
                     autoPlay: true,
                      pauseAutoPlayOnManualNavigate: true,
                     autoPlayInterval: Duration(seconds: 3),
                     autoPlayAnimationDuration: Duration(milliseconds: 800),
                     autoPlayCurve: Curves.fastOutSlowIn,
                     enlargeCenterPage: true,
                     enlargeFactor: .3,
                     
                   
                     // onPageChanged: callbackFunction,
                     scrollDirection: Axis.horizontal,
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       "Recommended Courses".text.size(20).bold.make(),
                       Row(children: [
                        VxBox( child: HStack(
                          
                          [
                          "Popular".text.makeCentered(),
                          
                          IconButton(onPressed: (){
                        
                          }, icon:  Icon(Icons.arrow_drop_down))
                        ])).size(100, 30).alignCenter.white.make()
                       ],)
                    ],
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Row(children: [
                     
                         Recommendedcourse("https://images.unsplash.com/photo-1456513080510-7bf3a84b82f8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3R1ZHl8ZW58MHx8MHx8&w=1000&q=80","Languify",  "FREE IELTS/TOEFL....", "AI generated feedback and..",  "Test duration: 30 mins/3..", "Languify", "express & excal"),
                         WidthBox(13),
                             Recommendedcourse("https://miro.medium.com/v2/resize:fit:1400/1*uKbcXDBxEmv3FybfNXkf4Q.png","Web Devlopment", "Learn web", "No of videos:11", "Course time :3.4 hrs", "Shruti Codes", "Instructor"),
                           WidthBox(13),
                              Recommendedcourse("https://miro.medium.com/v2/resize:fit:1400/1*uKbcXDBxEmv3FybfNXkf4Q.png","Web Devlopment", "Learn JS", "No of videos:11", "Course time :3.4 hrs", "Shruti Codes", "Instructor"),
                      
                     ],),
                   ),
                 ),
                  Padding(
                  padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       "Popular Categroies".text.size(20).bold.make(),
                      //  Row(children: [
                      //   VxBox( child: HStack(
                          
                      //     [
                      //     "Popular".text.makeCentered(),
                          
                      //     IconButton(onPressed: (){
                        
                      //     }, icon:  Icon(Icons.arrow_drop_down))
                      //   ])).size(100, 30).alignCenter.white.make()
                      //  ],)
                    ],
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Row(children: [
                     
                         Recommendedcourse("https://images.unsplash.com/photo-1456513080510-7bf3a84b82f8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3R1ZHl8ZW58MHx8MHx8&w=1000&q=80","Languify",  "FREE IELTS/TOEFL....", "AI generated feedback and..",  "Test duration: 30 mins/3..", "Languify", "express & excal"),
                         WidthBox(13),
                             Recommendedcourse("https://miro.medium.com/v2/resize:fit:1400/1*uKbcXDBxEmv3FybfNXkf4Q.png","Web Devlopment", "Learn web", "No of videos:11", "Course time :3.4 hrs", "Shruti Codes", "Instructor"),
                           WidthBox(13),
                              Recommendedcourse("https://miro.medium.com/v2/resize:fit:1400/1*uKbcXDBxEmv3FybfNXkf4Q.png","Web Devlopment", "Learn JS", "No of videos:11", "Course time :3.4 hrs", "Shruti Codes", "Instructor"),
                      
                     ],),
                   ),
                 )
              
                
                     
             ],),
           ),
         
    
    );
  }
}
 Widget bannercantainer( String img,String title, String headingText,String Instructor,String action){
  return Container(height: 40,
                   decoration: BoxDecoration(
                    
                    
                     image: DecorationImage(
                  
                     fit: BoxFit.cover,
                    image: NetworkImage(img))),
                     child: Stack(children: [
                      Positioned(
                         top: 60,
                          left: 9,
                        child: Container(
                           height: 150,
                           width: 150,
                           child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               "$title".text.white.bold.size(20).make(),
                                VxBox( child: "$headingText".text.makeCentered()).gray400.rounded.size(150, 20).make(),
                               Padding(
                                 padding: const EdgeInsets.only(top: 5),
                                 child: Row(children: [
                                   CircleAvatar( radius: 10,backgroundColor: Vx.amber400,),
                                   WidthBox(7),
                                  "$Instructor".text.white.bold.make()
                                 ],),
                                
                               ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: VxBox( child: "$action".text.white.size(20).makeCentered())
                                  .size(100, 30).customRounded(BorderRadius.circular(7)).orange600.make(),
                                )
                             ],
                           )))
                     ]),
                    );
 }
  Widget Recommendedcourse(String img,  String header, String subheader,String subtitle1,String subtitle2, String name,String instructor){
    return  Container(height: 250,
                    width: 190,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10) ,color: Colors.white),
                      child: Stack(
                        children: [
                          Positioned(child: Container(height: 100,width: 190, decoration: BoxDecoration(
                             borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            image: DecorationImage( fit: BoxFit.cover,
                            image: NetworkImage(
                            img))),)),
                            Positioned(
                               top: 110,
                              child: VxBox(child: "$header".text.red300.makeCentered()).rounded.size(100, 30).orange100.make()),
                               Positioned( top: 150,
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     "$subheader".text.bold.size(18).make(),
                                    "$subtitle1".text.make(),
                                     "$subtitle2".text.make(),
                                       
                                   ],
                                 )),
                                  Positioned(
                                     top: 220,
                                     child: Row(
                                      children: [
                                        CircleAvatar(radius: 16,backgroundColor: Colors.black,
                                          child: CircleAvatar(radius: 14,backgroundColor: Colors.white,child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq6TyuDQ8Jepoq89k6YD9BZzTdNGREsoJuFEE6bfMD8Ngef4-Dq4LoGR7m0_4FTKfiCpg&usqp=CAU"),)),
                                         Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                          "$name".text.make(),
                                          "$instructor".text.make()
                                         ],)
                                      ],
                                     ),
                                  )],
                        
                      ),
                    );
  }