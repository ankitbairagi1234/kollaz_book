

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:kolazz_book/Controller/contact_screen_controller.dart';
import 'package:kolazz_book/Views/Amount_screen/client_amt.dart';
import 'package:kolazz_book/Views/freelencing_jobpost/account.dart';

import '../../Models/Type_of_photography_model.dart';
import '../../Utils/colors.dart';
import '../../Widgets/show_message.dart';
import '../freelencing_jobpost/allotment.dart';
import '../freelencing_jobpost/client_Jobs_screen.dart';
import '../freelencing_jobpost/frelencing_post.dart';
import '../freelencing_jobpost/team allotment.dart';


class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final _formKey = GlobalKey<FormState>();

  final _controller = TextEditingController();







  bool _isExpanded = false;
  bool off =true;


   // Future.delayed(duration : Duration(milliseconds: 200))
   _phptographers() {
    return GetBuilder(
      init:addPhotographerController(),
      builder: (controller) {
        // print("_________________________${controller.getphotographetClient.first.firstName}");
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
                height: MediaQuery.of(context).size.height/1.5,
                child: ListView.builder(
                  itemCount: controller.getphotographetClient.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        // height: 45,
                        width: MediaQuery.of(context).size.width/1,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.lightwhite),
                        child: InkWell(
                          onTap: () {

                          },
                          child: ExpansionTile(
                            trailing: Image.asset("assets/calling.png", scale: 1.1,),
                            title:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:  [
                                Text("${controller.getphotographetClient[index].firstName}", style: TextStyle(color: AppColors.textclr,fontSize: 13),),
                                 Text("${controller.getphotographetClient[index].type_photographer}", style: TextStyle(color: AppColors.textclr,fontSize: 13)),
                                Text("${controller.getphotographetClient[index].city}", style: TextStyle(color: AppColors.textclr,fontSize: 13)),
                              ],
                            ),
                            children: [
                              InkWell(
                                onTap: () {
                                  // setState(() {
                                  //   if(off==true){
                                  //     _isExpanded =false;
                                  //   }
                                  // }
                                  // );
                                },
                                child: ListTile(
                                    title: Container(
                                      padding: EdgeInsets.all(25),
                                      decoration: BoxDecoration(color: AppColors.contaccontainer,borderRadius: BorderRadius.circular(10)),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: () {

                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>freelencingPost()));

                                                },
                                                child: Container(

                                                    height: 40,
                                                    width: MediaQuery.of(context).size.width/2.9,
                                                    child: Center(
                                                      child: Text(
                                                        'Freelencing',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: AppColors.AppbtnColor,
                                                      // border: Border.all(color: AppColors.AppbtnColor),
                                                      borderRadius: BorderRadius.circular(10),
                                                    )),
                                              ),
                                              InkWell(
                                                onTap: () {

                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllotmentScreen()));

                                                },
                                                child: Container(

                                                    height: 40,
                                                    width: MediaQuery.of(context).size.width/2.9,
                                                    child: Center(
                                                      child: Text(
                                                        'Allotment',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: AppColors.contaccontainerblack,
                                                      // border: Border.all(color: AppColors.AppbtnColor),
                                                      borderRadius: BorderRadius.circular(10),
                                                    )),
                                              ),

                                            ],),
                                          SizedBox(height: 20,),
                                          InkWell(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountScreen()));

                                            },
                                            child: Container(
                                                height: 45,
                                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:  AppColors.pdfbtn),
                                                width: MediaQuery.of(context).size.width,
                                                child: Center(child: Text("Account", style: TextStyle(fontSize: 18, color: AppColors.textclr)))
                                            ),
                                          ),
                                          SizedBox(height: 20,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                    color: AppColors.lightwhite,
                                                    borderRadius: BorderRadius.circular(5)
                                                ),
                                                child: Center(child: Text("Edit",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
                                              ),
                                              Container(
                                                height: 30,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                    color: AppColors.contaccontainerred,
                                                    borderRadius: BorderRadius.circular(5)
                                                ),
                                                child: Center(child: Text("Delete",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
                                              )
                                            ],)
                                        ],
                                      ),
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );

                  },)
              )
            ]);
      },);
  }


   _clients() {

    return GetBuilder(
      init:addPhotographerController(),
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/1.5,
              child: ListView.builder(
                itemCount: controller.getphotographetClient.length,
                itemBuilder: (context, index) {
                  return       Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child:controller. getphotographetClient == null || controller.getphotographetClient ==  "" ?Center(child: Text("No Data Found")) :Container(
                      // height: 45,
                      width: MediaQuery.of(context).size.width/1,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.lightwhite),
                      child: ExpansionTile(
                        trailing: Image.asset("assets/calling.png", scale: 1.1,),
                        title:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("${controller.getphotographetClient[index].firstName}", style: TextStyle(color: AppColors.textclr,fontSize: 13),),
                            Text("${controller.getphotographetClient[index].city}", style: TextStyle(color: AppColors.textclr,fontSize: 13)),
                          ],
                        ),
                        children: [
                          ListTile(title: Container(
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(color: AppColors.contaccontainer,borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {

                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalJobsScreen()));

                                      },
                                      child: Container(

                                          height: 40,
                                          width: MediaQuery.of(context).size.width/2.9,
                                          child: Center(
                                            child: Text(
                                              'Final Jobs',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColors.AppbtnColor,
                                            // border: Border.all(color: AppColors.AppbtnColor),
                                            borderRadius: BorderRadius.circular(10),
                                          )),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TeamAllotment()));

                                      },
                                      child: Container(

                                          height: 40,
                                          width: MediaQuery.of(context).size.width/2.9,
                                          child: Center(
                                            child: Text(
                                              'Team Allotment',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColors.contaccontainerblack,
                                            // border: Border.all(color: AppColors.AppbtnColor),
                                            borderRadius: BorderRadius.circular(10),
                                          )),
                                    ),

                                  ],),
                                SizedBox(height: 20,),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ClientDetails()));

                                  },
                                  child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:  AppColors.pdfbtn),
                                      width: MediaQuery.of(context).size.width,
                                      child: Center(child: Text("Account", style: TextStyle(fontSize: 18, color: AppColors.textclr)))
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: AppColors.lightwhite,
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Center(child: Text("Edit",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: AppColors.contaccontainerred,
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Center(child: Text("Delete",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
                                    )
                                  ],)
                              ],
                            ),
                          )
                          ),
                        ],
                      ),
                    ),
                  );

                },),
            )

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: Container(
            //     // height: 45,
            //     width: MediaQuery.of(context).size.width/1,
            //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.lightwhite),
            //     child: ExpansionTile(
            //       trailing: Image.asset("assets/calling.png", scale: 1.1,),
            //       title:  Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Text("Dhaval Patel", style: TextStyle(color: AppColors.textclr,fontSize: 13),),
            //           Text("Mumbai", style: TextStyle(color: AppColors.textclr,fontSize: 13)),
            //
            //         ],
            //       ),
            //       children: [
            //         ListTile(title: Container(
            //           padding: EdgeInsets.all(25),
            //           decoration: BoxDecoration(color: AppColors.contaccontainer,borderRadius: BorderRadius.circular(10)),
            //           child: Column(
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   InkWell(
            //                     onTap: () {
            //
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalJobsScreen()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Final Jobs',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 18,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.AppbtnColor,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //                   InkWell(
            //                     onTap: () {
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>TeamAllotment()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Team Allotment',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 16,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.contaccontainerblack,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //
            //                 ],),
            //               SizedBox(height: 20,),
            //               InkWell(
            //                 onTap: (){
            //                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ClientDetails()));
            //
            //                 },
            //                 child: Container(
            //                     height: 45,
            //                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:  AppColors.pdfbtn),
            //                     width: MediaQuery.of(context).size.width,
            //                     child: Center(child: Text("Account", style: TextStyle(fontSize: 18, color: AppColors.textclr)))
            //                 ),
            //               ),
            //               SizedBox(height: 20,),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.lightwhite,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Edit",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   ),
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.contaccontainerred,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Delete",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   )
            //                 ],)
            //             ],
            //           ),
            //         )
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: Container(
            //     // height: 45,
            //     width: MediaQuery.of(context).size.width/1,
            //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.lightwhite),
            //     child: ExpansionTile(
            //       trailing: Image.asset("assets/calling.png", scale: 1.1,),
            //       title:  Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Text("Dhaval Patel", style: TextStyle(color: AppColors.textclr,fontSize: 13),),
            //           Text("Mumbai", style: TextStyle(color: AppColors.textclr,fontSize: 13)),
            //
            //         ],
            //       ),
            //       children: [
            //         ListTile(title: Container(
            //           padding: EdgeInsets.all(25),
            //           decoration: BoxDecoration(color: AppColors.contaccontainer,borderRadius: BorderRadius.circular(10)),
            //           child: Column(
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   InkWell(
            //                     onTap: () {
            //
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalJobsScreen()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Final Jobs',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 18,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.AppbtnColor,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //                   InkWell(
            //                     onTap: () {
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>TeamAllotment()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Team Allotment',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 16,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.contaccontainerblack,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //
            //                 ],),
            //               SizedBox(height: 20,),
            //               InkWell(
            //                 onTap: (){
            //                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ClientDetails()));
            //
            //                 },
            //                 child: Container(
            //                     height: 45,
            //                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:  AppColors.pdfbtn),
            //                     width: MediaQuery.of(context).size.width,
            //                     child: Center(child: Text("Account", style: TextStyle(fontSize: 18, color: AppColors.textclr)))
            //                 ),
            //               ),
            //               SizedBox(height: 20,),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.lightwhite,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Edit",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   ),
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.contaccontainerred,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Delete",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   )
            //                 ],)
            //             ],
            //           ),
            //         )
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: Container(
            //     // height: 45,
            //     width: MediaQuery.of(context).size.width/1,
            //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.lightwhite),
            //     child: ExpansionTile(
            //       trailing: Image.asset("assets/calling.png", scale: 1.1,),
            //       title:  Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Text("Dhaval Patel", style: TextStyle(color: AppColors.textclr,fontSize: 13),),
            //           Text("Mumbai", style: TextStyle(color: AppColors.textclr,fontSize: 13)),
            //
            //         ],
            //       ),
            //       children: [
            //         ListTile(title: Container(
            //           padding: EdgeInsets.all(25),
            //           decoration: BoxDecoration(color: AppColors.contaccontainer,borderRadius: BorderRadius.circular(10)),
            //           child: Column(
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   InkWell(
            //                     onTap: () {
            //
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalJobsScreen()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Final Jobs',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 18,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.AppbtnColor,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //                   InkWell(
            //                     onTap: () {
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>TeamAllotment()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Team Allotment',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 16,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.contaccontainerblack,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //
            //                 ],),
            //               SizedBox(height: 20,),
            //               InkWell(
            //                 onTap: (){
            //                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ClientDetails()));
            //
            //                 },
            //                 child: Container(
            //                     height: 45,
            //                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:  AppColors.pdfbtn),
            //                     width: MediaQuery.of(context).size.width,
            //                     child: Center(child: Text("Account", style: TextStyle(fontSize: 18, color: AppColors.textclr)))
            //                 ),
            //               ),
            //               SizedBox(height: 20,),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.lightwhite,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Edit",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   ),
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.contaccontainerred,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Delete",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   )
            //                 ],)
            //             ],
            //           ),
            //         )
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: Container(
            //     // height: 45,
            //     width: MediaQuery.of(context).size.width/1,
            //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.lightwhite),
            //     child: ExpansionTile(
            //       trailing: Image.asset("assets/calling.png", scale: 1.1,),
            //       title:  Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Text("Dhaval Patel", style: TextStyle(color: AppColors.textclr,fontSize: 13),),
            //           Text("Mumbai", style: TextStyle(color: AppColors.textclr,fontSize: 13)),
            //
            //         ],
            //       ),
            //       children: [
            //         ListTile(title: Container(
            //           padding: EdgeInsets.all(25),
            //           decoration: BoxDecoration(color: AppColors.contaccontainer,borderRadius: BorderRadius.circular(10)),
            //           child: Column(
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   InkWell(
            //                     onTap: () {
            //
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalJobsScreen()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Final Jobs',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 18,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.AppbtnColor,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //                   InkWell(
            //                     onTap: () {
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>TeamAllotment()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Team Allotment',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 16,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.contaccontainerblack,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //
            //                 ],),
            //               SizedBox(height: 20,),
            //               InkWell(
            //                 onTap: (){
            //                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ClientDetails()));
            //
            //                 },
            //                 child: Container(
            //                     height: 45,
            //                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:  AppColors.pdfbtn),
            //                     width: MediaQuery.of(context).size.width,
            //                     child: Center(child: Text("Account", style: TextStyle(fontSize: 18, color: AppColors.textclr)))
            //                 ),
            //               ),
            //               SizedBox(height: 20,),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.lightwhite,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Edit",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   ),
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.contaccontainerred,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Delete",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   )
            //                 ],)
            //             ],
            //           ),
            //         )
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: Container(
            //     // height: 45,
            //     width: MediaQuery.of(context).size.width/1,
            //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.lightwhite),
            //     child: ExpansionTile(
            //       trailing: Image.asset("assets/calling.png", scale: 1.1,),
            //       title:  Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Text("Dhaval Patel", style: TextStyle(color: AppColors.textclr,fontSize: 13),),
            //           Text("Mumbai", style: TextStyle(color: AppColors.textclr,fontSize: 13)),
            //
            //         ],
            //       ),
            //       children: [
            //         ListTile(title: Container(
            //           padding: EdgeInsets.all(25),
            //           decoration: BoxDecoration(color: AppColors.contaccontainer,borderRadius: BorderRadius.circular(10)),
            //           child: Column(
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   InkWell(
            //                     onTap: () {
            //
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalJobsScreen()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Final Jobs',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 18,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.AppbtnColor,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //                   InkWell(
            //                     onTap: () {
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>TeamAllotment()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Team Allotment',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 16,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.contaccontainerblack,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //
            //                 ],),
            //               SizedBox(height: 20,),
            //               InkWell(
            //                 onTap: (){
            //                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ClientDetails()));
            //
            //                 },
            //                 child: Container(
            //                     height: 45,
            //                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:  AppColors.pdfbtn),
            //                     width: MediaQuery.of(context).size.width,
            //                     child: Center(child: Text("Account", style: TextStyle(fontSize: 18, color: AppColors.textclr)))
            //                 ),
            //               ),
            //               SizedBox(height: 20,),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.lightwhite,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Edit",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   ),
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.contaccontainerred,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Delete",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   )
            //                 ],)
            //             ],
            //           ),
            //         )
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: Container(
            //     // height: 45,
            //     width: MediaQuery.of(context).size.width/1,
            //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.lightwhite),
            //     child: ExpansionTile(
            //       trailing: Image.asset("assets/calling.png", scale: 1.1,),
            //       title:  Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Text("Dhaval Patel", style: TextStyle(color: AppColors.textclr,fontSize: 13),),
            //           Text("Mumbai", style: TextStyle(color: AppColors.textclr,fontSize: 13)),
            //
            //         ],
            //       ),
            //       children: [
            //         ListTile(title: Container(
            //           padding: EdgeInsets.all(25),
            //           decoration: BoxDecoration(color: AppColors.contaccontainer,borderRadius: BorderRadius.circular(10)),
            //           child: Column(
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   InkWell(
            //                     onTap: () {
            //
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalJobsScreen()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Final Jobs',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 18,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.AppbtnColor,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //                   InkWell(
            //                     onTap: () {
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>TeamAllotment()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Team Allotment',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 16,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.contaccontainerblack,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //
            //                 ],),
            //               SizedBox(height: 20,),
            //               InkWell(
            //                 onTap: (){
            //                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ClientDetails()));
            //
            //                 },
            //                 child: Container(
            //                     height: 45,
            //                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:  AppColors.pdfbtn),
            //                     width: MediaQuery.of(context).size.width,
            //                     child: Center(child: Text("Account", style: TextStyle(fontSize: 18, color: AppColors.textclr)))
            //                 ),
            //               ),
            //               SizedBox(height: 20,),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.lightwhite,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Edit",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   ),
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.contaccontainerred,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Delete",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   )
            //                 ],)
            //             ],
            //           ),
            //         )
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: Container(
            //     // height: 45,
            //     width: MediaQuery.of(context).size.width/1,
            //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.lightwhite),
            //     child: ExpansionTile(
            //       trailing: Image.asset("assets/calling.png", scale: 1.1,),
            //       title:  Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Text("Dhaval Patel", style: TextStyle(color: AppColors.textclr,fontSize: 13),),
            //           Text("Mumbai", style: TextStyle(color: AppColors.textclr,fontSize: 13)),
            //
            //         ],
            //       ),
            //       children: [
            //         ListTile(title: Container(
            //           padding: EdgeInsets.all(25),
            //           decoration: BoxDecoration(color: AppColors.contaccontainer,borderRadius: BorderRadius.circular(10)),
            //           child: Column(
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   InkWell(
            //                     onTap: () {
            //
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalJobsScreen()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Final Jobs',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 18,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.AppbtnColor,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //                   InkWell(
            //                     onTap: () {
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>TeamAllotment()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Team Allotment',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 16,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.contaccontainerblack,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //
            //                 ],),
            //               SizedBox(height: 20,),
            //               InkWell(
            //                 onTap: (){
            //                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ClientDetails()));
            //
            //                 },
            //                 child: Container(
            //                     height: 45,
            //                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:  AppColors.pdfbtn),
            //                     width: MediaQuery.of(context).size.width,
            //                     child: Center(child: Text("Account", style: TextStyle(fontSize: 18, color: AppColors.textclr)))
            //                 ),
            //               ),
            //               SizedBox(height: 20,),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.lightwhite,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Edit",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   ),
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.contaccontainerred,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Delete",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   )
            //                 ],)
            //             ],
            //           ),
            //         )
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: Container(
            //     // height: 45,
            //     width: MediaQuery.of(context).size.width/1,
            //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.lightwhite),
            //     child: ExpansionTile(
            //       trailing: Image.asset("assets/calling.png", scale: 1.1,),
            //       title:  Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Text("Dhaval Patel", style: TextStyle(color: AppColors.textclr,fontSize: 13),),
            //           Text("Mumbai", style: TextStyle(color: AppColors.textclr,fontSize: 13)),
            //
            //         ],
            //       ),
            //       children: [
            //         ListTile(title: Container(
            //           padding: EdgeInsets.all(25),
            //           decoration: BoxDecoration(color: AppColors.contaccontainer,borderRadius: BorderRadius.circular(10)),
            //           child: Column(
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   InkWell(
            //                     onTap: () {
            //
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalJobsScreen()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Final Jobs',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 18,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.AppbtnColor,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //                   InkWell(
            //                     onTap: () {
            //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>TeamAllotment()));
            //
            //                     },
            //                     child: Container(
            //
            //                         height: 40,
            //                         width: MediaQuery.of(context).size.width/2.9,
            //                         child: Center(
            //                           child: Text(
            //                             'Team Allotment',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 16,fontWeight: FontWeight.bold
            //                             ),
            //                           ),
            //                         ),
            //                         decoration: BoxDecoration(
            //                           color: AppColors.contaccontainerblack,
            //                           // border: Border.all(color: AppColors.AppbtnColor),
            //                           borderRadius: BorderRadius.circular(10),
            //                         )),
            //                   ),
            //
            //                 ],),
            //               SizedBox(height: 20,),
            //               InkWell(
            //                 onTap: (){
            //                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ClientDetails()));
            //
            //                 },
            //                 child: Container(
            //                     height: 45,
            //                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:  AppColors.pdfbtn),
            //                     width: MediaQuery.of(context).size.width,
            //                     child: Center(child: Text("Account", style: TextStyle(fontSize: 18, color: AppColors.textclr)))
            //                 ),
            //               ),
            //               SizedBox(height: 20,),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.lightwhite,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Edit",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   ),
            //                   Container(
            //                     height: 30,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: AppColors.contaccontainerred,
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     child: Center(child: Text("Delete",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.bold),),),
            //                   )
            //                 ],)
            //             ],
            //           ),
            //         )
            //         ),
            //       ],
            //     ),
            //   ),
            // ),


          ]);
    },);
  }


  @override
  Widget build(BuildContext context) {
    return GetBuilder(

      init:addPhotographerController(),
      builder: (controller) {
      return Scaffold(

        backgroundColor: AppColors.backgruond,
        // bottomNavigationBar: bottomBar(),
        appBar: controller.isSelected ?  AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff303030),
          actions: const [
            Padding(
              padding: EdgeInsets.all(15),
              child: Center(child: Text("Photographers Contacts",
                  style: TextStyle(fontSize: 16, color:Color(0xff1E90FF), fontWeight: FontWeight.bold)
              ),
              ),
            ),
          ],
        ) : AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff303030),
          actions: const [
            Padding(
              padding: EdgeInsets.all(15),
              child: Center(child: Text("Clients Contacts",
                  style: TextStyle(fontSize: 16, color:Color(0xff1E90FF), fontWeight: FontWeight.bold)
              ),
              ),
            ),
          ],
        ),
        floatingActionButton: Container(
          // padding: EdgeInsets.only(bottom: 100.0),
          child: Align(
              alignment: Alignment.bottomCenter,
              child:  controller.isSelected ? FloatingActionButton(
                child: Icon(Icons.add,size: 40,),
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return StatefulBuilder(
                        builder: (BuildContext context,  Function( Function()) setState) {
                          return Padding(
                            padding: MediaQuery.of(context).viewInsets,
                            // padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Form(
                                key: _formKey,
                                child: Container(
                                  // height: MediaQuery.of(context).size.height,
                                  color: AppColors.teamcard2,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 15),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                              height: 35,
                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:  AppColors.AppbtnColor),
                                              width: MediaQuery.of(context).size.width/1.9,
                                              child: Center(child: Text("Photographer", style: TextStyle(fontSize: 18, color: AppColors.textclr)))
                                          ),
                                          SizedBox(height: 15,),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context).size.width/2.2,
                                                  // height: 40,
                                                  padding: EdgeInsets.symmetric(vertical: 0),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(5),
                                                      color: AppColors.cardclr),
                                                  child: TextFormField(
                                                    style: TextStyle(color: AppColors.textclr),
                                                    controller:controller.firstnameController,
                                                    keyboardType: TextInputType.name,
                                                    validator: (val) {
                                                      if (val!.isEmpty) {
                                                        return 'Please Enter Firstname';
                                                      }
                                                    },
                                                    decoration: InputDecoration(
                                                        hintText: 'First Name',hintStyle: TextStyle(color: AppColors.textclr,fontSize: 14),
                                                        border: InputBorder.none,
                                                        contentPadding: EdgeInsets.only(left: 10,bottom: 16)
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context).size.width/2.2,
                                                  // height: 40,
                                                  padding: EdgeInsets.symmetric(vertical: 0),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(5),
                                                      color: AppColors.cardclr),
                                                  child: Center(
                                                    child: TextFormField(
                                                      style: TextStyle(color: AppColors.textclr),
                                                      controller: controller.lastnameController,
                                                      keyboardType: TextInputType.name,
                                                      validator: (value) => value!.isEmpty ? 'Lastname cannot be blank':null,
                                                      decoration: InputDecoration(
                                                          hintText: 'Last Name(Surname)',hintStyle: TextStyle(color: AppColors.textclr,fontSize: 14),
                                                          border: InputBorder.none,
                                                          contentPadding: EdgeInsets.only(left: 9,bottom: 17)
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 9,),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width,
                                              // height: 40,
                                              padding: EdgeInsets.symmetric(vertical: 0),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: AppColors.cardclr),
                                              child: TextFormField(
                                                style: TextStyle(color: AppColors.textclr),
                                                controller: controller.mobileController,
                                                keyboardType: TextInputType.number,
                                                maxLength: 10,
                                                validator: (text) {
                                                  if (text == null || text.isEmpty) {
                                                    return 'Can\'t be empty';
                                                  }
                                                  if (text.length < 10) {
                                                    return 'Too short';
                                                  }
                                                  return null;
                                                },
                                                decoration: InputDecoration(
                                                  counterText: "",
                                                    hintText: 'Phone Number',hintStyle: TextStyle(color: AppColors.textclr,fontSize: 14),
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.only(left: 10,bottom: 16)
                                                ),

                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 9,),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width,
                                              // height: 34,
                                              padding: EdgeInsets.symmetric(vertical: 0),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: AppColors.cardclr),
                                              child: TextFormField(
                                                style: TextStyle(color: AppColors.textclr),
                                                controller: controller.cityController,
                                                keyboardType: TextInputType.name,
                                                validator: (value) => value!.isEmpty ? 'City cannot be blank':null,
                                                decoration: InputDecoration(
                                                    hintText: 'City',hintStyle: TextStyle(color: AppColors.textclr,fontSize: 14),
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.only(left: 10,bottom: 16)
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 9,),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                            child: Container(

                                              width: MediaQuery.of(context).size.width,
                                              // height: 34,
                                              padding: EdgeInsets.symmetric(horizontal: 8),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: AppColors.cardclr),
                                              child:DropdownButtonHideUnderline(
                                                child:DropdownButton(
                                                  dropdownColor: AppColors.cardclr,
                                                  // Initial Value
                                                  value: controller.categoryValue,

                                                  isExpanded: true,
                                                  hint: Text("Type Of Photography",style: TextStyle(color: AppColors.textclr),),
                                                  icon: const Icon(Icons.keyboard_arrow_down,color: AppColors.textclr,),
                                                  // Array list of items
                                                  items: controller.typeofPhotographyEvent.map((Categories items) {
                                                    return DropdownMenuItem<Categories>(
                                                      value: items,
                                                      child: Text(items.resName.toString(),style: TextStyle(color: AppColors.textclr),),
                                                    );
                                                  }).toList(),
                                                  // After selecting the desired option,it will
                                                  // change button value to selected value
                                                  onChanged: ( newValue) {
                                                    setState(() {
                                                      controller.categoryValue = newValue;
                                                    });
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 9,),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width,
                                              // height: 34,
                                              padding: EdgeInsets.symmetric(vertical: 0),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: AppColors.cardclr),
                                              child: TextFormField(
                                                style: TextStyle(color: AppColors.textclr),
                                                controller: controller.companyController,
                                                keyboardType: TextInputType.name,
                                                validator: (value) => value!.isEmpty ? 'City cannot be blank':null,

                                                decoration: InputDecoration(
                                                    hintText: 'Company Name (Optional)',hintStyle: TextStyle(color: AppColors.textclr,fontSize: 14),
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.only(left: 10,bottom: 16)
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 9,),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width,
                                              // height: 34,
                                              padding: EdgeInsets.symmetric(vertical: 0),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: AppColors.cardclr),
                                              child: TextFormField(
                                                style: TextStyle(color: AppColors.textclr),
                                                controller: controller.perdayController,
                                                keyboardType: TextInputType.name,
                                                validator: (value) => value!.isEmpty ? 'City cannot be blank':null,

                                                decoration: InputDecoration(
                                                    hintText: 'Add Per Day Charges',hintStyle: TextStyle(color: AppColors.textclr,fontSize: 14),
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.only(left: 10,bottom: 16)
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 40,),
                                          InkWell(
                                            onTap: (){
                                              print("plese_enterrrrrrrrrrrr__________");
                                              if (_formKey.currentState!.validate()) {
                                                controller.AddPhotographerr();
                                                Get.back();
                                              }
                                            },
                                            child: Container(
                                                height: 55,
                                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:  AppColors.pdfbtn),
                                                width: MediaQuery.of(context).size.width/1.5,
                                                child: Center(child: Text("Add", style: TextStyle(fontSize: 18, color: AppColors.textclr)))
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ) :  FloatingActionButton(
                child: Icon(Icons.add,size: 40,),
                onPressed: () {
                  showModalBottomSheet<void>(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return SingleChildScrollView(
                        child: Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          // padding: const EdgeInsets.all(8.0),
                          child: Form(
                            key: _formKey,
                            child: Container(
                              // height: MediaQuery.of(context).size.height,
                              color: AppColors.teamcard2,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 15),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          height: 35,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:  AppColors.AppbtnColor),
                                          width: MediaQuery.of(context).size.width/2.5,
                                          child: Center(child: Text("Client", style: TextStyle(fontSize: 18, color: AppColors.textclr)))
                                      ),
                                      SizedBox(height: 15,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context).size.width/2.2,
                                              // height: 34,
                                              padding: EdgeInsets.symmetric(vertical: 0),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: AppColors.cardclr),
                                              child: TextFormField(
                                                style: TextStyle(color: AppColors.textclr),
                                                controller: controller.firstnameController,
                                                keyboardType: TextInputType.name,
                                                validator: (value) => value!.isEmpty ? 'Firstname cannot be blank':null,
                                                decoration: InputDecoration(
                                                    hintText: 'First Name',hintStyle: TextStyle(color: AppColors.textclr,fontSize: 14),
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.only(left: 10,bottom: 16)
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width/2.2,
                                              // height: 34,
                                              padding: EdgeInsets.symmetric(vertical: 0),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: AppColors.cardclr),
                                              child: Center(
                                                child: TextFormField(
                                                  style: TextStyle(color: AppColors.textclr),
                                                  controller: controller.lastnameController,
                                                  keyboardType: TextInputType.name,
                                                  validator: (value) => value!.isEmpty ? 'Lastname cannot be blank':null,
                                                  decoration: InputDecoration(
                                                      hintText: 'Last Name(Surname)',hintStyle: TextStyle(color: AppColors.textclr,fontSize: 14),
                                                      border: InputBorder.none,
                                                      contentPadding: EdgeInsets.only(left: 9,bottom: 17)
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 9,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          // height: 34,
                                          padding: EdgeInsets.symmetric(vertical: 0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: AppColors.cardclr),
                                          child: TextFormField(
                                            style: TextStyle(color: AppColors.textclr),
                                            controller: controller.mobileController,
                                            keyboardType: TextInputType.number,
                                            validator: (text) {
                                              if (text == null || text.isEmpty) {
                                                return 'Can\'t be empty';
                                              }
                                              if (text.length < 10) {
                                                return 'Too short';
                                              }
                                              return null;
                                            },
                                            maxLength: 10,
                                            decoration: InputDecoration(
                                              counterText: "",
                                                hintText: 'Phone Number',hintStyle: TextStyle(color: AppColors.textclr,fontSize: 14),
                                                border: InputBorder.none,
                                                contentPadding: EdgeInsets.only(left: 10,bottom: 16)
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 9,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          // height: 34,
                                          padding: EdgeInsets.symmetric(vertical: 0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: AppColors.cardclr),
                                          child: TextFormField(
                                            style: TextStyle(color: AppColors.textclr),
                                            controller: controller.cityController,
                                            keyboardType: TextInputType.name,
                                            validator: (value) => value!.isEmpty ? 'City cannot be blank':null,

                                            decoration: InputDecoration(
                                                hintText: 'City',hintStyle: TextStyle(color: AppColors.textclr,fontSize: 14),
                                                border: InputBorder.none,
                                                contentPadding: EdgeInsets.only(left: 10,bottom: 16)
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 40,),

                                      InkWell(
                                        onTap: (){
                                          if(_formKey.currentState!.validate()) {
                                            controller.AddClient();
                                            Get.back();
                                          }
                                        },
                                        child: Container(
                                            height: 55,
                                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:  AppColors.pdfbtn),
                                            width: MediaQuery.of(context).size.width/1.5,
                                            child: Center(child: Text("Add", style: TextStyle(fontSize: 18, color: AppColors.textclr)))
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              )
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.containerclr,
                          borderRadius: BorderRadius.circular(10)),

                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                            controller. getClientPhotographer();

                              setState(() {
                                controller.isSelected = true;
                              });
                            },
                            child: Container(
                                height: 40,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, right: 10),
                                  child: Text(
                                    'Photographers',
                                    style: TextStyle(
                                      color: controller.isSelected
                                          ? Color(0xffffffff)
                                          : Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: controller.isSelected
                                      ? AppColors.AppbtnColor
                                      : AppColors.containerclr,
                                  // border: Border.all(color: AppColors.AppbtnColor),
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              controller. getClientPhotographer();

                              setState(() {
                                // Navigator.of(context).push(MaterialPageRoute(
                                //   builder: (context) => NextPage(),
                                // ));
                                controller.isSelected = false;
                              });
                            },
                            child: Container(
                                height: 40,
                                width: 90,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, right: 10),
                                  child: Text(
                                    'Clients',
                                    style: TextStyle(
                                      color: controller.isSelected
                                          ? AppColors.whit
                                          : Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: controller.isSelected
                                        ? AppColors.containerclr
                                        : AppColors.AppbtnColor,
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ],
                      ),)

                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Card(
                    color:  AppColors.darkblakcolor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      controller:controller.searchController,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: 'Name, City Type of Photographers Company Name'),
                      onChanged: (value) {
                        controller.searchTypes(value);
                      },
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                controller.isSelected ? _phptographers() : _clients(),
              ],
            ),
          ),
        ),
      );
    },);
  }
  void validateAndSave(){
    final form = _formKey.currentState;
    if(form!.validate())
    {
      print ('Form is valid');
    }
    else
    {
      print('form is invalid');
    }
  }
  String? get _errorText {
    // at any time, we can get the text from _controller.value.text
    final text = _controller.value.text;
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code
    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 4) {
      return 'Too short';
    }
    // return null if the text is valid
    return null;
  }


}
