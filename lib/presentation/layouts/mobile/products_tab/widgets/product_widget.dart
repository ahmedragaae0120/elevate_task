import 'package:elevate_task/core/utlis/app_colors.dart';
import 'package:elevate_task/core/utlis/config.dart';
import 'package:elevate_task/core/utlis/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        border: Border.all(
          color: AppColors.borderColor,
          width: 4,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset(
                "assets/PeterParker.jpg",
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: SvgPicture.asset(
                  "assets/whishlistSelected.svg",
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                children: [
                  Config.spaceSmall,
                  Text(
                    "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.productTitleTextStyle,
                  ),
                  Text(
                    "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.productTitleTextStyle,
                  ),
                  Config.spaceSmall,
                  Row(children: [
                    Text(
                      "EGP 1200",
                      style: TextStyles.productTitleTextStyle,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "1200 EGP",
                      style: TextStyles.dicountTextStyle,
                    ),
                  ]),
                  const Spacer(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Review (rating)",
                          style: TextStyles.productTitleTextStyle
                              .copyWith(fontSize: 16),
                        ),
                        SvgPicture.asset("assets/Vector.svg"),
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: AppColors.buttonsColor,
                            child: Icon(
                              Icons.add,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
