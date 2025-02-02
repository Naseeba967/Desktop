import 'package:finalyearproject/common/widgets/images/rounded_image.dart';
import 'package:finalyearproject/common/widgets/products/cart/add_remove_button.dart';
//import 'package:finalyearproject/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:finalyearproject/common/widgets/texts/product_title_text.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/image_strings.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        RoundedImage(
          imageUrl: AppImage.wheelChair,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(Sizes.sm),
          backgroundColor: HelpersFunction.isDarkMode(context)
              ? AppColor.darkerGrey
              : AppColor.light,
        ),
        const SizedBox(
          width: Sizes.spaceBtwItem,
        ),
        
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ProductTitleText(title: 'Special people  care')],
        ),
        IconButton(onPressed: (){
          PersistentShoppingCart().removeFromCart("123");
        }, icon: Icon(Icons.delete))
      ],
    );
  }
}
