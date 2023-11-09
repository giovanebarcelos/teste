import '../models/sharelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:giovane_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SharelistItemWidget extends StatelessWidget {
  SharelistItemWidget(
    this.sharelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SharelistItemModel sharelistItemModelObj;

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
              "lbl_compartilhe".tr,
              style: theme.textTheme.displayMedium,
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            width: 256.h,
            margin: EdgeInsets.only(
              left: 32.h,
              right: 31.h,
            ),
            child: Text(
              "msg_compartilhe_suas".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          CustomImageView(
            imagePath: ImageConstant.imgPeoplemobilesho,
            height: 320.v,
            width: 313.h,
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }
}
