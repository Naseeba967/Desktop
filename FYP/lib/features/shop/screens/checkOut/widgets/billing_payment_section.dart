import 'package:flutter/material.dart';
import 'package:finalyearproject/common/widgets/customShape/container/rounded_container.dart';
import 'package:finalyearproject/common/widgets/texts/section_heading.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/image_strings.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelpersFunction.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(
          title: 'Payment Method',
          buttonTitle: 'change',
          onPressed: () {},
        ),
        const SizedBox(
          height: Sizes.spaceBtwItem / 2,
        ),
        Row(
          children: [
            RoundedContainer(
              width: 60,
              height: 35,
              padding: const EdgeInsets.all(Sizes.sm),
              backgroundColor: dark ? AppColor.black : AppColor.light,
              child: Image(
                image: AssetImage(AppImage.wheelChair),
                fit: BoxFit.contain,
              ),
              
            ),
            const SizedBox(width: Sizes.spaceBtwItem/2,),
            Text('EasyPaisa', style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}
