import 'package:flutter/material.dart';
import 'package:flutter_app_eggyaya_bak/dao/house_dao.dart';
import 'package:flutter_app_eggyaya_bak/model/house.dart';
import 'package:flutter_app_eggyaya_bak/providers/view_state_list_model.dart';

class HouseModel extends ViewStateListModel<House> with TickerProviderStateMixin{

  List<Tab> _tabs;
  HouseModel(){
    initData();
  }

  TabController _tabController;
  // @override
  // Future<List> loadData() async {
  //   HouseDao houseDao = HouseDao();
  //   return await houseDao.getHouses();
  // }

  Future<int> insertHouse(House house) async{
    HouseDao houseDao = HouseDao();

    return house != null ? await houseDao.addHouse(house) : null;
  }

  Future<int> updateHouse(House house) async {
    HouseDao houseDao = HouseDao();
    return house != null ? await houseDao.upDateHouse(house) : null;
  }

  Future<int> deleteHouse(House house) async {
    HouseDao houseDao = HouseDao();
    return house != null ? await houseDao.upDateHouse(house,isWorking: false) : null;
  }

  @override
  Future<List<House>> loadData() async {
    HouseDao houseDao = HouseDao();
    return await houseDao.getHouses();
  }
//
// @override
// onCompleted(List<House> data) {
//   _tabs.addAll(data.map((house) => Tab(child: Text(house.hName),)).toList());
//   _tabController = TabController(length: _tabs.length, vsync: this);
//
// }
//
// TabController get tabController => _tabController;
//
// List<Tab> get tabs => _tabs;
}