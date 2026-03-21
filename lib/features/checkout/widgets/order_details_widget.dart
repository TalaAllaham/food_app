import 'package:flutter/material.dart';
import '../../../shared/custom_text.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({super.key, required this.order, required this.taxes, required this.fees, required this.total});
  final String order,taxes,fees,total;

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
        CustomText(text: "Order summary",size: 20,weight: FontWeight.bold),
        check("Order", "$order \$", false, false, true),
        check("Taxes", "$taxes \$", false, false, true),
        check("Delivery fees", "$fees \$", false, false, true),
        Divider(),
        check("Total", "$total \$", true, false, false),
        check("Estimated delivery time:", "15-30 mins", true, true, false),
      ],
    );
  }

  Widget check(txt,price,isBold,isSmall,isGrey) {
    return ListTile(
      minTileHeight: 1,
      contentPadding: EdgeInsets.symmetric(horizontal: 2),
      title: CustomText(text: txt,size: isSmall ? 12 : 18,weight: isBold ? FontWeight.bold : null,color: isGrey ? Colors.grey.shade600 : Colors.black),
      trailing: CustomText(text: price,size: isSmall ? 12 : 18,weight: isBold ? FontWeight.bold : null,color: isGrey ? Colors.grey.shade600 : Colors.black),
    );
  }
}
