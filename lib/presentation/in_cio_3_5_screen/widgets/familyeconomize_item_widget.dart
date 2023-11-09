import '../models/familyeconomize_item_model.dart';
import 'package:flutter/material.dart';
import 'package:giovane_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class FamilyeconomizeItemWidget extends StatelessWidget {
  FamilyeconomizeItemWidget(
    this.familyeconomizeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FamilyeconomizeItemModel familyeconomizeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: AppDecoration.outlineBlack,
            child: Text(
              "lbl_economize".tr,
              style: theme.textTheme.displayMedium,
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            width: 314.h,
            margin: EdgeInsets.symmetric(horizontal: 3.h),
            child: Text(
              "msg_evite_comprar_por".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
          SizedBox(height: 11.v),
          CustomImageView(
            imagePath: ImageConstant.imgCartoonWithAFamily,
            height: 320.v,
            width: 313.h,
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }
}
