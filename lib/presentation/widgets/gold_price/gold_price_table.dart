import 'package:flutter/material.dart';
import 'package:gold/data/models/gold_model.dart';

class GoldPriceTable extends StatelessWidget {
  const GoldPriceTable({super.key, required this.gold});
  final GoldModel gold;
  @override
  Widget build(BuildContext context) {
    Icon icon = gold.rate.changePercent >= 0
        ? const Icon(
            Icons.call_made_sharp,
            color: Colors.green,
          )
        : const Icon(
            Icons.call_received_outlined,
            color: Colors.red,
          );
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: DataTable(
        
        dataRowColor:
            WidgetStatePropertyAll<Color>(const Color.fromARGB(96, 125, 50, 0)),
        border: TableBorder.symmetric(
            inside: BorderSide(
                color: const Color.fromARGB(255, 157, 103, 1).withOpacity(0.9),
                width: 6)),
        decoration: BoxDecoration(
          color: const Color.fromARGB(167, 131, 81, 0),
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
        columns: const [
          DataColumn(
            label: Text(
              "Caliber",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            ),
          ),
          DataColumn(
            label: Text(
              "Price",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          DataColumn(label: Icon(Icons.import_export)),
        ],
        rows: [
          tableRow(
              icon,
              ((gold.rate.price / 31.1035) * (24 / 24))
                  .toString()
                  .substring(0, 7),
              "24"),
          tableRow(
              icon,
              ((gold.rate.price / 31.1035) * (21 / 24))
                  .toString()
                  .substring(0, 7),
              "21"),
          tableRow(
              icon,
              ((gold.rate.price / 31.1035) * (18 / 24))
                  .toString()
                  .substring(0, 7),
              "18"),
          tableRow(
              icon,
              ((gold.rate.price / 31.1035) * (12 / 24))
                  .toString()
                  .substring(0, 7),
              "12"),
        ],
      ),
    );
  }

  DataRow tableRow(Icon icon, String price, String caliber) {
    return DataRow(
      cells: [
        DataCell(Text(
          caliber,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        )),
        DataCell(Text(
          price,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        )),
        DataCell(Center(
          child: icon,
        )),
      ],
    );
  }
}
