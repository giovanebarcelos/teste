import '../in_cio_4_5_screen/widgets/recipepreparer_item_widget.dart';
import 'bloc/in_cio_4_5_bloc.dart';
import 'models/in_cio_4_5_model.dart';
import 'models/recipepreparer_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:giovane_s_application2/core/app_export.dart';
import 'package:giovane_s_application2/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InCio45Screen extends StatelessWidget {
  const InCio45Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InCio45Bloc>(
      create: (context) => InCio45Bloc(InCio45State(
        inCio45ModelObj: InCio45Model(),
      ))
        ..add(InCio45InitialEvent()),
      child: InCio45Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 8.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildRecipePreparer(context),
              SizedBox(height: 10.v),
              BlocBuilder<InCio45Bloc, InCio45State>(
                builder: (context, state) {
                  return SizedBox(
                    height: 28.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: state.sliderIndex,
                      count: state
                              .inCio45ModelObj?.recipepreparerItemList.length ??
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
  Widget _buildRecipePreparer(BuildContext context) {
    return BlocBuilder<InCio45Bloc, InCio45State>(
      builder: (context, state) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 504.v,
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
          itemCount: state.inCio45ModelObj?.recipepreparerItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            RecipepreparerItemModel model =
                state.inCio45ModelObj?.recipepreparerItemList[index] ??
                    RecipepreparerItemModel();
            return RecipepreparerItemWidget(
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
