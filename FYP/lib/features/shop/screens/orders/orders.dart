import 'package:finalyearproject/common/widgets/appbar/appbar.dart';
import 'package:finalyearproject/features/shop/screens/orders/widgets/orderListItem.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: Appbar(
        showBackArrow: true,
        title: Text('My Order', style: Theme.of(context).textTheme.headlineSmall,),
        
      ),
      body: const Padding(padding: EdgeInsets.all(Sizes.defaultSpace),
      child: OrderListItem(),
      ),
    );
  }
}