import 'package:caed/core/helpers/colors_helpers.dart';
import 'package:caed/core/models/packages_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimelineWidget extends StatelessWidget {
  final PackagesModel? package;

  const TimelineWidget({Key? key, required this.package}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: ColorHelper.hexToColor("#F0F0F0"),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: package?.status.length,
            itemBuilder: (context, index) {
              final event = package?.status[index];
              bool isLastItem = index == package!.status.length - 1;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Text(
                            "${event?.date ?? ""} \n     ${event?.hora ?? ""}",
                            style: GoogleFonts.sora(
                              fontSize: 14,
                              color: ColorHelper.hexToColor("#757575"),
                            ),
                          ),
                          //const SizedBox(height: 40),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 20,
                          width: 1,
                          color: Colors.grey,
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: ColorHelper.colors[index % ColorHelper.colors.length],
                        ),
                        if (!isLastItem)
                          Container(
                            height: 20,
                            width: 1,
                            color: Colors.grey,
                          ),
                        Container(
                          height: 20,
                          width: 1,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12, left: 10),
                        child: Text(
                          event?.status ?? "",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
