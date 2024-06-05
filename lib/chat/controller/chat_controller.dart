import 'package:flutter/material.dart';
import 'package:ifsp_ai/common/base/status.dart';
import 'package:ifsp_ai/common/enum/status.dart';
import 'package:ifsp_ai/chat/models/message.dart';

class ChatController extends BaseStatus {
  TextEditingController inputCtrl = TextEditingController();

  bool get sendButtonEnable => inputCtrl.text.isNotEmpty;

  List<String> areas = [
    'Ciência de Dados',
    'Cloud Computing',
    'Desenvolvimento Web',
    'Gestão de Projetos de TI',
    'Inteligência Artificial',
    'Machine Learning',
    'Programação',
    'Redes de Computadores',
    'Segurança da Informação',
    'Suporte em TI',
    'Tecnologia da Informação (TI)',
    'UX/UI Design',
  ];

  late List<Message> _messages;
  List<Message> get messages => _messages;

  ChatController() {
    reset();
  }

  void reset() {
    inputCtrl = TextEditingController();
    _messages = [];
    notifyListeners();
  }

  void setInputCtrlText(value) {
    inputCtrl.text = value;
    notifyListeners();
  }

  void updateStatus() {
    notifyListeners();
  }

  Future<void> sendMessage() async {
    _messages.add(
      Message(
        isUser: true,
        label: inputCtrl.text,
      ),
    );
    inputCtrl.clear();

    setStatus(Status.loading);
    try {
      setStatus(Status.success);
    } catch (error) {
      setStatus(Status.error);
    }
  }
}
