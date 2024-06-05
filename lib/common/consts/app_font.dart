import 'package:flutter/widgets.dart';
import 'app_colors.dart';

extension TextExternsion on Text {
  Text appBar({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w300,
      fontSize: 24,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text bigBody({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      fontSize: 24,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text newCardTitle({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      fontSize: 20,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text smallTitle({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w700,
      fontSize: 20,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text button({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w700,
      fontSize: 16,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text smallBody({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      fontSize: 14,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text cardTitle({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.bold,
      fontSize: 16,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text cardBody({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      fontSize: 12,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text corpAppBarName({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      fontSize: 14,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text corpAppBarTitle({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      fontSize: 10,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text cardInfo({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      fontSize: 10,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text title({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      fontSize: 24,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text item({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      fontSize: 16,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text subTitle({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
      fontSize: 20,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text itemTitle({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      fontSize: 15,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text itemSubTitle({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      fontSize: 10,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text itemBodyTitle({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      fontSize: 18,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text itemBody({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
      fontSize: 14,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text body({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
      fontSize: 16,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text subBody({TextStyle? style}) {
    const defaultStyle = TextStyle(
      decoration: TextDecoration.none,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
      fontSize: 12,
      fontStyle: FontStyle.normal,
      color: AppColors.purple,
    );
    return Text(data!,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }
}
