import 'package:finalyearproject/common/widgets/customShape/container/rounded_container.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class CouponWidget extends StatelessWidget {
  const CouponWidget({
    super.key,
   
  });

  @override
  Widget build(BuildContext context) {
      final dark = HelpersFunction.isDarkMode(context);
    return RoundedContainer(
      showBoder: true,
      backgroundColor: AppColor.white,
      padding: const EdgeInsets.only(
          top: Sizes.sm,
          bottom: Sizes.sm,
          right: Sizes.sm,
          left: Sizes.md),
      child: Row(children: [
        Flexible(
            child: TextFormField(
          decoration: const InputDecoration(
              hintText: 'have Promo code? Enter here',
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              border: InputBorder.none),
        )),
        SizedBox(
            width: 80,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    foregroundColor: dark
                        ? AppColor.white.withOpacity(0.5)
                        : AppColor.black.withOpacity(0.5),
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    side: BorderSide(
                        color: Colors.grey.withOpacity(0.1))),
                child: const Text('Apply')))
      ]),
    );
  }
}
