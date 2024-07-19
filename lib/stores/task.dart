import 'package:bill/api.dart';
import 'package:bill/bean/task.dart';
import 'package:bill/http/http-util.dart';
import 'package:bill/stores/base.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:mobx/mobx.dart';

part 'task.g.dart';

class TaskStore = _TaskStore with _$TaskStore;

abstract class _TaskStore extends BaseStore with Store {
  @observable
  late List<TaskItem> tasks;

  @observable
  late TaskItem? current;

  @action
  Future<bool> createTask(Map<String, dynamic> task) async {
    try {
      switchLoading(true);

      Map<String, dynamic> resp = await HttpUtil.request(Api.createTask, task, HttpUtil.POST);
      HttpResponse data = new HttpResponse.formJson(resp);

      switchLoading(false);

      BotToast.showText(text: data.message);

      return data.success;
    } catch (e) {
      switchLoading(false);
      BotToast.showText(text: HttpUtil.UNKNOWN_ERROR);
      return false;
    }
  }

  Future<bool> updateTask(Map<String, dynamic> task) async {
    try {
      switchLoading(true);
      Map<String, dynamic> resp = await HttpUtil.request(Api.updateTask, task, HttpUtil.PUT);

      HttpResponse data = new HttpResponse.formJson(resp);

      switchLoading(false);

      BotToast.showText(text: data.message);

      return data.success;
    } catch (e) {
      switchLoading(false);
      BotToast.showText(text: HttpUtil.UNKNOWN_ERROR);
      return false;
    }
  }

  @action
  Future<bool> queryTask([bool toast = false]) async {
    try {
      switchLoading(true);

      Map<String, dynamic> resp = await HttpUtil.request(Api.queryTask, {}, HttpUtil.GET);

      HttpResponse data = new HttpResponse.formJson(resp);

      if (data.success) {
        tasks = [];
        data.data.toList().forEach((json) => {tasks.add(new TaskItem.fromJson(json))});
      }

      switchLoading(false);

      if (toast) {
        BotToast.showText(text: data.message);
      }
      return data.success;
    } catch (e) {
      switchLoading(false);
      if (toast) {
        BotToast.showText(text: HttpUtil.UNKNOWN_ERROR);
      }
      return false;
    }
  }

  @action
  Future<bool> getDetail(String id) async {
    try {
      switchLoading(true);

      Map<String, dynamic> resp = await HttpUtil.request(Api.taskDetail, {'id': id}, HttpUtil.GET);

      HttpResponse data = new HttpResponse.formJson(resp);

      switchLoading(false);

      if (data.success) {
        current = new TaskItem.fromJson(data.data);
      } else {
        BotToast.showText(text: data.message);
      }

      return data.success;
    } catch (e) {
      current = null;
      switchLoading(false);
      BotToast.showText(text: HttpUtil.UNKNOWN_ERROR);
      return false;
    }
  }

  @action
  Future<bool> deleteTask(String id) async {
    try {
      switchLoading(true);

      Map<String, dynamic> resp = await HttpUtil.request(Api.deleteTask, {'id': id}, HttpUtil.DELETE);

      HttpResponse data = new HttpResponse.formJson(resp);

      switchLoading(false);

      BotToast.showText(text: data.message);
      return data.success;
    } catch (e) {
      switchLoading(false);
      BotToast.showText(text: HttpUtil.UNKNOWN_ERROR);
      return false;
    }
  }
}
