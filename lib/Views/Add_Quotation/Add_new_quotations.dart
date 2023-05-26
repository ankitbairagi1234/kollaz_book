import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:kolazz_book/Views/Add_Quotation/MoreQuatations.dart';

import '../../Controller/addQuatation_controller.dart';
import '../../Models/Type_of_photography_model.dart';
import '../../Utils/colors.dart';

class AddQuotation extends StatefulWidget {
  const AddQuotation({Key? key}) : super(key: key);

  @override
  State<AddQuotation> createState() => _AddQuotationState();
}

class _AddQuotationState extends State<AddQuotation> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: AddQuatationController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.back,
          appBar: AppBar(
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.AppbtnColor,
                )),
            backgroundColor: AppColors.secondary,
            actions: const [
              Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Text("Add New Quotation",
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.AppbtnColor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
            child: SingleChildScrollView(
              child: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.teamcard2,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 0),
                        child: Column(
                          children: [
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //   children: [
                            //     const Text("Auto Q ID",style: TextStyle(color: AppColors.pdfbtn),),
                            //     Padding(
                            //       padding:  EdgeInsets.symmetric(vertical: 8.0,horizontal:0 ),
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //             borderRadius: BorderRadius.circular(10),
                            //             color: AppColors.containerclr2),
                            //         padding: EdgeInsets.symmetric(vertical: 5),
                            //         width: MediaQuery.of(context).size.width/2.1,
                            //         child: const Padding(
                            //           padding: EdgeInsets.all(10.0),
                            //           child: Text("Q001",style: TextStyle(color: AppColors.textclr),),
                            //         ),),
                            //     )
                            //   ],
                            // ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Client Name",
                                  style: TextStyle(color: AppColors.pdfbtn),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors.containerclr2),
                                    // padding: EdgeInsets.symmetric(vertical: 1),
                                    width:
                                        MediaQuery.of(context).size.width / 2.1,
                                    child: TextFormField(
                                      style: const TextStyle(
                                          color: AppColors.textclr),
                                      controller:
                                          controller.clientNameController,
                                      keyboardType: TextInputType.name,
                                      validator: (value) => value!.isEmpty
                                          ? 'Client Name cannot be blank'
                                          : null,
                                      decoration: const InputDecoration(
                                          hintText: 'Enter Client Name',
                                          hintStyle: TextStyle(
                                              color: AppColors.textclr,
                                              fontSize: 14),
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              left: 10, bottom: 6)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "City/Venue",
                                  style: TextStyle(color: AppColors.pdfbtn),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors.containerclr2),
                                    width:
                                        MediaQuery.of(context).size.width / 2.1,
                                    child: TextFormField(
                                      style:
                                          TextStyle(color: AppColors.textclr),
                                      controller: controller.cityController,
                                      keyboardType: TextInputType.name,
                                      validator: (value) => value!.isEmpty
                                          ? 'City cannot be blank'
                                          : null,
                                      decoration: const InputDecoration(
                                          hintText: 'Enter City',
                                          hintStyle: TextStyle(
                                              color: AppColors.textclr,
                                              fontSize: 14),
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              left: 10, bottom: 6)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Event",
                                  style: TextStyle(color: AppColors.pdfbtn),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors.containerclr2),
                                    width:
                                        MediaQuery.of(context).size.width / 2.1,
                                    child: TextFormField(
                                      style:
                                          TextStyle(color: AppColors.textclr),
                                      controller: controller.eventController,
                                      keyboardType: TextInputType.name,
                                      validator: (value) => value!.isEmpty
                                          ? ' Events cannot be blank'
                                          : null,
                                      decoration: InputDecoration(
                                          hintText: 'Enter Events',
                                          hintStyle: TextStyle(
                                              color: AppColors.textclr,
                                              fontSize: 14),
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              left: 10, bottom: 6)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Mobile",
                                  style: TextStyle(color: AppColors.pdfbtn),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors.containerclr2),
                                    width:
                                        MediaQuery.of(context).size.width / 2.1,
                                    child: TextFormField(
                                      style:
                                          TextStyle(color: AppColors.textclr),
                                      controller: controller.mobileController,
                                      keyboardType: TextInputType.number,
                                      maxLength: 10,
                                      validator: (value) => value!.isEmpty
                                          ? ' Mobile cannot be blank'
                                          : null,
                                      decoration: InputDecoration(
                                          counterText: "",
                                          hintText: 'Enter Mobile',
                                          hintStyle: TextStyle(
                                              color: AppColors.textclr,
                                              fontSize: 14),
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              left: 10, bottom: 6)),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              controller.adquatationDate != null
                                  ? Wrap(
                                      runAlignment: WrapAlignment.end,
                                      children: controller.selectedDates
                                          .map(
                                            (e) => Container(
                                              // width: 100,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(8),
                                                    topLeft:
                                                        Radius.circular(8)),
                                                color: AppColors.teamcard2,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0,
                                                        vertical: 8),
                                                child: Container(
                                                  padding: const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 5),
                                                  decoration:
                                                      const BoxDecoration(
                                                    color:
                                                        AppColors.datecontainer,
                                                  ),
                                                  child: Text(
                                                    controller.adquatationDate !=
                                                            null
                                                        ? ' ${DateFormat('yyyy-MM-dd').format(controller.adquatationDate!)}'
                                                        : 'Select Start Date',
                                                    style: const TextStyle(
                                                        color:
                                                            AppColors.textclr,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    )
                                  : Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(8),
                                            topLeft: Radius.circular(8)),
                                        color: AppColors.teamcard2,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 8),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 5),
                                          decoration: const BoxDecoration(
                                            color: AppColors.datecontainer,
                                          ),
                                          child: Text(
                                            controller.adquatationDate != null
                                                ? ' ${DateFormat('yyyy-MM-dd').format(controller.adquatationDate!)}'
                                                : 'Select Date For Bookings',
                                            style: const TextStyle(
                                                color: AppColors.textclr,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: InkWell(
                                  onTap: () {
                                    controller.selectDate(context);
                                  },
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.add_circle_outline,
                                        color: AppColors.temtextclr,
                                        size: 28,
                                      ),
                                      Text(
                                        "Add Date",
                                        style: TextStyle(
                                            color: AppColors.temtextclr,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: AppColors.teamcard2,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "(For Developer User Can Hold/Or To Delete This Row)",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: AppColors.textclr,
                                  fontSize: 12),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 5),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Type Of Photographer",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.textclr,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 165,
                                  child: ListView.builder(
                                    itemCount: controller.up,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 0.0, vertical: 5),
                                        child: Container(
                                          height: 30,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 0),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              color: AppColors.datecontainer),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.0,
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton(
                                              dropdownColor: AppColors.cardclr,
                                              // Initial Value
                                              value: controller
                                                  .typeofPhotographyEvent[index]
                                                  .selectedValue,
                                              isExpanded: true,
                                              hint: const Text(
                                                "Type Of Photography",
                                                style: TextStyle(
                                                    color: AppColors.textclr),
                                              ),
                                              icon: const Icon(
                                                Icons.keyboard_arrow_down,
                                                color: AppColors.textclr,
                                              ),
                                              // Array list of items
                                              items: controller
                                                  .typeofPhotographyEvent
                                                  .map((Categories items) {
                                                return DropdownMenuItem<
                                                    Categories>(
                                                  value: items,
                                                  child: Text(
                                                    items.resName.toString(),
                                                    style: TextStyle(
                                                        color:
                                                            AppColors.textclr),
                                                  ),
                                                );
                                              }).toList(),
                                              // After selecting the desired option,it will
                                              // change button value to selected value
                                              onChanged: (newValue) {
                                                controller.selectValue(
                                                    newValue ?? Categories(),
                                                    index);
                                                controller.update();
                                              },
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Align(
                            alignment: Alignment.center,
                            child: Text(
                              "(For Developer User Can Hold/Or To Delete This Row)",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: AppColors.textclr,
                                  fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              controller.increment();
                            },
                            child: Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.add_circle_outline,
                                    color: AppColors.temtextclr,
                                    size: 30,
                                  ),
                                ),
                                Text(
                                  "Add Type Of Photographer",
                                  style: TextStyle(
                                      color: AppColors.temtextclr,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Output",
                            style: TextStyle(
                                color: AppColors.textclr,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.teamcard,
                                borderRadius: BorderRadius.circular(10)),
                            height: 35,
                            width: MediaQuery.of(context).size.width / 1.7,
                            child: TextFormField(
                              style: TextStyle(color: AppColors.textclr),
                              controller: controller.outputController,
                              keyboardType: TextInputType.name,
                              validator: (value) => value!.isEmpty
                                  ? 'Output cannot be blank'
                                  : null,
                              decoration: InputDecoration(
                                  hintText: '',
                                  hintStyle: TextStyle(
                                      color: AppColors.textclr, fontSize: 14),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.only(left: 10, bottom: 10)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Amount",
                            style: TextStyle(
                                color: AppColors.textclr,
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.teamcard,
                                borderRadius: BorderRadius.circular(10)),
                            height: 35,
                            width: MediaQuery.of(context).size.width / 1.7,
                            child: TextFormField(
                              style: TextStyle(color: AppColors.textclr),
                              controller: controller.amountController,
                              keyboardType: TextInputType.number,
                              validator: (value) => value!.isEmpty
                                  ? 'Amount cannot be blank'
                                  : null,
                              decoration: InputDecoration(
                                  hintText: '',
                                  hintStyle: TextStyle(
                                      color: AppColors.textclr, fontSize: 14),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.only(left: 10, bottom: 10)),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        if (controller.formKey.currentState!.validate()) {
                          controller.addQuatation();
                        }
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => MoreQuatations()));
                      },
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 1.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: AppColors.pdfbtn),
                        child: Center(
                          child: Text("Add",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.whit)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
