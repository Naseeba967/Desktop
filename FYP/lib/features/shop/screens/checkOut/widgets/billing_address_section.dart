import 'package:finalyearproject/common/widgets/texts/section_heading.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'change',
          onPressed: () {},
        ),
        const SizedBox(
          height: Sizes.spaceBtwItem / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              height: Sizes.spaceBtwItem,
            ),
            Text(
              '+92 31580099',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: Sizes.spaceBtwItem / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              height: Sizes.spaceBtwItem,
            ),
            Expanded(
              child: Text(
                'Mansehra, KPK Pakistan',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
          ],
        )
      ],
    );
  }
}
