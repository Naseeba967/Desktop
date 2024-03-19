import 'package:finalyearproject/common/widgets/appbar/appbar.dart';
import 'package:finalyearproject/common/widgets/customShape/container/rounded_container.dart';
import 'package:finalyearproject/common/widgets/products/cart/coupon_widgets.dart';
import 'package:finalyearproject/common/widgets/success_screen/success_screen.dart';
import 'package:finalyearproject/features/shop/screens/cart/widgets/card_item_list.dart';
import 'package:finalyearproject/features/shop/screens/checkOut/widgets/billing_address_section.dart';
import 'package:finalyearproject/features/shop/screens/checkOut/widgets/billing_amount_section.dart';
import 'package:finalyearproject/features/shop/screens/checkOut/widgets/billing_payment_section.dart';
import 'package:finalyearproject/features/shop/screens/home/screen/home_screen.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/image_strings.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelpersFunction.isDarkMode(context);
    return Scaffold(
      appBar: Appbar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
<<<<<<< HEAD
              const CartItemsList(
                showAddRemoveButton: false,
              ),
              const SizedBox(
                height: Sizes.spaceBtwItem,
              ),
              const CouponWidget(),
              const SizedBox(
                height: Sizes.spaceBtwSection,
              ),
=======
              // const CartItemsList(
              //   showAddRemoveButton: false,
              // ),
              // const SizedBox(
              //   height: Sizes.spaceBtwItem,
              // ),
>>>>>>> 210aa2ed077d47e573eb9bda306205f6328b47a5
              RoundedContainer(
                padding: const EdgeInsets.all(Sizes.md),
                showBoder: true,
                backgroundColor: dark ? AppColor.black : AppColor.white,
                child: const Column(
                  children: [
                    BillingAmountSection(),
                    SizedBox(
                      height: Sizes.spaceBtwItem,
                    ),
                    Divider(),
                    SizedBox(
                      height: Sizes.spaceBtwItem,
                    ),
                    BillingPaymentSection(),
                    SizedBox(
                      height: Sizes.spaceBtwItem,
                    ),
                    BillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SucessScreen(
                  image: AppImage.customer,
                  title: 'Payment success',
                  subtitle: 'Item will be shipped soon',
                  onPressed: () => Get.offAll(const HomeScreen()),
                )),
            child: const Text('Checkout PKR0.0')),
      ),
    );
  }
}
