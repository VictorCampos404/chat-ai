import 'package:flutter/material.dart';
import 'package:ifsp_ai/common/consts/app_colors.dart';
import 'package:ifsp_ai/common/consts/app_font.dart';
import 'package:ifsp_ai/common/widgets/spaces.dart';

enum ButtonCardHeight { middle, large }

class ButtonCardSlideItem {
  ButtonCardSlideItem({
    this.background,
    this.foreground,
    this.icon,
    this.onTap,
    this.title,
  });

  final String? title;
  final IconData? icon;
  final Color? background;
  final Color? foreground;
  final Function()? onTap;
}

class ButtonCardToastItem {
  ButtonCardToastItem({
    this.icon,
    this.title,
  });

  final String? title;
  final IconData? icon;
}

class ButtonCard extends StatefulWidget {
  const ButtonCard({
    super.key,
    this.background,
    this.height,
    this.customHeight,
    this.icon,
    this.title,
    this.description,
    this.suffix,
    this.prefix,
    this.enable,
    this.isLoading,
    this.onTap,
    this.isSlidable,
    this.slidableItems,
    this.toastItems,
    this.descriptionOverflow,
    this.titleOverflow,
    this.onlyBorder,
    this.imageFilterColor,
    this.top,
    this.radius,
  });

  final Color? background;
  final ButtonCardHeight? height;
  final double? customHeight;
  final IconData? icon;
  final String? title;
  final String? description;
  final Widget? suffix;
  final Widget? prefix;
  final Widget? top;
  final bool? enable;
  final bool? isLoading;
  final Function()? onTap;
  final bool? isSlidable;
  final List<ButtonCardSlideItem>? slidableItems;
  final List<ButtonCardToastItem>? toastItems;
  final TextOverflow? descriptionOverflow;
  final TextOverflow? titleOverflow;
  final bool? onlyBorder;
  final Color? imageFilterColor;
  final double? radius;

  @override
  State<ButtonCard> createState() => _ButtonCardState();
}

class _ButtonCardState extends State<ButtonCard> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: (widget.isLoading ?? false) || !(widget.enable ?? true),
      child: Material(
        borderRadius: BorderRadius.circular(
          widget.radius ?? 5,
        ),
        child: InkWell(
          onTap: widget.onTap,
          overlayColor: MaterialStatePropertyAll(
            AppColors.disable.withOpacity(0.1),
          ),
          borderRadius: BorderRadius.circular(
            widget.radius ?? 5,
          ),
          child: Ink(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  widget.radius ?? 5,
                ),
                color: (widget.onlyBorder ?? false)
                    ? AppColors.white
                    : widget.background,
                border: (widget.onlyBorder ?? false)
                    ? Border.all(
                        width: 0.5,
                        color: AppColors.disable,
                      )
                    : null),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  constraints: BoxConstraints(
                    minHeight: getHeight(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Spaces.x2,
                    ),
                    child: Row(
                      children: [
                        widget.prefix ?? const SizedBox(),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  if (widget.icon != null)
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: Spaces.x1),
                                      child: Icon(
                                        widget.icon,
                                        size: 24,
                                        color: AppColors.text,
                                      ),
                                    ),
                                  Expanded(
                                    child: Text(
                                      widget.title ?? '',
                                      overflow: widget.titleOverflow ??
                                          TextOverflow.ellipsis,
                                    ).item(),
                                  ),
                                ],
                              ),
                              if (widget.description != null)
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: widget.icon != null ? Spaces.x4 : 0,
                                  ),
                                  child: Text(
                                    widget.description ?? '',
                                    overflow: widget.descriptionOverflow ??
                                        TextOverflow.ellipsis,
                                  ).smallBody(
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        widget.suffix ?? const SizedBox(),
                      ],
                    ),
                  ),
                ),
                if (widget.top != null)
                  SizedBox(
                    height: getHeight(),
                    child: widget.top ?? const SizedBox(),
                  ),
                Padding(
                  padding: const EdgeInsets.all(Spaces.x1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      for (int i = 0;
                          i < (widget.toastItems?.length ?? 0);
                          i++) ...[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(36),
                            color: AppColors.disable,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          margin: EdgeInsets.only(
                            right: (i + 1) != widget.toastItems?.length
                                ? Spaces.half
                                : 0,
                          ),
                          child: Row(
                            children: [
                              if (widget.toastItems?[i].icon != null)
                                Icon(
                                  widget.toastItems?[i].icon,
                                  size: 12,
                                  color: AppColors.white,
                                ),
                              if (widget.toastItems?[i].title != null &&
                                  widget.toastItems?[i].icon != null)
                                const SizedBox(
                                  width: 2,
                                ),
                              if (widget.toastItems?[i].title != null)
                                Text(
                                  widget.toastItems?[i].title ?? '',
                                ).smallBody(
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: AppColors.white,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  double getHeight() {
    if (widget.customHeight != null) return widget.customHeight ?? 0.0;

    switch (widget.height) {
      case ButtonCardHeight.middle:
        return ((MediaQuery.of(context).size.width / 2) -
                (Spaces.x2 * 1.5) -
                Spaces.x2) /
            2;
      case ButtonCardHeight.large:
      default:
        return (MediaQuery.of(context).size.width / 2) - (Spaces.x2 * 1.5);
    }
  }
}
