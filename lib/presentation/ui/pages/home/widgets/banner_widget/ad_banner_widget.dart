import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/presentation/ui/pages/home/widgets/banner_card_widget.dart';


class BannerWidget extends ConsumerStatefulWidget {
  final List<Widget>? titleChild;
  final Widget? decorationWidget;
  final List<String>? title;
  final List<String>? label;
  final List<String>? subTitle;
  final List<String>? buttonTitle;
  final List<String>? imagePath;
  final int length;
  final PageController? pageController;

  const BannerWidget({
    super.key,
    this.title,
    this.titleChild,
    this.decorationWidget,
    this.subTitle,
    this.label,
    this.buttonTitle,
    this.imagePath,
    required this.length,
    this.pageController,
  });

  @override
  ConsumerState<BannerWidget> createState() => _BannerWidgetConsumerState();
}

class _BannerWidgetConsumerState extends ConsumerState<BannerWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      12.verticalSpace,
      SizedBox(
          height: 0.21.sh,
          child:
              // state.isLoading
              //     ?
              Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 130.h,
                child: PageView.builder(
                  padEnds: false,

                  itemCount: widget.length,
                  controller: widget.pageController ?? PageController(viewportFraction: 0.8),

                  allowImplicitScrolling: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          right: index == (widget.length - 1) ? 15.0.sp : 0),
                      child: HomeNoteCard(
                        titleChild: widget.titleChild?[index],
                        title: widget.title?[index] ?? "",
                        buttonTitle: widget.buttonTitle?[index] ?? "",
                        subTitle: widget.subTitle?[index] ?? "",
                        label: widget.label?[index] ?? "",
                        imagePath: widget.imagePath?[index] ?? "",
                        decoration: widget.decorationWidget,
                      ),
                    );
                  },
                ),
              ),
            ],
          )
          ),
    ]);
  }
}
