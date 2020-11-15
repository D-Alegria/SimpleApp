import 'package:application_test_1/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

final String logo = "assets/logo.svg";
final String backArrow = "assets/arrow.svg";
final String cards = "assets/cards-icon.svg";
final String add = "assets/add.svg";
final String history = "assets/history.svg";
final String account = "assets/account.svg";
final String freeze = "assets/freeze.svg";
final String withdraw = "assets/withdraw.svg";
final String visa = "assets/visa.svg";
final String eye = "assets/eye.svg";
final String up = "assets/incoming-transaction.svg";
final String down = "assets/outbound-transaction.svg";

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: MaterialApp(
        home: CardPage(),
      ),
    );
  }
}

class CardPage extends StatelessWidget {
  const CardPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        leading: IconButton(
          icon: SvgPicture.asset(
            backArrow,
            width: SizeConfig.textSize(context, 8),
            color: Color(0xFF13073E),
            semanticsLabel: 'Home',
          ),
          onPressed: () {},
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.xMargin(context, 5.5)),
            child: ListView(
              children: [
                Header(),
                SizedBox(height: SizeConfig.yMargin(context, 5)),
                Card(),
                SizedBox(height: SizeConfig.yMargin(context, 3)),
                Buttons(),
                SizedBox(height: SizeConfig.yMargin(context, 4)),
                TransactionList(),
                SizedBox(height: SizeConfig.yMargin(context, 15)),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.yMargin(context, 2)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: Offset(2, 2),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildIcon(context, Color(0xFF13073E).withOpacity(0.3), logo,
                      "Home"),
                  buildIcon(context, Color(0xFF13073E), cards, "Cards"),
                  buildIcon(context, Color(0xFF13073E).withOpacity(0.3),
                      history, "History"),
                  buildIcon(context, Color(0xFF13073E).withOpacity(0.3),
                      account, "Account"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIcon(
      BuildContext context, Color color, String icon, String text) {
    return Column(
      children: [
        SvgPicture.asset(
          icon,
          height: SizeConfig.textSize(context, 6),
          color: color,
          semanticsLabel: 'Home',
        ),
        SizedBox(height: SizeConfig.yMargin(context, 1)),
        Text(
          text,
          style: GoogleFonts.rubik(
            fontSize: SizeConfig.textSize(context, 4),
            fontWeight: FontWeight.w500,
            color: color,
          ),
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "My Dollar Card 💸",
          style: GoogleFonts.rubik(
            fontSize: SizeConfig.textSize(context, 7),
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          child: SvgPicture.asset(
            add,
            height: SizeConfig.textSize(context, 18),
            color: Colors.white,
            semanticsLabel: 'Add',
          ),
          decoration: BoxDecoration(
            color: Color(0xFF13073e),
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
          ),
        )
      ],
    );
  }
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF13073e),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      height: SizeConfig.yMargin(context, 28),
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.yMargin(context, 3),
        horizontal: SizeConfig.xMargin(context, 5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "\$ 230.20",
                style: GoogleFonts.rubik(
                  fontSize: SizeConfig.textSize(context, 7.5),
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFf0c12b),
                ),
              ),
              SvgPicture.asset(
                visa,
                semanticsLabel: 'Visa',
              ),
            ],
          ),
          SizedBox(height: SizeConfig.yMargin(context, 6.5)),
          Text(
            "4056 3679 2390 1232",
            style: GoogleFonts.rubik(
              fontSize: SizeConfig.textSize(context, 5.5),
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 2)),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: RichText(
                  text: TextSpan(
                    text: "CARD HOLDER",
                    style: GoogleFonts.rubik(
                      fontSize: SizeConfig.textSize(context, 2),
                      color: Color(0xFFbfc5ff),
                      height: SizeConfig.textSize(context, 0.4),
                    ),
                    children: [
                      TextSpan(
                        text: "\nMBA UCHENNA",
                        style: GoogleFonts.rubik(
                          fontSize: SizeConfig.textSize(context, 3.8),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 7),
              Expanded(
                flex: 2,
                child: RichText(
                  text: TextSpan(
                    text: "VALID THRU",
                    style: GoogleFonts.rubik(
                      fontSize: SizeConfig.textSize(context, 2),
                      color: Color(0xFFbfc5ff),
                      height: SizeConfig.textSize(context, 0.4),
                    ),
                    children: [
                      TextSpan(
                        text: "\n05/22",
                        style: GoogleFonts.rubik(
                          fontSize: SizeConfig.textSize(context, 3.8),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(left: SizeConfig.xMargin(context, 7)),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.1),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        eye,
                        height: SizeConfig.textSize(context, 10),
                        color: Colors.white,
                        semanticsLabel: 'Add',
                      ),
                      Text(
                        "CSC",
                        style: GoogleFonts.rubik(
                          fontSize: SizeConfig.textSize(context, 3.8),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ButtonTheme(
            height: SizeConfig.yMargin(context, 7),
            child: RaisedButton(
              onPressed: () {},
              color: Color(0xFF13073e).withOpacity(0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    freeze,
                    height: SizeConfig.textSize(context, 5),
                    semanticsLabel: 'Freeze',
                    color: Color(0xFF13073e).withOpacity(0.3),
                  ),
                  SizedBox(width: SizeConfig.xMargin(context, 2)),
                  Text(
                    "Freeze",
                    style: GoogleFonts.rubik(
                      fontSize: SizeConfig.textSize(context, 4),
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF13073E),
                    ),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 0,
            ),
          ),
        ),
        SizedBox(width: SizeConfig.xMargin(context, 5)),
        Expanded(
          child: ButtonTheme(
            height: SizeConfig.yMargin(context, 7),
            child: RaisedButton(
              onPressed: () {},
              color: Color(0xFF13073e).withOpacity(0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    withdraw,
                    height: SizeConfig.textSize(context, 5),
                    semanticsLabel: 'withdraw',
                    color: Color(0xFF13073e).withOpacity(0.3),
                  ),
                  SizedBox(width: SizeConfig.xMargin(context, 2)),
                  Text(
                    "Withdraw",
                    style: GoogleFonts.rubik(
                      fontSize: SizeConfig.textSize(context, 4),
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF13073E),
                    ),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 0,
            ),
          ),
        ),
      ],
    );
  }
}

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.yMargin(context, 65),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Dollar Card Transaction",
            style: GoogleFonts.rubik(
              fontSize: SizeConfig.textSize(context, 4),
              color: Color.fromRGBO(19, 7, 62, 0.3),
            ),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 2)),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return index % 2 == 0
                    ? Container(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              up,
                              semanticsLabel: 'Home',
                              height: SizeConfig.textSize(context, 13),
                            ),
                            SizedBox(width: SizeConfig.xMargin(context, 4)),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text: "Card Funding",
                                    style: GoogleFonts.rubik(
                                      fontSize: SizeConfig.textSize(context, 5),
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF150640),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "\n\$23.99 • 12th May",
                                        style: GoogleFonts.rubik(
                                          fontSize:
                                              SizeConfig.textSize(context, 4.2),
                                          color: Color.fromRGBO(23, 4, 65, 0.5),
                                        ),
                                      ),
                                    ]),
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromRGBO(191, 197, 255, 0.2),
                              width: 2,
                            ),
                          ),
                        ),
                        height: SizeConfig.yMargin(context, 10),
                      )
                    : Container(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              down,
                              semanticsLabel: 'Home',
                              height: SizeConfig.textSize(context, 13),
                            ),
                            SizedBox(width: SizeConfig.xMargin(context, 4)),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text: "Apple/US Monthly Bill",
                                    style: GoogleFonts.rubik(
                                      fontSize: SizeConfig.textSize(context, 5),
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF150640),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "\n\$0.99 • 9th May",
                                        style: GoogleFonts.rubik(
                                          fontSize:
                                              SizeConfig.textSize(context, 4.2),
                                          color: Color.fromRGBO(23, 4, 65, 0.5),
                                        ),
                                      ),
                                    ]),
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromRGBO(191, 197, 255, 0.2),
                              width: 2,
                            ),
                          ),
                        ),
                        height: SizeConfig.yMargin(context, 10),
                      );
              },
              separatorBuilder: (context, index) => SizedBox(height: 5),
              itemCount: 5,
            ),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 2)),
          Align(
            alignment: Alignment.center,
            child: Text(
              "View more",
              textAlign: TextAlign.center,
              style: GoogleFonts.rubik(
                fontSize: 15,
                color: Color(0xFF4650e5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
