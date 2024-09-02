import 'package:flutter/material.dart';

class ChargeRate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: Table(
        border: TableBorder.all(color: Colors.grey.shade300),
        columnWidths: const {
          0: FlexColumnWidth(2),
          1: FlexColumnWidth(2),
          2: FlexColumnWidth(2),
        },
        children: [
          TableRow(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Service Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Charge (App)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Charge (USSD)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          _buildTableRow('Cash-in', 'Free', 'Free'),
          _buildTableRow('Add Money (Card)', 'Free', 'N/A'),
          _buildTableRow('Add Money (Bank Account)', 'Free', 'N/A'),
          _buildTableRow('Cash-out (Agent)', '1.5%', '1.8% or TK 10 (whichever higher)'),
          _buildTableRow('Cash-out (Branch)', '1% or TK 5 (whichever higher)', '1% or TK 5 (whichever higher)'),
          _buildTableRow('IW to IW', 'Free', '5 Taka'),
          _buildTableRow('IW to AIBL', 'Free', 'N/A'),
          _buildTableRow('IW to Other Bank', 'TK 10', 'N/A'),
          _buildTableRow('Credit Card Bill Payment', 'TK 10', 'N/A'),
          _buildTableRow('Payment', 'Free', 'Free'),
          _buildTableRow('Mobile Recharge', 'Free', 'Free'),
        ],
      ),
    );
  }

  TableRow _buildTableRow(String serviceName, String chargeApp, String chargeUSSD) {
    return TableRow(
      children: [
        _buildTableCell(serviceName),
        _buildTableCell(chargeApp),
        _buildTableCell(chargeUSSD),
      ],
    );
  }

  Widget _buildTableCell(String text) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
