import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6,
                  ),
                  padding: const EdgeInsets.only(
                    top: 2,
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

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
        bottom: Spaces.x2,
        right: Spaces.x4,
        left: Spaces.x2,
      ),
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(Spaces.x1),
            decoration: BoxDecoration(
              color: AppColors.text,
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            alignment: Alignment.center,
            child: const Icon(
              CustomIcons.robot_fill,
              color: AppColors.purple,
            ),
          ),
          if ((message.label ?? '').isEmpty)
            Container(
              padding: const EdgeInsets.all(Spaces.half),
              margin: const EdgeInsets.only(
                left: Spaces.x1,
              ),
              decoration: BoxDecoration(
                color: AppColors.text,
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              width: 80,
              height: 40,
              alignment: Alignment.center,
              child: const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 0.5,
                  color: AppColors.purple,
                ),
              ),
            )
          else
            Container(
              padding: const EdgeInsets.all(Spaces.half),
              margin: const EdgeInsets.only(
                left: Spaces.x1,
                top: 4,
              ),
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6,
              ),
              child: Text(message.label ?? '').itemBody(),
            )
        ],
      ),
    );
  }
}
