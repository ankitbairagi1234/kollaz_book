import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/addQuatation_controller.dart';
import '../../Utils/colors.dart';
import 'Add_new_quotations.dart';
import 'editequotation.dart';

class MoreQuatations extends StatefulWidget {
  const MoreQuatations({Key? key}) : super(key: key);

  @override
  State<MoreQuatations> createState() => _MoreQuatationsState();
}

class _MoreQuatationsState extends State<MoreQuatations> {

  @override


  Widget build(BuildContext context) {
   return GetBuilder(
     init: AddQuatationController(),
     builder: (controller) {
     return Scaffold(
       backgroundColor: AppColors.backgruond,
       appBar: AppBar(
         leading: GestureDetector(
             onTap: (){
               Navigator.pop(context);
             },
             child: Icon(Icons.arrow_back_ios, color:AppColors.AppbtnColor,)),
         backgroundColor: Color(0xff303030),
         actions: [
           Padding(
             padding: const EdgeInsets.all(15),
             child: Center(child: Text("Quotations",
                 style: TextStyle(fontSize: 16, color:Color(0xff1E90FF), fontWeight: FontWeight.bold)
             ),
             ),
           ),
         ],
       ),
       body: SingleChildScrollView(
         child: Form(

           child: Column(
             children: [
               const SizedBox(height: 15,),
               controller.getQuotation != null || controller.getQuotation == " " ?  _quotationCard(context): Center(child: const Text(" No Data To Show")),
               const SizedBox(height: 20,),

               InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => AddQuotation()));
                 },
                 child: Container(
                   height: 50,
                   width: MediaQuery.of(context).size.width/1.2,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Color(0xff40ACFF)
                   ),
                   child: const Center(
                     child: Text("Add New Quotations",
                         style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.whit)),
                   ),
                 ),
               ),
               SizedBox(height: 20,),

             ],
           ),
         ),
       ),
     );
   },);
  }
  Widget _quotationCard(BuildContext context){
    return GetBuilder(
      init: AddQuatationController(),
      builder: (controller) {
      return  ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount:controller.getQuotation.length ,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EditQuotation()));
              },
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: Colors.black12,
                elevation: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("qid",style: TextStyle(color: AppColors.pdfbtn,fontSize: 16,fontWeight: FontWeight.bold),),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 14,vertical: 10),
                              decoration: BoxDecoration(
                                  color: AppColors.lightwhite,

                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Text("${controller.getQuotation[index].qid}",style: TextStyle(color: AppColors.whit,),)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Client Name",style: TextStyle(color: AppColors.pdfbtn,fontWeight: FontWeight.bold,fontSize: 16),),
                          Text("${controller.getQuotation[index].clientName}",style: TextStyle(color: AppColors.whit),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("City",style: TextStyle(color: AppColors.pdfbtn,fontSize: 16,fontWeight: FontWeight.bold),),
                          Text("${controller.getQuotation[index].city}",style: TextStyle(color: AppColors.whit),),
                        ],
                      ),
                    ),
                  ],
                ),),
            ),
          );
        },

      );
    },);

  }
}
