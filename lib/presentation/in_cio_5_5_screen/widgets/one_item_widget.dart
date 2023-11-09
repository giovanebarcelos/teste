import '../models/one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:giovane_s_application2/core/app_export.dart';
import 'package:giovane_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class OneItemWidget extends StatelessWidget {
  OneItemWidget(
    this.oneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OneItemModel oneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: AppDecoration.outlineBlack,
            child: Text(
              "lbl_sem_an_ncios".tr,
              style: theme.textTheme.displayMedium,
            ),
          ),
          SizedBox(height: 12.v),
          Container(
            width: 271.h,
            margin: EdgeInsets.only(
              left: 29.h,
              right: 28.h,
            ),
            child: Text(
              "msg_experimente_a_vers_o".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
          SizedBox(height: 37.v),
          CustomElevatedButton(
            height: 50.v,
            text: "lbl_comprar_premium".tr,
            margin: EdgeInsets.symmetric(horizontal: 9.h),
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
          SizedBox(height: 48.v),
          CustomImageView(
            imagePath: ImageConstant.imgStylizedYellow,
            height: 186.v,
            width: 329.h,
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }
}
