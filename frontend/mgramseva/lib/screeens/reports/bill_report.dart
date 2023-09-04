import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/common/BillsTableData.dart';
import '../../providers/reports_provider.dart';
import '../../utils/localization/application_localizations.dart';

import 'package:mgramseva/utils/constants/i18_key_constants.dart';

import '../../utils/notifiers.dart';
import '../../utils/testing_keys/testing_keys.dart';
import '../../widgets/button.dart';
import 'generic_report_table.dart';

class BillReport extends StatefulWidget {
  final Function onViewClick;

  BillReport({Key? key, required this.onViewClick}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BillReport();
  }
}

class _BillReport extends State<BillReport>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Consumer<ReportsProvider>(builder: (_, reportProvider, child) {
        return Container(
          margin: constraints.maxWidth > 700
              ? const EdgeInsets.only(top: 5.0, bottom: 5, right: 20, left: 10)
              : const EdgeInsets.only(top: 5.0, bottom: 5, right: 8, left: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("1. ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700)),
                      Text(
                          ApplicationLocalizations.of(context)
                              .translate(i18.dashboard.BILL_REPORT),
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700)),
                    ],
                  ),
                  Row(
                    children: [
                      // Container(
                      //   width: 50,
                      //   child: Button(
                      //     "View",
                      //     () {
                      //       if (reportProvider.selectedBillPeriod == null) {
                      //         Notifiers.getToastMessage(
                      //             context, 'Select Billing Cycle', 'ERROR');
                      //       } else {
                      //         widget.onViewClick(true);
                      //         reportProvider.getDemandReport();
                      //         // Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) { return GenericReportTable(BillsTableData(reportProvider.demandHeaderList,reportProvider.getDemandsData(reportProvider.demandreports!))); }));
                      //       }
                      //     },
                      //     key: Keys.billReport.BILL_REPORT_VIEW_BUTTON,
                      //   ),
                      // ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Container(
                        width: 100,
                        child: Button(
                          "Download",
                          () {
                            if (reportProvider.selectedBillPeriod == null) {
                              Notifiers.getToastMessage(
                                  context, 'Select Billing Cycle', 'ERROR');
                            } else {
                              reportProvider.getDemandReport(true);
                            }
                          },
                          key: Keys.billReport.BILL_REPORT_DOWNLOAD_BUTTON,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      });
    });
  }
}
