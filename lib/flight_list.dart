import 'package:flutter/material.dart';
import 'package:flutter_flight/CustomShapeClipper.dart';
import 'package:intl/intl.dart';

final Color discountBackgroundColor = Color(0xFFFFE08D);
final Color flightBorderColor = Color(0xFFE6E6E6);
final Color chipBackgroundColor = Color(0xFFF6F6F6);

Color firstColor = Color(0xfff47d15);
Color secondColor = Color(0xffef772c);

const TextStyle dropDownLabelStyle =
    TextStyle(color: Colors.white, fontSize: 16.0);

const TextStyle dropDownMenuItemsStyle =
    TextStyle(color: Colors.black, fontSize: 16.0);

final formatCurrency = new NumberFormat.simpleCurrency();

class FlightListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Search Result"),
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          FlightListTopPart(),
          FlightListBottomPart(),
        ],
      ),
    );
  }
}

class FlightListTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [firstColor, secondColor],
              ),
            ),
            height: 160.0,
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              elevation: 10.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 22.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Boston (BOS)",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 20.0,
                          ),
                          Text(
                            "New York City (JFK)",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.import_export,
                          color: Colors.grey,
                          size: 32.0,
                        ))
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class FlightListBottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Best Deals for Next 6 Months",
            style: dropDownMenuItemsStyle,
          ),
          SizedBox(
            height: 10.0,
          ),
          FlightCard(),
        ],
      ),
    );
  }
}

class FlightCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            border: Border.all(color: flightBorderColor),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      '${formatCurrency.format(4159)}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      '${formatCurrency.format(9999)}',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          decoration: TextDecoration.lineThrough),
                    )
                  ],
                ),

                Row(
                  children: <Widget>[

                  ],
                )
              ],

            ),
          ),
          height: 100.0,
        ),
      ],
    );
  }
}

class FlightDetailChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

