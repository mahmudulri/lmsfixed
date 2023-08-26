import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lmszai/app/const/color.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 100,
      // color: Colors.red,
      child: Column(
        children: [
          Container(
            height: 150,
            width: screenWidth,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color(0xffE5E8EC),
                          ),
                        ),
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "4.5",
                              style: GoogleFonts.jost(
                                fontWeight: FontWeight.w500,
                                color: AppColors.dark_primaryColor,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            RatingBar.builder(
                              itemSize: 15,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "2390 review",
                              style: GoogleFonts.jost(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff52526C),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //................................. 5 Star...................................//
                            ratingWidget(
                              r_number: 5,
                              percent: 1,
                            ),
                            ratingWidget(
                              r_number: 4,
                              percent: 0.7,
                            ),
                            ratingWidget(
                              r_number: 3,
                              percent: 0.6,
                            ),
                            ratingWidget(
                              r_number: 2,
                              percent: 0.5,
                            ),
                            ratingWidget(
                              r_number: 1,
                              percent: 0.4,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ratingWidget extends StatelessWidget {
  const ratingWidget({
    super.key,
    required this.r_number,
    required this.percent,
  });
  final double r_number;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          r_number.toString(),
          style: GoogleFonts.jost(
            fontWeight: FontWeight.w500,
            color: AppColors.dark_primaryColor,
            fontSize: 14,
          ),
        ),
        RatingBar.builder(
          itemSize: 15,
          initialRating: r_number,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        Expanded(
          child: LinearPercentIndicator(
            barRadius: Radius.circular(5),
            lineHeight: 12.0,
            percent: percent,
            backgroundColor: Color(0xffEEEBEB),
            progressColor: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
