import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

final String logo = "assets/logo.svg";
final String cards = "assets/cards-icon.svg";
final String history = "assets/history.svg";
final String account = "assets/account.svg";
final String freeze = "assets/freeze.svg";
final String withdraw = "assets/withdraw.svg";
final String visa = "assets/visa.svg";
final String up = "assets/incoming-transaction.svg";
final String down = "assets/outbound-transaction.svg";

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            brightness: Brightness.light,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
          backgroundColor: Colors.white,
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                Header(),
                SizedBox(height: 15),
                Card(),
                SizedBox(height: 20),
                Buttons(),
                SizedBox(height: 20),
                TransactionList(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: TextStyle(
              fontSize: 10,
              height: 2,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 10,
              height: 2,
              fontWeight: FontWeight.w500,
            ),
            backgroundColor: Colors.white,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xFF13073e),
            unselectedItemColor: Color(0xFF13073E).withOpacity(0.3),
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: SvgPicture.asset(
                  logo,
                  height: 20,
                  color: Color(0xFF13073E).withOpacity(0.3),
                  semanticsLabel: 'Home',
                ),
                activeIcon: SvgPicture.asset(
                  logo,
                  height: 20,
                  color: Color(0xFF13073E),
                  semanticsLabel: 'Home Page',
                ),
              ),
              BottomNavigationBarItem(
                label: "Cards",
                icon: SvgPicture.asset(
                  cards,
                  height: 20,
                  color: Color(0xFF13073E).withOpacity(0.3),
                  semanticsLabel: 'Home',
                ),
                activeIcon: SvgPicture.asset(
                  cards,
                  height: 20,
                  color: Color(0xFF13073E),
                  semanticsLabel: 'Home Page',
                ),
              ),
              BottomNavigationBarItem(
                label: "History",
                icon: SvgPicture.asset(
                  history,
                  height: 20,
                  color: Color(0xFF13073E).withOpacity(0.3),
                  semanticsLabel: 'Home',
                ),
                activeIcon: SvgPicture.asset(
                  history,
                  height: 20,
                  color: Color(0xFF13073E),
                  semanticsLabel: 'Home Page',
                ),
              ),
              BottomNavigationBarItem(
                label: "Account",
                icon: SvgPicture.asset(
                  account,
                  height: 20,
                  color: Color(0xFF13073E).withOpacity(0.3),
                  semanticsLabel: 'Home',
                ),
                activeIcon: SvgPicture.asset(
                  account,
                  height: 20,
                  color: Color(0xFF13073E),
                  semanticsLabel: 'Home Page',
                ),
              ),
            ],
            currentIndex: 1,
          ),
        ),
      ),
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
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 60,
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
      height: 190,
      padding: EdgeInsets.all(20),
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
                  fontSize: 30,
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
          SizedBox(height: 40),
          Text(
            "4056 3679 2390 1232",
            style: GoogleFonts.rubik(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: RichText(
                  text: TextSpan(
                    text: "CARD HOLDER",
                    style: GoogleFonts.rubik(
                      fontSize: 8,
                      color: Color(0xFFbfc5ff),
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: "\nMBA UCHENNA",
                        style: GoogleFonts.rubik(
                          fontSize: 12,
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
                      fontSize: 8,
                      color: Color(0xFFbfc5ff),
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: "\n05/22",
                        style: GoogleFonts.rubik(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(),
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
            height: 50,
            child: RaisedButton(
              onPressed: () {},
              color: Color(0xFF13073e).withOpacity(0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    freeze,
                    height: 15,
                    semanticsLabel: '',
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Freeze",
                    style: GoogleFonts.rubik(
                      fontSize: 17,
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
        SizedBox(width: 10),
        Expanded(
          child: ButtonTheme(
            height: 50,
            child: RaisedButton(
              onPressed: () {},
              color: Color(0xFF13073e).withOpacity(0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    withdraw,
                    height: 15,
                    semanticsLabel: '',
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Withdraw",
                    style: GoogleFonts.rubik(
                      fontSize: 17,
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
      height: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Dollar Card Transaction",
            style: GoogleFonts.rubik(
              fontSize: 15,
              color: Color.fromRGBO(19, 7, 62, 0.3),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return index % 2 == 0
                    ? Container(
                        child: Row(
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                up,
                                semanticsLabel: 'Home',
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFF6ab04c).withOpacity(0.2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              padding: EdgeInsets.all(10),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text: "Card Funding",
                                    style: GoogleFonts.rubik(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF150640),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "\n\$23.99 • 12th May",
                                        style: GoogleFonts.rubik(
                                          fontSize: 14,
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
                              color: Colors.black.withOpacity(0.1),
                              width: 2,
                            ),
                          ),
                        ),
                        height: 90,
                      )
                    : Container(
                        child: Row(
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                down,
                                semanticsLabel: 'Home',
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFe02020).withOpacity(0.2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              padding: EdgeInsets.all(10),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text: "Apple/US Monthly Bill",
                                    style: GoogleFonts.rubik(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF150640),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "\n\$0.99 • 9th May",
                                        style: GoogleFonts.rubik(
                                          fontSize: 14,
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
                              color: Colors.black.withOpacity(0.1),
                              width: 2,
                            ),
                          ),
                        ),
                        height: 90,
                      );
              },
              separatorBuilder: (context, index) => SizedBox(height: 5),
              itemCount: 3,
            ),
          ),
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
