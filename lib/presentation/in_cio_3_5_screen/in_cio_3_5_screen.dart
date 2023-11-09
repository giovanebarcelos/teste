import '../in_cio_3_5_screen/widgets/familyeconomize_item_widget.dart';
import 'bloc/in_cio_3_5_bloc.dart';
import 'models/familyeconomize_item_model.dart';
import 'models/in_cio_3_5_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:giovane_s_application2/core/app_export.dart';
import 'package:giovane_s_application2/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InCio35Screen extends StatelessWidget {
  const InCio35Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InCio35Bloc>(
      create: (context) => InCio35Bloc(InCio35State(
        inCio35ModelObj: InCio35Model(),
      ))
        ..add(InCio35InitialEvent()),
      child: InCio35Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray600,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 9.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildFamilyEconomize(context),
              SizedBox(height: 11.v),
              BlocBuilder<InCio35Bloc, InCio35State>(
                builder: (context, state) {
                  return SizedBox(
                    height: 28.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: state.sliderIndex,
                      count: state.inCio35ModelObj?.familyeconomizeItemList
                              .length ??
                          0,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 8,
                        activeDotColor: appTheme.black900,
                        dotColor: appTheme.gray400,
                        dotHeight: 12.v,
                        dotWidth: 12.h,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 2.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildPular(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFamilyEconomize(BuildContext context) {
    return BlocBuilder<InCio35Bloc, InCio35State>(
      builder: (context, state) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 500.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              state.sliderIndex = index;
            },
          ),
          itemCount: state.inCio35ModelObj?.familyeconomizeItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            FamilyeconomizeItemModel model =
                state.inCio35ModelObj?.familyeconomizeItemList[index] ??
                    FamilyeconomizeItemModel();
            return FamilyeconomizeItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPular(BuildContext context) {
    return CustomElevatedButton(
      width: 119.h,
      text: "lbl_pular".tr,
      margin: EdgeInsets.only(
        left: 121.h,
        right: 120.h,
        bottom: 8.v,
      ),
    );
  }
}
