import 'dart:core';

import 'package:bot_toast/bot_toast.dart';
import 'package:go_router/go_router.dart';

import 'package:bill/nav-bar.dart';

import 'package:bill/pages/task/tasks.dart';
import 'package:bill/pages/task/create-task.dart';
import 'package:bill/pages/task/edit-task.dart';
import 'package:bill/pages/task/task-detail.dart';

import 'package:bill/pages/bill/record.dart';

import 'package:bill/pages/reminder/reminders.dart';
import 'package:bill/pages/reminder/create-reminder.dart';
import 'package:bill/pages/reminder/edit-reminder.dart';
import 'package:bill/pages/reminder/reminder-detail.dart';

import 'package:bill/pages/limit/limit-set.dart';

import 'package:bill/pages/user/forgot.dart';
import 'package:bill/pages/group/create-group.dart';
import 'package:bill/pages/group/edit-group.dart';
import 'package:bill/pages/group/group-detail.dart';
import 'package:bill/pages/group/groups.dart';
import 'package:bill/pages/user/login.dart';
import 'package:bill/pages/user/profile.dart';
import 'package:bill/pages/user/register.dart';

import 'package:bill/pages/bill/month-bill-list.dart';

// const String LOGIN_PATH = 'login';
// static toPage(BuildContext context, String path, [bool checkLogin = true]) {
//   final userStore = AppStores.userStore;
//   if (checkLogin && userStore.logined != true) {
//     String finalPath = '$LOGIN_PATH?target=${Uri.encodeComponent(path)}';
//     return router.navigateTo(context, finalPath);
//   }
//   return router.navigateTo(context, path);
// }

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => TabPage(),
      routes: [
        // GoRoute(
        //   name: 'login',
        //   path: 'login',
        //   pageBuilder: (context, state) => LoginPage(target: state.uri.queryParameters['target']!),
        // ),
        // GoRoute(
        //   name: 'register',
        //   path: 'register',
        //   pageBuilder: (context, state) => RegisterPage(target: state.uri.queryParameters['target']!),
        // ),
        // GoRoute(
        //   name: 'forgot',
        //   path: 'forgot',
        //   pageBuilder: (context, state) => ForgotPage(),
        // ),
        // GoRoute(
        //   name: 'profile',
        //   path: 'profile',
        //   pageBuilder: (context, state) => ProfilePage(),
        // ),
        GoRoute(
          name: 'tasks',
          path: 'tasks',
          builder: (context, state) => TaskPage(),
        ),
        GoRoute(
          name: 'taskCreate',
          path: 'task-create',
          builder: (context, state) => CreateTaskPage(),
        ),
        GoRoute(
          name: 'taskEdit',
          path: 'task-edit/:id',
          builder: (context, state) => EditTaskPage(id: state.pathParameters['id']!),
        ),
        GoRoute(
          name: 'taskDetail',
          path: 'task-detail/:id',
          builder: (context, state) => TaskDetailPage(id: state.pathParameters['id']!),
        ),
        GoRoute(
          name: 'record',
          path: 'record',
          builder: (context, state) => RecordPage(),
        ),
        GoRoute(
          name: 'reminders',
          path: 'reminders',
          builder: (context, state) => RemindersPage(),
        ),
        GoRoute(
          name: 'reminderCreate',
          path: 'reminder-create',
          builder: (context, state) => CreateReminderPage(),
        ),
        GoRoute(
          name: 'reminderEdit',
          path: 'reminder-edit/:id',
          builder: (context, state) => EditReminderPage(id: state.pathParameters['id']!),
        ),
        GoRoute(
          name: 'reminderDetail',
          path: 'reminder-detail/:id',
          builder: (context, state) => ReminderDetailPage(id: state.pathParameters['id']!),
        ),
        GoRoute(
          name: 'limitSet',
          path: 'limit-set',
          builder: (context, state) => LimitSetPage(),
        ),
        GoRoute(
          name: 'groups',
          path: 'groups',
          builder: (context, state) => GroupsPage(),
        ),
        GoRoute(
          name: 'groupCreate',
          path: 'group-create',
          builder: (context, state) => CreateGroupPage(),
        ),
        GoRoute(
          name: 'groupEdit',
          path: 'group-edit/:id',
          builder: (context, state) => EditGroupPage(id: state.pathParameters['id']!),
        ),
        GoRoute(
          name: 'groupDetail',
          path: 'group-detail/:id',
          builder: (context, state) => GroupDetailPage(id: state.pathParameters['id']!),
        ),
        GoRoute(
          name: 'monthBillList',
          path: 'month-bill-list/:month',
          builder: (context, state) => MonthBillListPage(month: state.pathParameters['month']!),
        ),
      ],
    )
  ],
  observers: [BotToastNavigatorObserver()],
);
