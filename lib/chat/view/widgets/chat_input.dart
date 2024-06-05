import 'package:flutter/material.dart';
import 'package:ifsp_ai/common/consts/app_colors.dart';
import 'package:ifsp_ai/common/consts/app_font.dart';
import 'package:ifsp_ai/common/consts/custom_icons.dart';
import 'package:ifsp_ai/common/widgets/button_card.dart';
import 'package:ifsp_ai/common/widgets/custom_input.dart';
import 'package:ifsp_ai/common/widgets/spaces.dart';
import 'package:ifsp_ai/chat/controller/chat_controller.dart';
import 'package:provider/provider.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({super.key});

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  late FocusNode inputFocus;

  @override
  void initState() {
    inputFocus = FocusNode()
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatController>(builder: (context, controller, child) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (inputFocus.hasFocus)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < controller.areas.length; i++)
                    InkWell(
                      onTap: () {
                        controller.setInputCtrlText(
                          controller.areas[i],
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: i == 0 ? Spaces.x2 : Spaces.x1,
                        ),
                        padding: const EdgeInsets.all(
                          Spaces.x1,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.text,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(controller.areas[i]).item(
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(
                    width: Spaces.x2,
                  )
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(Spaces.x2),
            child: ButtonCard(
              height: ButtonCardHeight.middle,
              background: AppColors.text,
              radius: 38,
              top: Padding(
                padding: const EdgeInsets.only(
                  left: Spaces.x3,
                  right: Spaces.x1,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomInput(
                            focusNode: inputFocus,
                            hint: 'Digite uma área de interesse...',
                            controller: controller.inputCtrl,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            onChanged: (value) {
                              controller.updateStatus();
                            },
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        if (controller.sendButtonEnable) {
                          inputFocus.unfocus();
                          controller.sendMessage();
                        }
                      },
                      icon: Icon(
                        CustomIcons.send_plane_2_fill,
                        color: controller.sendButtonEnable
                            ? AppColors.purple
                            : AppColors.purple.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
