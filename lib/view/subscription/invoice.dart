import 'package:flutter/material.dart';
import 'package:pharmahub/core/global_variables.dart';
import 'package:pharmahub/core/theme/styles.dart';
import 'package:pharmahub/view/widgets/widgets.dart';

class InvoicePage extends StatefulWidget {
  const InvoicePage({Key? key}) : super(key: key);

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Invoice",
          style: Styles.headlineText2!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        // scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(height: 20),
          incoiceCard(
            context,
            fee: 2000,
            duration: " 365 days",
            offers: "every every",
            isSelected: selectedIndex == 1 ? true : false,
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
          ),
          incoiceCard(
            context,
            fee: 2500,
            duration: " 365 days",
            offers: "every every",
            isSelected: selectedIndex == 2 ? true : false,
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
          ),
          incoiceCard(
            context,
            fee: 7000,
            duration: " 365 days",
            offers: "every every",
            isSelected: selectedIndex == 3 ? true : false,
            onTap: () {
              setState(() {
                selectedIndex = 3;
              });
            },
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

Widget incoiceCard(
  BuildContext context, {
  required VoidCallback onTap,
  required bool isSelected,
  required int fee,
  required String duration,
  required String offers,
}) =>
    Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: InkWell(
          onTap: onTap,
          child: Card(
            // color: Styles.accentColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // if you need this
              side: BorderSide(
                color: isSelected ? Styles.primaryColor! : Colors.grey,
                width: 1,
              ),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.85,
              child: Column(children: [
                const Spacer(),
                Text(
                  MyGlobals.moneyFormater(fee),
                  style: Styles.headlineText2!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const Spacer(),
                Text(
                  offers,
                  style: Styles.bodyText1,
                ),
                const Spacer(),
                Text(
                  duration,
                  style: Styles.headlineText1,
                ),
                const Spacer(),
                MyWidgets.raisedButton(
                  title: 'Subscribe',
                  color: Styles.primaryColor,
                  onPressed: () {},
                ),
                const SizedBox(height: 15),
              ]),
            ),
          ),
        ),
      ),
    );
