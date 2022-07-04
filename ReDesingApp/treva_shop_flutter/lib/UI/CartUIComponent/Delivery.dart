
import 'package:treva_shop_flutter/Library/Language_Library/lib/easy_localization_delegate.dart';
import 'package:treva_shop_flutter/Library/Language_Library/lib/easy_localization_provider.dart';
import 'package:flutter/material.dart';
import 'package:treva_shop_flutter/UI/BottomNavigationBar.dart';
import 'package:treva_shop_flutter/UI/CartUIComponent/Payment.dart';

class delivery extends StatefulWidget {
  @override
  _deliveryState createState() => _deliveryState();
}

class _deliveryState extends State<delivery> {
  @override
  Widget build(BuildContext context) {
        var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
          data: data,
          child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.of(context).pop(false);
              },
              child: Icon(Icons.arrow_back)),
          elevation: 0.0,
          title: Text(
            AppLocalizations.of(context).tr('deliveryAppBar'),
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
                color: Colors.black54,
                fontFamily: "Gotik"),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color(0xFF6991C7)),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  Text(
                   AppLocalizations.of(context).tr('deliveryLocation'),
                    style: TextStyle(
                        letterSpacing: 0.1,
                        fontWeight: FontWeight.w600,
                        fontSize: 25.0,
                        color: Colors.black54,
                        fontFamily: "Gotik"),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50.0)),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: AppLocalizations.of(context).tr('pinCode'),
                        hintText: AppLocalizations.of(context).tr('pinCode'),
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText:AppLocalizations.of(context).tr('locality'),
                        hintText: AppLocalizations.of(context).tr('locality'),
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: AppLocalizations.of(context).tr('city'),
                        hintText: AppLocalizations.of(context).tr('city'),
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: AppLocalizations.of(context).tr('state'),
                        hintText: AppLocalizations.of(context).tr('state'),
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                  Padding(padding: EdgeInsets.only(top: 80.0)),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => payment()));
                    },
                    child: Container(
                      height: 55.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          color: Colors.indigoAccent,
                          borderRadius: BorderRadius.all(Radius.circular(40.0))),
                      child: Center(
                        child: Text(
                          AppLocalizations.of(context).tr('goPayment'),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.5,
                              letterSpacing: 1.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
