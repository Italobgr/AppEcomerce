
import 'package:treva_shop_flutter/Library/Language_Library/lib/easy_localization_delegate.dart';
import 'package:treva_shop_flutter/Library/Language_Library/lib/easy_localization_provider.dart';
import 'package:flutter/material.dart';

/// Custom Text Header
var _txtCustomHead = TextStyle(
  color: Colors.black54,
  fontSize: 17.0,
  fontWeight: FontWeight.w600,
  fontFamily: "Gotik",
);

/// Custom Text Detail
var _txtCustomSub = TextStyle(
  color: Colors.black38,
  fontSize: 13.5,
  fontWeight: FontWeight.w500,
  fontFamily: "Gotik",
);

class creditCardSetting extends StatefulWidget {
  @override
  _creditCardSettingState createState() => _creditCardSettingState();
}

class _creditCardSettingState extends State<creditCardSetting> {
  @override
  Widget build(BuildContext context) {

    MediaQueryData mediaQuery = MediaQuery.of(context);
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
            AppLocalizations.of(context).tr('payment'),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(
                        "assets/img/creditCardVisa.png",
                        height: 220.0,
                        fit: BoxFit.fill,
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: mediaQuery.padding.top + 75.0),
                            child: Text(
                              AppLocalizations.of(context).tr('numberCC'),
                              style: _txtCustomHead.copyWith(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  letterSpacing: 3.5),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: mediaQuery.padding.top + 10.0,
                                left: 20.0,
                                right: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  AppLocalizations.of(context).tr('cardName'),
                                  style:
                                      _txtCustomSub.copyWith(color: Colors.white),
                                ),
                                Text(AppLocalizations.of(context).tr('cvv'),
                                    style: _txtCustomSub.copyWith(
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20.0, right: 40.0, top: 2.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(AppLocalizations.of(context).tr('numberCC'),
                                    style: _txtCustomSub.copyWith(
                                        color: Colors.white)),
                                Text(AppLocalizations.of(context).tr('cvCC'),
                                    style: _txtCustomSub.copyWith(
                                        color: Colors.white)),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 15.0,right: 20.0),
                  child: Text(
                    AppLocalizations.of(context).tr('cardInformation'),
                    style: _txtCustomHead,
                  ),
                ),
                creditCard(),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, left: 15.0, bottom: 10.0,right: 20.0),
                  child: Text(
                    AppLocalizations.of(context).tr('transactionDetail'),
                    style: _txtCustomHead.copyWith(fontSize: 16.0),
                  ),
                ),
                transactionsDetail()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Constructor for Card
class creditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4.5,
                spreadRadius: 1.0,
              )
            ]),
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0, right: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    AppLocalizations.of(context).tr('myPersonal'),
                    style: _txtCustomHead.copyWith(
                        fontSize: 15.0, fontWeight: FontWeight.w600),
                  ),
                  Image.asset(
                    "assets/img/credit.png",
                    height: 30.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 5.0, left: 20.0, right: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).tr('cardNumber'),
                        style: _txtCustomSub,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(AppLocalizations.of(context).tr('numberCC')),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).tr('exp'),
                        style: _txtCustomSub,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text("12/29"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                bottom: 30.0,
                left: 20.0,
                right: 30.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).tr('cardName'),
                        style: _txtCustomSub,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(AppLocalizations.of(context).tr('nameCC')),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).tr('cvv'),
                        style: _txtCustomSub,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(AppLocalizations.of(context).tr('cvCC')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                height: 50.0,
                width: 1000.0,
                color: Colors.blueGrey.withOpacity(0.1),
                child: Center(
                    child: Text(AppLocalizations.of(context).tr('editDetail'),
                        style: _txtCustomHead.copyWith(
                            fontSize: 15.0, color: Colors.blueGrey))))
          ],
        ),
      ),
    );
  }
}

/// Constructor for Transactions
class transactionsDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(
          top: 10.0, left: 15.0, right: 15.0, bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4.5,
              spreadRadius: 1.0,
            )
          ],
        ),
        child: Column(
          children: <Widget>[
            dataTransaction(
              date: AppLocalizations.of(context).tr('datePayment1'),
              item: AppLocalizations.of(context).tr('itemPayment1'),
              price: "\$ 50",
            ),
            dataTransaction(
              date: AppLocalizations.of(context).tr('datePayment2'),
              item: AppLocalizations.of(context).tr('itemPayment2'),
              price: "\$ 1000",
            ),
            dataTransaction(
              date: AppLocalizations.of(context).tr('datePayment3'),
              item: AppLocalizations.of(context).tr('itemPayment3'),
              price: "\$ 2500",
            ),
            dataTransaction(
              date: AppLocalizations.of(context).tr('datePayment4'),
              item: AppLocalizations.of(context).tr('itemPayment4'),
              price: "\$ 50",
            ),
            dataTransaction(
              date: AppLocalizations.of(context).tr('datePayment5'),
              item: AppLocalizations.of(context).tr('itemPayment5'),
              price: "\$ 50",
            ),
          ],
        ),
      ),
    );
  }
}

/// Constructor for Transactions Data
class dataTransaction extends StatelessWidget {
  @override
  String date, item, price;

  dataTransaction({this.date, this.item, this.price});

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  date,
                  style: _txtCustomSub.copyWith(
                      color: Colors.black38,
                      fontSize: 11.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                width: 130.0,
                child: Text(
                  item,
                  style: _txtCustomSub.copyWith(color: Colors.black54),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(price,
                  style: _txtCustomSub.copyWith(
                    color: Colors.redAccent,
                    fontSize: 16.0,
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Divider(
            height: 0.5,
            color: Colors.black12,
          ),
        ),
      ],
    );
  }
}
