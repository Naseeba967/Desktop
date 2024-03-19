import 'package:finalyearproject/common/widgets/appbar/appbar.dart';
import 'package:finalyearproject/common/widgets/images/rounded_image.dart';
import 'package:finalyearproject/common/widgets/texts/section_heading.dart';
import 'package:finalyearproject/utils/constant/image_strings.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class SubCategory extends StatelessWidget {
  const SubCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(
        title: Text('Easy Care product'),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: Column(children: [
          RoundedImage(
              width: double.infinity,
              applyImageRadius: true,
              imageUrl: AppImage.wheelChair),
          const SizedBox(
            height: Sizes.spaceBtwSection,
          ),
          Column(
            children: [
              SectionHeading(
                title: 'First Category',
                onPressed: () {},
              ),
              const SizedBox(
            height: Sizes.spaceBtwSection/2,
          ),
            ],
          )
        ]),
      ),
    );
  }
}
