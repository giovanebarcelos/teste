import '../models/organizeframe_item_model.dart';
import 'package:flutter/material.dart';
import 'package:giovane_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class OrganizeframeItemWidget extends StatelessWidget {
  OrganizeframeItemWidget(
    this.organizeframeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrganizeframeItemModel organizeframeItemModelObj;

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
              "lbl_organize".tr,
              style: theme.textTheme.displayMedium,
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            width: 301.h,
            margin: EdgeInsets.only(
              left: 13.h,
              right: 14.h,
            ),
            child: Text(
              "msg_organize_suas_compras".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.h),
            decoration: AppDecoration.fillPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgCartoonWithPeople,
              height: 356.v,
              width: 313.h,
            ),
          ),
        ],
      ),
    );
  }
}
