import 'package:bill/iconfont.dart';
import 'package:flutter/material.dart';

class IconItem {
  String type;
  IconData icon;
  String desc;
  IconItem({required this.icon, required this.type, required this.desc});
}

List<IconItem> _paymentIcons = [
  IconItem(icon: IconFont.iconSesameCredit, type: 'p-1', desc: '花呗'),
  IconItem(icon: IconFont.iconCreditCard, type: 'p-2', desc: '信用卡'),
  IconItem(icon: IconFont.iconGiftMoney, type: 'p-3', desc: '礼金'),
  IconItem(icon: IconFont.iconGift, type: 'p-4', desc: '礼物'),
  IconItem(icon: IconFont.iconParents, type: 'p-5', desc: '孝敬长辈'),
  IconItem(icon: IconFont.iconKids, type: 'p-6', desc: '小孩'),
  IconItem(icon: IconFont.iconRepair, type: 'p-7', desc: '维修费'),
  IconItem(icon: IconFont.iconHome, type: 'p-8', desc: '房贷'),
  IconItem(icon: IconFont.iconOffice, type: 'p-9', desc: '公务支出'),
  IconItem(icon: IconFont.iconCar, type: 'p-10', desc: '汽车'),
  IconItem(icon: IconFont.iconLotteryTicket, type: 'p-11', desc: '彩票'),
  IconItem(icon: IconFont.iconPets, type: 'p-13', desc: '宠物'),
  IconItem(icon: IconFont.iconBook, type: 'p-14', desc: '书本费'),
  IconItem(icon: IconFont.iconMedical, type: 'p-15', desc: '医疗费'),
  IconItem(icon: IconFont.iconStudy, type: 'p-16', desc: '学习'),
  IconItem(icon: IconFont.iconDigital, type: 'p-17', desc: '数码'),
  IconItem(icon: IconFont.iconTrial, type: 'p-18', desc: '旅行'),
  IconItem(icon: IconFont.iconSupports, type: 'p-20', desc: '运动'),
  IconItem(icon: IconFont.iconBeauty, type: 'p-21', desc: '美容'),
  IconItem(icon: IconFont.iconSnack, type: 'p-22', desc: '零食'),
  IconItem(icon: IconFont.icoMobile, type: 'p-23', desc: '通讯'),
  IconItem(icon: IconFont.iconSofa, type: 'p-24', desc: '家具'),
  IconItem(icon: IconFont.iconCommunity, type: 'p-25', desc: '社交'),
  IconItem(icon: IconFont.iconEntertainment, type: 'p-26', desc: '娱乐'),
  IconItem(icon: IconFont.iconTraffic, type: 'p-27', desc: '交通'),
  IconItem(icon: IconFont.iconCloth, type: 'p-28', desc: '服饰'),
  IconItem(icon: IconFont.iconShopping, type: 'p-29', desc: '购物'),
  IconItem(icon: IconFont.iconRice, type: 'p-30', desc: '餐饮'),
  IconItem(icon: IconFont.iconCommon, type: 'p-31', desc: '其他')
];

Map<String, IconItem> _paymentIconMaps = {for (var v in _paymentIcons) v.type: v};

List<IconItem> _incomeIcons = [
  IconItem(icon: IconFont.iconSalaryIncome, type: 'i-1', desc: '工资'),
  IconItem(icon: IconFont.iconPluralismIncome, type: 'i-2', desc: '兼职'),
  IconItem(icon: IconFont.iconFinancialIncome, type: 'i-3', desc: '理财'),
  IconItem(icon: IconFont.iconRedPackageIncome, type: 'i-4', desc: '红包'),
  IconItem(icon: IconFont.iconRetirementIncome, type: 'i-5', desc: '退款'),
  IconItem(icon: IconFont.iconReimburseIncome, type: 'i-6', desc: '报销'),
  IconItem(icon: IconFont.iconMinutesIncome, type: 'i-7', desc: '分红'),
  IconItem(icon: IconFont.iconOtherIncome, type: 'i-8', desc: '其他')
];

Map<String, IconItem> _incomeIconMaps = {for (var v in _incomeIcons) v.type: v};

List<IconItem> _circleTypes = [
  IconItem(icon: IconFont.iconDormRoom, type: 'g-1', desc: '寝室'),
  IconItem(icon: IconFont.iconOffice, type: 'g-2', desc: '办公室'),
  IconItem(icon: IconFont.iconRenting, type: 'g-3', desc: '合租'),
  IconItem(icon: IconFont.iconEntertainment, type: 'g-4', desc: '一起玩'),
  IconItem(icon: IconFont.iconTrial, type: 'g-5', desc: '旅行'),
  IconItem(icon: IconFont.iconFamily, type: 'g-6', desc: '家庭'),
  IconItem(icon: IconFont.iconBusiness, type: 'g-7', desc: '生意场'),
  IconItem(icon: IconFont.iconClass, type: 'g-8', desc: '班集体'),
  IconItem(icon: IconFont.iconSkirt, type: 'g-9', desc: '姐妹淘')
];

Map<String, IconItem> _circleTypeMaps = {for (var v in _circleTypes) v.type: v};

int _paymentIconsLength = _paymentIcons.length;
int _incomeIconsLength = _incomeIcons.length;
int _circleTypesLength = _circleTypes.length;

class MethodsIcons {
  static List<IconItem> paymentIcons = _paymentIcons;

  static Map<String, IconItem> paymentIconMaps = _paymentIconMaps;

  static List<IconItem> incomeIcons = _incomeIcons;

  static Map<String, IconItem> incomeIconMaps = _incomeIconMaps;

  static List<IconItem> circleTypes = _circleTypes;

  static Map<String, IconItem> circleTypeMaps = _circleTypeMaps;

  static int paymentLength = _paymentIconsLength;

  static int incomeLength = _incomeIconsLength;

  static int circleTypesLength = _circleTypesLength;

  static int paymentRowLengthMax = (_paymentIconsLength ~/ 2).ceil();

  static int incomeRowLengthMax = (_incomeIconsLength ~/ 2).ceil();
}
