import 'package:elevate_task/core/utlis/app_colors.dart';
import 'package:elevate_task/core/utlis/config.dart';
import 'package:elevate_task/core/utlis/text_styles.dart';
import 'package:elevate_task/data/models/product_model/product_Response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductWidget extends StatelessWidget {
  final ProductResponse product;
  const ProductWidget({super.key, required this.product});

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
              // ClipRRect(
              //     borderRadius: const BorderRadius.only(
              //         topLeft: Radius.circular(15),
              //         topRight: Radius.circular(15)),
              //     child: CachedNetworkImage(
              //       imageUrl: product.thumbnail ?? "",
              //       errorWidget: (context, url, error) =>
              //           const Icon(Icons.error),
              //       width: double.infinity,
              //       height: double.infinity,
              //       fit: BoxFit.fill,
              //       progressIndicatorBuilder: (context, url, progress) =>
              //           const Center(
              //               child: CircularProgressIndicator.adaptive()),
              //     )),
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
                    product.title ?? "",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.productTitleTextStyle,
                  ),
                  Text(
                    product.description ?? "",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.productTitleTextStyle,
                  ),
                  Config.spaceSmall,
                  Row(children: [
                    Text(
                      product.price.toString(),
                      style: TextStyles.productTitleTextStyle,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                     product.price.toString(),
                      style: TextStyles.dicountTextStyle,
                    ),
                  ]),
                  const Spacer(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Review (${product.rating?.rate??""})",
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
