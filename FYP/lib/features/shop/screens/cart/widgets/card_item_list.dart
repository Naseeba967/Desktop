import 'package:finalyearproject/common/widgets/products/cart/add_remove_button.dart';
import 'package:finalyearproject/common/widgets/products/cart/cart_item.dart';
import 'package:finalyearproject/common/widgets/texts/product_price_text.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({
    super.key,
    this.showAddRemoveButton = true,
  });
  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return ListView.separated(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (_, __) => const SizedBox(
              height: Sizes.spaceBtwSection,
            ),
        separatorBuilder: (_, index) => Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const CartItems(),
                    if (showAddRemoveButton)
                      const SizedBox(
                        height: Sizes.defaultSpace,
                      ),
                    if (showAddRemoveButton)
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [AddRemoveButton()],
=======
    return 
   PersistentShoppingCart().showCartItems(
    cartTileWidget: ({required data})=>
    Padding(
      padding: const EdgeInsets.only(top: 5,right: 10,bottom: 5,left: 10),
      child: Card(color: Colors.white,
        child: Column(
                      children: [
                        const CartItems(),
                        if (showAddRemoveButton)
                          const SizedBox(
                            height: Sizes.defaultSpace,
>>>>>>> 210aa2ed077d47e573eb9bda306205f6328b47a5
                          ),
                        if (showAddRemoveButton)
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  AddRemoveButton()],
                              ),
                              ProductPriceText(price: 'PKR.256')
                            ],
                          )
                      ],
                    ),
      ),
    ),
             
    showEmptyCartMsgWidget: Text("Cart is empty"));
  }
}
