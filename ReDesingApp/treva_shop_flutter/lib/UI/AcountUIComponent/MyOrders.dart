
import 'package:treva_shop_flutter/Library/Language_Library/lib/easy_localization_delegate.dart';
import 'package:treva_shop_flutter/Library/Language_Library/lib/easy_localization_provider.dart';
import 'package:flutter/material.dart';

class order extends StatefulWidget {
  @override
  _orderState createState() => _orderState();
}

class _orderState extends State<order> {

  static var _txtCustom = TextStyle(
    color: Colors.black54,
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    fontFamily: "Gotik",
  );

  /// Create Big Circle for Data Order Not Success
  var _bigCircleNotYet = Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Container(
      height: 20.0,
      width: 20.0,
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        shape: BoxShape.circle,
      ),
    ),
  );

  /// Create Circle for Data Order Success
  var _bigCircle = Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Container(
      height: 20.0,
      width: 20.0,
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 14.0,
        ),
      ),
    ),
  );

  /// Create Small Circle
  var _smallCircle = Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Container(
      height: 3.0,
      width: 3.0,
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        shape: BoxShape.circle,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
        var data = EasyLocalizationProvider.of(context).data;
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return EasyLocalizationProvider(
          data: data,
          child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context).tr('trackMyOrder'),
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
                color: Colors.black54,
                fontFamily: "Gotik"),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Color(0xFF6991C7)),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            width: 800.0,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 25.0,right: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    AppLocalizations.of(context).tr('dateOrder'),
                    style: _txtCustom,
                  ),
                  Padding(padding: EdgeInsets.only(top: 7.0)),
                  Text(
                    AppLocalizations.of(context).tr('orderID'),
                    style: _txtCustom,
                  ),
                  Padding(padding: EdgeInsets.only(top: 30.0)),
                  Text(
                    AppLocalizations.of(context).tr('order'),
                    style: _txtCustom.copyWith(
                        color: Colors.black54,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          _bigCircleNotYet,
                          _smallCircle,
                          _smallCircle,
                          _smallCircle,
                          _smallCircle,
                          _smallCircle,
                          _bigCircle,
                          _smallCircle,
                          _smallCircle,
                          _smallCircle,
                          _smallCircle,
                          _smallCircle,
                          _bigCircle,
                          _smallCircle,
                          _smallCircle,
                          _smallCircle,
                          _smallCircle,
                          _smallCircle,
                          _bigCircle,
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          qeueuItem(
                            icon: "assets/img/bag.png",
                            txtHeader: AppLocalizations.of(context).tr('txtHeader1'),
                            txtInfo: AppLocalizations.of(context).tr('txtInfo1'),
                            time: "11:0",
                            paddingValue: 55.0,
                          ),
                          Padding(padding: EdgeInsets.only(top: 50.0)),
                          qeueuItem(
                            icon: "assets/img/courier.png",
                            txtHeader: AppLocalizations.of(context).tr('txtHeader2'),
                            txtInfo: AppLocalizations.of(context).tr('txtInfo2'),
                            time: "9:50",
                            paddingValue: 16.0,
                          ),
                          Padding(padding: EdgeInsets.only(top: 50.0)),
                          qeueuItem(
                            icon: "assets/img/payment.png",
                            txtHeader: AppLocalizations.of(context).tr('txtHeader3'),
                            txtInfo: AppLocalizations.of(context).tr('txtInfo3'),
                            time: "8:20",
                            paddingValue: 55.0,
                          ),
                          Padding(padding: EdgeInsets.only(top: 50.0)),
                          qeueuItem(
                            icon: "assets/img/order.png",
                            txtHeader: AppLocalizations.of(context).tr('txtHeader4'),
                            txtInfo: AppLocalizations.of(context).tr('txtInfo4'),
                            time: "8:00",
                            paddingValue: 19.0,
                          ),
                        ],
                      ),
                    ],
                  ), /////
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 48.0, bottom: 30.0, left: 0.0, right: 25.0),
                    child: Container(
                      height: 130.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.1),
                              blurRadius: 4.5,
                              spreadRadius: 1.0,
                            )
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset("assets/img/house.png"),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of(context).tr('delivery'),
                                style: _txtCustom.copyWith(
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5.0)),
                              Text(
                                AppLocalizations.of(context).tr('homeWork'),
                                style: _txtCustom.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                    color: Colors.black38),
                              ),
                              Padding(padding: EdgeInsets.only(top: 2.0)),
                              Text(
                                AppLocalizations.of(context).tr('houseNo'),
                                style: _txtCustom.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0,
                                    color: Colors.black38),
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Constructor Data Orders
class qeueuItem extends StatelessWidget {
  @override
  static var _txtCustomOrder = TextStyle(
    color: Colors.black45,
    fontSize: 13.5,
    fontWeight: FontWeight.w600,
    fontFamily: "Gotik",
  );

  String icon, txtHeader, txtInfo, time;
  double paddingValue;

  qeueuItem(
      {this.icon, this.txtHeader, this.txtInfo, this.time, this.paddingValue});

  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 13.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(icon),
              Padding(
                padding: EdgeInsets.only(
                    left: 8.0,
                    right: mediaQueryData.padding.right + paddingValue),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(txtHeader, style: _txtCustomOrder),
                    Text(
                      txtInfo,
                      style: _txtCustomOrder.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                          color: Colors.black38),
                    ),
                  ],
                ),
              ),
              Text(
                time,
                style: _txtCustomOrder..copyWith(fontWeight: FontWeight.w400),
              )
            ],
          ),
        ],
      ),
    );
  }
}
