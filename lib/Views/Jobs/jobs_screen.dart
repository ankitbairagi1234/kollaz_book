

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../Utils/colors.dart';
import '../Add_Quotation/MoreQuatations.dart';
import '../Add_Quotation/edite_client_job.dart';
import '../freelancing_job/add_newJob.dart';
import '../freelancing_job/edit_job.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {

  bool isClickable = true;
  bool isSelected = false;


  Widget _client() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff8B8B8B)
              ),
              child: const Center(child: Text("All Jobs", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16))),
            ),
            SizedBox(width: 15,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff8B8B8B)
              ),
              child: const Center(child: Text("Upcoming Jobs", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),)),
            ),
          ],
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 10.0,right: 10),
          child: Container(
            height: 90,
            width: MediaQuery.of(context).size.width/1.1,

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff3B3B3B)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Date", style: TextStyle(fontSize: 14, color: Color(0xffFFFFFF))),
                  GestureDetector(
                    onTap: (){
                   _selectDate(context);
                    },
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff8B8B8B),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children:  [
                          Text(
                            selectedDate != null
                                ? ' ${DateFormat('yyyy-MM-dd').format(selectedDate!)}'
                                : 'Select Start Date',style: TextStyle(color: AppColors.textclr,fontSize: 12),
                          ),
                          SizedBox(width: 10,),
                          Icon(
                            Icons.calendar_month, color: Colors.black, size: 20,),
                        ],
                      ),
                    ),
                  ),
                  const Text("To",style: TextStyle(fontSize: 14, color: Color(0xffFFFFFF))),
                  GestureDetector(
                    onTap: (){
                      _selectendDate(context);
                    },
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff8B8B8B),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children:  [
                          Text(
                            selectendDate != null
                                ? ' ${DateFormat('yyyy-MM-dd').format(selectendDate!)}'
                                : 'Select End Date',style: TextStyle(color: AppColors.textclr,fontSize: 12),
                          ),
                          SizedBox(width: 10,),
                          Icon(
                            Icons.calendar_month, color: Colors.black, size: 20,),
                        ],
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 40,
                  //   padding: EdgeInsets.symmetric(horizontal: 8),
                  //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff8B8B8B),
                  //   ),
                  //   child: Row(
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: const [
                  //       Text("Select Start Date", style: TextStyle(fontSize: 12, color: Color(0xffFFFFFF)),),
                  //       SizedBox(width: 10,),
                  //       Icon(
                  //         Icons.calendar_month, color: Colors.black, size: 20,),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 5,),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>EditClientJob()));
          },
          child: Container(
            height: 140,
            width: MediaQuery.of(context).size.width/1.1,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.black12,
              elevation: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Job ID",style: TextStyle(color: AppColors.AppbtnColor),),
                        Text("KB003",style: TextStyle(color: AppColors.darkblack, decoration: TextDecoration.underline,),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Date",style: TextStyle(color: AppColors.AppbtnColor),),
                        Text("28/April/2023",style: TextStyle(color: AppColors.whit),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Client Name",style: TextStyle(color: AppColors.AppbtnColor),),
                        Text("Kinjal Patel",style: TextStyle(color: AppColors.whit),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Event  ",style: TextStyle(color: AppColors.AppbtnColor),),
                        Text("Wedding",style: TextStyle(color: AppColors.whit),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Venue",style: TextStyle(color: AppColors.AppbtnColor),),
                        Text("Mumbai",style: TextStyle(color: AppColors.whit),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _freelancing() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff8B8B8B)
              ),
              child: const Center(child: Text("All Jobs", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16))),
            ),
            SizedBox(width: 15,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff8B8B8B)
              ),
              child: const Center(child: Text("Upcoming Jobs", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),)),
            ),
          ],
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 10.0,right: 10),
          child: Container(
            height: 90,
            width: MediaQuery.of(context).size.width/1.1,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff3B3B3B)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Date", style: TextStyle(fontSize: 14, color: Color(0xffFFFFFF))),
                  GestureDetector(
                    onTap: (){
                      _selectDate(context);
                    },
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff8B8B8B),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children:  [
                          Text(
                            selectedDate != null
                                ? ' ${DateFormat('yyyy-MM-dd').format(selectedDate!)}'
                                : 'Select Start Date',style: TextStyle(color: AppColors.textclr,fontSize: 12),
                          ),
                          SizedBox(width: 10,),
                          Icon(
                            Icons.calendar_month, color: Colors.black, size: 20,),
                        ],
                      ),
                    ),
                  ),
                  const Text("To",style: TextStyle(fontSize: 14, color: Color(0xffFFFFFF))),
                  GestureDetector(
                    onTap: (){
                      _selectendDate(context);
                    },
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff8B8B8B),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children:  [
                          Text(
                            selectendDate != null
                                ? ' ${DateFormat('yyyy-MM-dd').format(selectendDate!)}'
                                : 'Select End Date',style: TextStyle(color: AppColors.textclr,fontSize: 12),
                          ),
                          SizedBox(width: 10,),
                          Icon(
                            Icons.calendar_month, color: Colors.black, size: 20,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 5,),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>freelancing_job_update()));
          },
          child: Container(
            height: 140,
            width: MediaQuery.of(context).size.width/1.1,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.black12,
              elevation: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Job ID",style: TextStyle(color: AppColors.AppbtnColor),),
                        Text("KB003",style: TextStyle(color: AppColors.secondary, decoration: TextDecoration.underline,),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Date",style: TextStyle(color: AppColors.AppbtnColor),),
                        Text("28/April/2023",style: TextStyle(color: AppColors.whit),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Client Name",style: TextStyle(color: AppColors.AppbtnColor),),
                        Text("Kinjal Patel",style: TextStyle(color: AppColors.whit),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Event  ",style: TextStyle(color: AppColors.AppbtnColor),),
                        Text("Wedding",style: TextStyle(color: AppColors.whit),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Venue",style: TextStyle(color: AppColors.AppbtnColor),),
                        Text("Mumbai",style: TextStyle(color: AppColors.whit),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 5,),
        Container(
          height: 140,
          width: MediaQuery.of(context).size.width/1.1,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.black12,
            elevation: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Job ID",style: TextStyle(color: AppColors.AppbtnColor),),
                      Text("KB003",style: TextStyle(color: AppColors.secondary, decoration: TextDecoration.underline,),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Date",style: TextStyle(color: AppColors.AppbtnColor),),
                      Text("28/April/2023",style: TextStyle(color: AppColors.whit),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Client Name",style: TextStyle(color: AppColors.AppbtnColor),),
                      Text("Kinjal Patel",style: TextStyle(color: AppColors.whit),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Event  ",style: TextStyle(color: AppColors.AppbtnColor),),
                      Text("Wedding",style: TextStyle(color: AppColors.whit),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Venue",style: TextStyle(color: AppColors.AppbtnColor),),
                      Text("Mumbai",style: TextStyle(color: AppColors.whit),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5,),
        Container(
          height: 140,
          width: MediaQuery.of(context).size.width/1.1,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.black12,
            elevation: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Job ID",style: TextStyle(color: AppColors.AppbtnColor),),
                      Text("KB003",style: TextStyle(color: AppColors.secondary, decoration: TextDecoration.underline,),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Date",style: TextStyle(color: AppColors.AppbtnColor),),
                      Text("28/April/2023",style: TextStyle(color: AppColors.whit),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Client Name",style: TextStyle(color: AppColors.AppbtnColor),),
                      Text("Kinjal Patel",style: TextStyle(color: AppColors.whit),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Event  ",style: TextStyle(color: AppColors.AppbtnColor),),
                      Text("Wedding",style: TextStyle(color: AppColors.whit),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Venue",style: TextStyle(color: AppColors.AppbtnColor),),
                      Text("Mumbai",style: TextStyle(color: AppColors.whit),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

    DateTime? selectedDate;
    DateTime? selectendDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(

      context: context,

      initialDate: selectedDate ?? DateTime.now(),

      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
  Future<void> _selectendDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(

      context: context,

      initialDate: selectendDate ?? DateTime.now(),

      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != selectendDate) {
      setState(() {
        selectendDate = picked;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: isSelected ? Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MoreQuatations()));
              },
              child: Container(
                height: 50,
                width: 190,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Color(0xff40ACFF)
                ),
                child: Center(
                  child: Text("Make Quotations",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.whit)),
                ),
              ),
            ),
            Image.asset("assets/images/pdf.png", scale: 1.6,),
          ],
        ),
      ) : Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => addNewJob()));
              },
              child: Container(
                height: 50,
                width: 190,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Color(0xff40ACFF)
                ),
                child: Center(
                  child: Text("Add New Job",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.whit)),
                ),
              ),
            ),
            Image.asset("assets/images/pdf.png", scale: 1.6,),
          ],
        ),
      ),
      backgroundColor: AppColors.backgruond,
       appBar: isSelected ? AppBar(
         automaticallyImplyLeading: false,
         backgroundColor: Color(0xff303030),
         actions: [
           Padding(
             padding: const EdgeInsets.all(15),
             child: Center(child: Text("Clients Jobs",
               style: TextStyle(fontSize: 16, color:Color(0xff1E90FF), fontWeight: FontWeight.bold)
             )),
           ),
         ],
       ) : AppBar(
         automaticallyImplyLeading: false,
         backgroundColor: Color(0xff303030),
         actions: [
           Padding(
             padding: const EdgeInsets.all(15),
             child: Center(child: Text("Freelancing Jobs",
                 style: TextStyle(fontSize: 16, color:Color(0xff1E90FF), fontWeight: FontWeight.bold)
             )),
           ),
         ],
       ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 15,),
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
                            setState(() {
                              isSelected = true;
                            });
                          },
                          child: Container(
                              height: 50,
                              width: 120,
                              child: Center(
                                child: Text(
                                  'Client',
                                  style: TextStyle(
                                    color: isSelected
                                        ? Color(0xffffffff)
                                        : Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColors.AppbtnColor
                                    : AppColors.containerclr,
                                // border: Border.all(color: AppColors.AppbtnColor),
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //   builder: (context) => NextPage(),
                              // ));
                              isSelected = false;
                            });
                          },
                          child: Container(
                              height: 50,
                              width: 130,
                              child: Center(
                                child: Text(
                                  'Freelancing',
                                  style: TextStyle(
                                    color: isSelected
                                        ? AppColors.whit
                                        : Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: isSelected
                                      ? AppColors.containerclr
                                      : AppColors.AppbtnColor,
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ],
                    ),)

                ],
              ),
              // Center(
              //   child: Column(
              //     // crossAxisAlignment: CrossAxisAlignment.center,
              //     // mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       SizedBox(height: 15),
              //       ToggleSwitch(
              //         initialLabelIndex: 0,
              //         minHeight: 50.0,
              //         minWidth: 100.0,
              //         activeBgColor: [Color(0xff42ACFE)],
              //         activeFgColor: Color(0xff42ACFE),
              //         customTextStyles: const [
              //           TextStyle(
              //             color: Color(0xffFFFFFF),
              //               fontSize: 15.0
              //           ),
              //         ],
              //         // multiLineText: true,
              //         // centerText: true,
              //         totalSwitches: 2,
              //         labels: ['Client', 'Freelancing'],
              //         onToggle: (index) {
              //           print('switched to: $index');
              //         },
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(height: 15,),
              isSelected ? _client() : _freelancing(),

            ],
          ),
        ),
      ),
    );
  }
}
