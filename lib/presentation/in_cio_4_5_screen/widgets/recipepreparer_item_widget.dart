import '../models/recipepreparer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:giovane_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class RecipepreparerItemWidget extends StatelessWidget {
  RecipepreparerItemWidget(
    this.recipepreparerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecipepreparerItemModel recipepreparerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      decoration: AppDecoration.outlineOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 4.v),
          Container(
            decoration: AppDecoration.outlineBlack,
            child: Text(
              "lbl_cozinhe".tr,
              style: theme.textTheme.displayMedium,
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            width: 310.h,
            margin: EdgeInsets.only(
              left: 9.h,
              right: 8.h,
            ),
            child: Text(
              "msg_prepare_as_melhores".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          Container(
            padding: EdgeInsets.all(8.h),
            decoration: AppDecoration.fillPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgDallE202310181018,
              height: 356.v,
              width: 313.h,
            ),
          ),
        ],
      ),
    );
  }
}
