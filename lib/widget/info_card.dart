import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:coronavirus/localization/localization_methods.dart';

import 'line_chart.dart';

class InfoCard extends StatelessWidget {

  final String title;
  final int effectedNum;
  final Color iconColor;
  final Function press;
  final Color cardColor;
  final Map  historyData;

  const InfoCard({Key key, this.title, this.effectedNum, this.iconColor, this.press, this.cardColor, this.historyData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context , constraints) {
          return Container(
            margin: EdgeInsets.all(5),
            child: GestureDetector(
              onTap: press,
              child: Container(
                width: (MediaQuery.of(context).size.width / 2) - 10,
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                  alignment: Alignment.center,
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: iconColor.withOpacity(0.12),
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/sneeze.svg",
                                    height: 10,
                                    width: 10,
                                    color: iconColor,
                                  ),
                                ),
                            Text(
                              getTranslated(context, title),
                              style: TextStyle(fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(color: Color(0xFF1E2432)),
                                  children: [
                                    TextSpan(
                                      text: "$effectedNum \n",
                                      style: Theme.of(context).textTheme.headline.copyWith(fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: getTranslated(context, "People"),
                                      style: TextStyle(
                                          fontSize: 12,
                                          height: 2,
                                      ),
                                    ),
                                  ]
                                ),
                              ) ,
                            ),
                            Expanded(
                              child: LineChartReport(
                                historyData: historyData,
                                title: this.title,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}
