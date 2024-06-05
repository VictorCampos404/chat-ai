import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:ifsp_ai/common/consts/app_colors.dart';
import 'package:ifsp_ai/common/consts/app_font.dart';
import 'package:ifsp_ai/common/consts/custom_icons.dart';
import 'package:ifsp_ai/common/widgets/spaces.dart';
import 'package:ifsp_ai/chat/models/message.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    super.key,
    required this.message,
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    if (message.isUser ?? true) {
      return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          bottom: Spaces.x2,
          right: Spaces.x2,
          left: Spaces.x4,
        ),
        alignment: Alignment.centerRight,
        child: Container(
          padding: const EdgeInsets.all(Spaces.x1),
          decoration: BoxDecoration(
            color: AppColors.text,
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Spaces.half),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6,
                  ),
                  child: Text(message.label ?? '').itemBody(),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: Spaces.x2,
                    right: Spaces.half,
                  ),
                  child: Icon(
                    CustomIcons.user_6_fill,
                    color: AppColors.purple,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    return Row();
  }
}
