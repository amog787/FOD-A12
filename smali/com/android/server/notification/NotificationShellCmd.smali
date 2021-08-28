.class public Lcom/android/server/notification/NotificationShellCmd;
.super Landroid/os/ShellCommand;
.source "NotificationShellCmd.java"


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "shell_cmd"

.field public static final CHANNEL_IMP:I = 0x3

.field public static final CHANNEL_NAME:Ljava/lang/String; = "Shell command"

.field public static final NOTIFICATION_ID:I = 0x7e4

.field private static final NOTIFY_USAGE:Ljava/lang/String; = "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

.field private static final TAG:Ljava/lang/String; = "NotifShellCmd"

.field private static final USAGE:Ljava/lang/String; = "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n"


# instance fields
.field private final mBinderService:Landroid/app/INotificationManager;

.field private mChannel:Landroid/app/NotificationChannel;

.field private final mDirectService:Lcom/android/server/notification/NotificationManagerService;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/notification/NotificationManagerService;

    .line 119
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 121
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 122
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    .line 123
    return-void
.end method

.method private doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I
    .locals 29
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 462
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 463
    .local v11, "context":Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 464
    .local v12, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    const-string/jumbo v3, "shell_cmd"

    invoke-direct {v0, v11, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v13, v0

    .line 467
    .local v13, "builder":Landroid/app/Notification$Builder;
    const/4 v0, 0x0

    .line 468
    .local v0, "verbose":Z
    const/4 v3, 0x0

    .line 469
    .local v3, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    const/4 v4, 0x0

    .line 470
    .local v4, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    const/4 v5, 0x0

    .line 471
    .local v5, "inboxStyle":Landroid/app/Notification$InboxStyle;
    const/4 v6, 0x0

    .line 472
    .local v6, "mediaStyle":Landroid/app/Notification$MediaStyle;
    const/4 v7, 0x0

    .line 474
    .local v7, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    const/4 v8, 0x0

    move v14, v0

    move-object v15, v3

    move-object v9, v4

    move-object/from16 v16, v6

    move-object v6, v8

    move-object v8, v5

    .line 475
    .end local v0    # "verbose":Z
    .end local v3    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .end local v4    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .end local v5    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v6, "smallIcon":Landroid/graphics/drawable/Icon;
    .local v8, "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v9, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .local v14, "verbose":Z
    .local v15, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .local v16, "mediaStyle":Landroid/app/Notification$MediaStyle;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .local v5, "opt":Ljava/lang/String;
    const-string/jumbo v3, "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

    if-eqz v0, :cond_11

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "large":Z
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v18

    const/16 v19, 0x4

    const/16 v20, 0x3

    sparse-switch v18, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v4, "large-icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "--verbose"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "--line"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x18

    goto/16 :goto_2

    :sswitch_3
    const-string v4, "--icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xb

    goto/16 :goto_2

    :sswitch_4
    const-string v4, "--help"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1c

    goto/16 :goto_2

    :sswitch_5
    const-string v4, "--bigtext"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x15

    goto/16 :goto_2

    :sswitch_6
    const-string v4, "--bigText"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x14

    goto/16 :goto_2

    :sswitch_7
    const-string v4, "--largeicon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto/16 :goto_2

    :sswitch_8
    const-string v4, "--intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x10

    goto/16 :goto_2

    :sswitch_9
    const-string v4, "--picture"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x17

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v4, "largeicon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto/16 :goto_2

    :sswitch_b
    const-string v4, "--content-intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xe

    goto/16 :goto_2

    :sswitch_c
    const-string v4, "--big-text"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x16

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v4, "title"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move/from16 v4, v19

    goto/16 :goto_2

    :sswitch_e
    const-string v4, "--wtf"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1d

    goto/16 :goto_2

    :sswitch_f
    const-string v4, "icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xc

    goto/16 :goto_2

    :sswitch_10
    const-string v4, "-v"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_2

    :sswitch_11
    const-string v4, "-t"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto/16 :goto_2

    :sswitch_12
    const-string v4, "-i"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xa

    goto/16 :goto_2

    :sswitch_13
    const-string v4, "-h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1b

    goto/16 :goto_2

    :sswitch_14
    const-string v4, "-c"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xd

    goto/16 :goto_2

    :sswitch_15
    const-string v4, "-S"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x12

    goto :goto_2

    :sswitch_16
    const-string v4, "-I"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_17
    const-string v4, "--large-icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_2

    :sswitch_18
    const-string v4, "--conversation"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1a

    goto :goto_2

    :sswitch_19
    const-string v4, "intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x11

    goto :goto_2

    :sswitch_1a
    const-string v4, "content-intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xf

    goto :goto_2

    :sswitch_1b
    const-string v4, "--title"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move/from16 v4, v20

    goto :goto_2

    :sswitch_1c
    const-string v4, "--style"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x13

    goto :goto_2

    :sswitch_1d
    const-string v4, "--message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x19

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 634
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    const/4 v4, 0x0

    return v4

    .line 624
    :pswitch_0
    if-eqz v7, :cond_1

    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 629
    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto/16 :goto_c

    .line 625
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "--conversation requires --style messaging"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 606
    :pswitch_1
    if-eqz v7, :cond_3

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 611
    .local v3, "arg":Ljava/lang/String;
    const-string v4, ":"

    move/from16 v23, v0

    const/4 v0, 0x2

    .end local v0    # "large":Z
    .local v23, "large":Z
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 612
    .local v4, "parts":[Ljava/lang/String;
    array-length v0, v4

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .end local v3    # "arg":Ljava/lang/String;
    .local v17, "arg":Ljava/lang/String;
    if-le v0, v3, :cond_2

    .line 613
    aget-object v0, v4, v3

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v24, "smallIcon":Landroid/graphics/drawable/Icon;
    .local v25, "opt":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-virtual {v7, v0, v5, v6, v3}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto/16 :goto_c

    .line 616
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_2
    move-object/from16 v25, v5

    move-object/from16 v24, v6

    const/4 v3, 0x0

    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    aget-object v0, v4, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v18, v4

    const/4 v3, 0x2

    .end local v4    # "parts":[Ljava/lang/String;
    .local v18, "parts":[Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    .line 618
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle;->getUserDisplayName()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v4, v20

    const-string v19, "Them"

    const/16 v22, 0x1

    aput-object v19, v4, v22

    .line 620
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    rem-int/lit8 v19, v19, 0x2

    aget-object v3, v4, v19

    .line 616
    invoke-virtual {v7, v0, v5, v6, v3}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 622
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto/16 :goto_c

    .line 607
    .end local v17    # "arg":Ljava/lang/String;
    .end local v18    # "parts":[Ljava/lang/String;
    .end local v23    # "large":Z
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v0    # "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_3
    move/from16 v23, v0

    .end local v0    # "large":Z
    .restart local v23    # "large":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--message requires --style messaging"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    .end local v23    # "large":Z
    .restart local v0    # "large":Z
    :pswitch_2
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v23    # "large":Z
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 604
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto/16 :goto_c

    .line 601
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--line requires --style inbox"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    .end local v23    # "large":Z
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v0    # "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_3
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v23    # "large":Z
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "pictureSpec":Ljava/lang/String;
    invoke-virtual {v1, v12, v0}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 589
    .local v3, "pictureAsIcon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_6

    .line 592
    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 593
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_5

    .line 594
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto/16 :goto_c

    .line 596
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    .end local v3    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    .local v17, "pictureAsIcon":Landroid/graphics/drawable/Icon;
    const-string/jumbo v3, "not a bitmap: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 590
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v17    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    .restart local v3    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    :cond_6
    move-object/from16 v17, v3

    .end local v3    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    .restart local v17    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad picture spec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 585
    .end local v0    # "pictureSpec":Ljava/lang/String;
    .end local v17    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--picture requires --style bigpicture"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    .end local v23    # "large":Z
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .local v0, "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_4
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v23    # "large":Z
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 582
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto/16 :goto_c

    .line 579
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--bigtext requires --style bigtext"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    .end local v23    # "large":Z
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v0    # "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_5
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    const/4 v3, 0x2

    const/16 v22, 0x1

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v23    # "large":Z
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "styleSpec":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_9
    goto :goto_3

    :sswitch_1e
    const-string/jumbo v3, "media"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move/from16 v4, v19

    goto :goto_4

    :sswitch_1f
    const-string v4, "inbox"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_4

    :sswitch_20
    const-string v3, "bigpicture"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move/from16 v4, v22

    goto :goto_4

    :sswitch_21
    const-string v3, "bigtext"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x0

    goto :goto_4

    :sswitch_22
    const-string/jumbo v3, "messaging"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move/from16 v4, v20

    goto :goto_4

    :goto_3
    const/4 v4, -0x1

    :goto_4
    packed-switch v4, :pswitch_data_1

    .line 573
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unrecognized notification style: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 569
    :pswitch_6
    new-instance v3, Landroid/app/Notification$MediaStyle;

    invoke-direct {v3}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 570
    .end local v16    # "mediaStyle":Landroid/app/Notification$MediaStyle;
    .local v3, "mediaStyle":Landroid/app/Notification$MediaStyle;
    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 571
    move-object/from16 v16, v3

    goto :goto_5

    .line 559
    .end local v3    # "mediaStyle":Landroid/app/Notification$MediaStyle;
    .restart local v16    # "mediaStyle":Landroid/app/Notification$MediaStyle;
    :pswitch_7
    const-string v3, "You"

    .line 560
    .local v3, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v4

    const-string v5, "--user"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 564
    :cond_a
    new-instance v4, Landroid/app/Notification$MessagingStyle;

    new-instance v5, Landroid/app/Person$Builder;

    invoke-direct {v5}, Landroid/app/Person$Builder;-><init>()V

    .line 565
    invoke-virtual {v5, v3}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    move-object v7, v4

    .line 566
    invoke-virtual {v13, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 567
    goto :goto_5

    .line 555
    .end local v3    # "name":Ljava/lang/String;
    :pswitch_8
    new-instance v3, Landroid/app/Notification$InboxStyle;

    invoke-direct {v3}, Landroid/app/Notification$InboxStyle;-><init>()V

    move-object v8, v3

    .line 556
    invoke-virtual {v13, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 557
    goto :goto_5

    .line 551
    :pswitch_9
    new-instance v3, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    move-object v15, v3

    .line 552
    invoke-virtual {v13, v15}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 553
    goto :goto_5

    .line 547
    :pswitch_a
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object v9, v3

    .line 548
    invoke-virtual {v13, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 549
    nop

    .line 576
    :goto_5
    move-object/from16 v6, v24

    move-object/from16 v20, v25

    goto/16 :goto_d

    .line 515
    .end local v23    # "large":Z
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .local v0, "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_b
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    const/4 v3, 0x2

    const/16 v22, 0x1

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v23    # "large":Z
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 516
    .local v0, "intentKind":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string/jumbo v6, "service"

    const-string v3, "broadcast"

    sparse-switch v5, :sswitch_data_2

    :cond_b
    goto :goto_6

    :sswitch_23
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move/from16 v4, v22

    goto :goto_7

    :sswitch_24
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    goto :goto_7

    :sswitch_25
    const-string v5, "activity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x2

    goto :goto_7

    :goto_6
    const/4 v4, -0x1

    :goto_7
    packed-switch v4, :pswitch_data_2

    goto :goto_8

    .line 520
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 522
    :goto_8
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v5

    .line 523
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_c

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .local v18, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    const-string/jumbo v7, "xyz:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v8

    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v19, "inboxStyle":Landroid/app/Notification$InboxStyle;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_9

    .line 523
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :cond_c
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .line 528
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :goto_9
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v4, 0xa000000

    if-eqz v3, :cond_d

    .line 529
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-static {v11, v7, v5, v4, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v17, v5

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    .local v3, "pi":Landroid/app/PendingIntent;
    goto :goto_a

    .line 532
    .end local v3    # "pi":Landroid/app/PendingIntent;
    :cond_d
    const/4 v7, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 533
    invoke-static {v11, v7, v5, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v17, v5

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    .restart local v3    # "pi":Landroid/app/PendingIntent;
    goto :goto_a

    .line 536
    .end local v3    # "pi":Landroid/app/PendingIntent;
    :cond_e
    const/4 v4, 0x0

    const/high16 v6, 0xa000000

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v3, v11

    move-object/from16 v17, v5

    move-object/from16 v20, v25

    .end local v5    # "intent":Landroid/content/Intent;
    .end local v25    # "opt":Ljava/lang/String;
    .local v17, "intent":Landroid/content/Intent;
    .local v20, "opt":Ljava/lang/String;
    move-object/from16 v26, v24

    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v26, "smallIcon":Landroid/graphics/drawable/Icon;
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 540
    .restart local v3    # "pi":Landroid/app/PendingIntent;
    :goto_a
    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 541
    goto :goto_c

    .line 477
    .end local v3    # "pi":Landroid/app/PendingIntent;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v20    # "opt":Ljava/lang/String;
    .end local v23    # "large":Z
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v0, "large":Z
    .local v5, "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_d
    move/from16 v23, v0

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v20    # "opt":Ljava/lang/String;
    .restart local v23    # "large":Z
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    goto :goto_b

    .line 492
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v20    # "opt":Ljava/lang/String;
    .end local v23    # "large":Z
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v0    # "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_e
    move/from16 v23, v0

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v20    # "opt":Ljava/lang/String;
    .restart local v23    # "large":Z
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    const/4 v0, 0x1

    .line 497
    .end local v23    # "large":Z
    .restart local v0    # "large":Z
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, "iconSpec":Ljava/lang/String;
    invoke-virtual {v1, v12, v3}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 499
    .local v4, "icon":Landroid/graphics/drawable/Icon;
    if-nez v4, :cond_f

    .line 500
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error: invalid icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    const/4 v5, -0x1

    return v5

    .line 503
    :cond_f
    if-eqz v0, :cond_10

    .line 504
    invoke-virtual {v13, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 505
    const/4 v0, 0x0

    goto :goto_c

    .line 507
    :cond_10
    move-object v5, v4

    .line 509
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v5, "smallIcon":Landroid/graphics/drawable/Icon;
    move-object v6, v5

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto :goto_d

    .line 485
    .end local v3    # "iconSpec":Ljava/lang/String;
    .end local v4    # "icon":Landroid/graphics/drawable/Icon;
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v20    # "opt":Ljava/lang/String;
    .local v5, "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_f
    move/from16 v23, v0

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v20    # "opt":Ljava/lang/String;
    .restart local v23    # "large":Z
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 486
    nop

    .line 637
    .end local v23    # "large":Z
    :goto_c
    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v6, v26

    goto :goto_d

    .line 480
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v20    # "opt":Ljava/lang/String;
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v0    # "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_10
    move/from16 v23, v0

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v20    # "opt":Ljava/lang/String;
    .restart local v23    # "large":Z
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    const/4 v0, 0x1

    .line 481
    .end local v14    # "verbose":Z
    .local v0, "verbose":Z
    move v14, v0

    .line 637
    .end local v0    # "verbose":Z
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v23    # "large":Z
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v14    # "verbose":Z
    :goto_d
    goto/16 :goto_0

    .line 639
    .end local v20    # "opt":Ljava/lang/String;
    .restart local v5    # "opt":Ljava/lang/String;
    :cond_11
    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    const/4 v4, 0x0

    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v20    # "opt":Ljava/lang/String;
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v8

    .line 640
    .local v8, "tag":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 641
    .local v7, "text":Ljava/lang/String;
    if-eqz v8, :cond_18

    if-nez v7, :cond_12

    move-object/from16 v24, v7

    move-object v5, v8

    move-object/from16 v25, v9

    move-object/from16 v21, v26

    goto/16 :goto_13

    .line 646
    :cond_12
    invoke-virtual {v13, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 648
    move-object/from16 v6, v26

    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    if-nez v6, :cond_13

    .line 650
    const v0, 0x1080077

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_e

    .line 652
    :cond_13
    invoke-virtual {v13, v6}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 655
    :goto_e
    move/from16 v5, p3

    invoke-virtual {v1, v10, v5}, Lcom/android/server/notification/NotificationShellCmd;->ensureChannel(Ljava/lang/String;I)V

    .line 657
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 658
    .local v3, "n":Landroid/app/Notification;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "posting:\n  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "posting: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NotificationManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/16 v17, 0x7e4

    .line 662
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    .line 661
    move-object/from16 v23, v3

    .end local v3    # "n":Landroid/app/Notification;
    .local v23, "n":Landroid/app/Notification;
    move-object v3, v0

    move-object/from16 v4, p2

    move-object/from16 v5, p2

    move-object/from16 v21, v6

    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v21, "smallIcon":Landroid/graphics/drawable/Icon;
    move-object v6, v8

    move-object/from16 v24, v7

    .end local v7    # "text":Ljava/lang/String;
    .local v24, "text":Ljava/lang/String;
    move/from16 v7, v17

    move-object/from16 v27, v8

    .end local v8    # "tag":Ljava/lang/String;
    .local v27, "tag":Ljava/lang/String;
    move-object/from16 v8, v23

    move-object/from16 v25, v9

    .end local v9    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .local v25, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    move/from16 v9, v22

    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 664
    if-eqz v14, :cond_17

    .line 665
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 666
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 665
    const/16 v4, 0x7e4

    move-object/from16 v5, v27

    .end local v27    # "tag":Ljava/lang/String;
    .local v5, "tag":Ljava/lang/String;
    invoke-virtual {v0, v10, v5, v4, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 667
    .local v0, "nr":Lcom/android/server/notification/NotificationRecord;
    const/4 v3, 0x3

    move/from16 v28, v3

    move-object v3, v0

    move/from16 v0, v28

    .local v0, "tries":I
    .local v3, "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_f
    add-int/lit8 v6, v0, -0x1

    .end local v0    # "tries":I
    .local v6, "tries":I
    if-lez v0, :cond_15

    .line 668
    if-eqz v3, :cond_14

    goto :goto_11

    .line 670
    :cond_14
    :try_start_0
    const-string/jumbo v0, "waiting for notification to post..."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    goto :goto_10

    .line 672
    :catch_0
    move-exception v0

    .line 674
    :goto_10
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 675
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 674
    invoke-virtual {v0, v10, v5, v4, v7}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    move v0, v6

    goto :goto_f

    .line 677
    .end local v6    # "tries":I
    :cond_15
    :goto_11
    if-nez v3, :cond_16

    .line 678
    const-string/jumbo v0, "warning: couldn\'t find notification after enqueueing"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_12

    .line 680
    :cond_16
    const-string/jumbo v0, "posted: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    const-string v0, "  "

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v11, v4}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_12

    .line 664
    .end local v3    # "nr":Lcom/android/server/notification/NotificationRecord;
    .end local v5    # "tag":Ljava/lang/String;
    .restart local v27    # "tag":Ljava/lang/String;
    :cond_17
    move-object/from16 v5, v27

    const/4 v4, 0x0

    .line 685
    .end local v27    # "tag":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    :goto_12
    return v4

    .line 641
    .end local v5    # "tag":Ljava/lang/String;
    .end local v21    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v23    # "n":Landroid/app/Notification;
    .end local v24    # "text":Ljava/lang/String;
    .end local v25    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .restart local v7    # "text":Ljava/lang/String;
    .restart local v8    # "tag":Ljava/lang/String;
    .restart local v9    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_18
    move-object/from16 v24, v7

    move-object v5, v8

    move-object/from16 v25, v9

    move-object/from16 v21, v26

    .line 642
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v21    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v24    # "text":Ljava/lang/String;
    .restart local v25    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    :goto_13
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    const/4 v0, -0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74789999 -> :sswitch_1d
        -0x603263ef -> :sswitch_1c
        -0x60295f48 -> :sswitch_1b
        -0x4821dd90 -> :sswitch_1a
        -0x468ec964 -> :sswitch_19
        -0x32dd8ddd -> :sswitch_18
        -0x2bc1295 -> :sswitch_17
        0x5bc -> :sswitch_16
        0x5c6 -> :sswitch_15
        0x5d6 -> :sswitch_14
        0x5db -> :sswitch_13
        0x5dc -> :sswitch_12
        0x5e7 -> :sswitch_11
        0x5e9 -> :sswitch_10
        0x313c79 -> :sswitch_f
        0x2906389 -> :sswitch_e
        0x6942258 -> :sswitch_d
        0x2a056f7a -> :sswitch_c
        0x2a13d010 -> :sswitch_b
        0x2d3ae234 -> :sswitch_a
        0x302cc35e -> :sswitch_9
        0x487e843c -> :sswitch_8
        0x4a573094 -> :sswitch_7
        0x4bbf1cad -> :sswitch_6
        0x4bcda88d -> :sswitch_5
        0x4f7504e1 -> :sswitch_4
        0x4f757219 -> :sswitch_3
        0x4f76e594 -> :sswitch_2
        0x6789dfe2 -> :sswitch_1
        0x76d66fcb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x55d4c8fc -> :sswitch_22
        -0x6cebdd3 -> :sswitch_21
        -0x2a7c002 -> :sswitch_20
        0x5fb2286 -> :sswitch_1f
        0x62f6fe4 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x62b40cf1 -> :sswitch_25
        -0x607e173f -> :sswitch_24
        0x7643c6b5 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method protected checkShellCommandPermission(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .line 126
    if-eqz p1, :cond_1

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method ensureChannel(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    new-instance v0, Landroid/app/NotificationChannel;

    const-string/jumbo v1, "shell_cmd"

    const-string v2, "Shell command"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 427
    .local v0, "channel":Landroid/app/NotificationChannel;
    iget-object v2, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    .line 428
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 427
    invoke-interface {v2, p1, v3}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 431
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 430
    invoke-interface {v3, p1, v4, p1, v1}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    const-string v2, "NotificationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 25
    .param p1, "cmd"    # Ljava/lang/String;

    .line 131
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    .line 132
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 134
    :cond_0
    const/4 v3, 0x0

    .line 135
    .local v3, "callingPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 136
    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 138
    .local v5, "identity":J
    const-string v7, "NotifShellCmd"

    const/4 v8, 0x0

    if-nez v4, :cond_1

    .line 139
    :try_start_0
    const-string/jumbo v0, "root"

    move-object v3, v0

    .end local v3    # "callingPackage":Ljava/lang/String;
    .local v0, "callingPackage":Ljava/lang/String;
    goto :goto_0

    .line 141
    .end local v0    # "callingPackage":Ljava/lang/String;
    .restart local v3    # "callingPackage":Ljava/lang/String;
    :cond_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v9, v0

    if-lez v9, :cond_2

    .line 143
    aget-object v9, v0, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v9

    .line 149
    .end local v0    # "packages":[Ljava/lang/String;
    :cond_2
    :goto_0
    nop

    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    goto :goto_2

    .line 149
    :catchall_0
    move-exception v0

    goto/16 :goto_16

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v9, "failed to get caller pkg"

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 152
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    .line 154
    .local v9, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationShellCmd;->checkShellCommandPermission(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error: permission denied: callingUid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " callingPackage="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    const/16 v0, 0xff

    return v0

    .line 163
    :cond_3
    const/16 v0, 0x2d

    const/16 v7, 0x5f

    :try_start_2
    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v15, 0x1

    sparse-switch v7, :sswitch_data_0

    :cond_4
    goto/16 :goto_3

    :sswitch_0
    const-string v7, "allow_assistant"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto/16 :goto_4

    :sswitch_1
    const-string/jumbo v7, "set_dnd"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v8

    goto/16 :goto_4

    :sswitch_2
    const-string v7, "disallow_listener"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto/16 :goto_4

    :sswitch_3
    const-string/jumbo v7, "reset_assistant_user_set"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    goto/16 :goto_4

    :sswitch_4
    const-string v7, "allow_dnd"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v15

    goto/16 :goto_4

    :sswitch_5
    const-string/jumbo v7, "set_bubbles"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    goto/16 :goto_4

    :sswitch_6
    const-string/jumbo v7, "post"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    goto/16 :goto_4

    :sswitch_7
    const-string/jumbo v7, "list"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xd

    goto/16 :goto_4

    :sswitch_8
    const-string v7, "get"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xe

    goto/16 :goto_4

    :sswitch_9
    const-string/jumbo v7, "unsnooze"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x10

    goto :goto_4

    :sswitch_a
    const-string v7, "get_approved_assistant"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_4

    :sswitch_b
    const-string v7, "disallow_dnd"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v13

    goto :goto_4

    :sswitch_c
    const-string v7, "allow_listener"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v12

    goto :goto_4

    :sswitch_d
    const-string/jumbo v7, "snooze"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x11

    goto :goto_4

    :sswitch_e
    const-string/jumbo v7, "notify"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc

    goto :goto_4

    :sswitch_f
    const-string v7, "disallow_assistant"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_4

    :sswitch_10
    const-string/jumbo v7, "set_bubbles_channel"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xa

    goto :goto_4

    :sswitch_11
    const-string/jumbo v7, "snoozed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_4

    const/16 v0, 0xf

    goto :goto_4

    :goto_3
    const/4 v0, -0x1

    :goto_4
    const-string v7, "Invalid assistant - must be a ComponentName"

    const-string v10, "Invalid listener - must be a ComponentName"

    packed-switch v0, :pswitch_data_0

    .line 415
    :try_start_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_13

    .line 368
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 369
    .local v0, "subflag":Ljava/lang/String;
    const-string v7, "help"

    if-nez v0, :cond_5

    .line 370
    move-object v0, v7

    goto :goto_5

    .line 371
    :cond_5
    :try_start_4
    const-string v10, "--"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 372
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 374
    :cond_6
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v10

    .line 375
    .local v10, "flagarg":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v24, v17

    .line 376
    .local v24, "key":Ljava/lang/String;
    move-object/from16 v11, v24

    .end local v24    # "key":Ljava/lang/String;
    .local v11, "key":Ljava/lang/String;
    if-nez v11, :cond_7

    move-object v0, v7

    .line 377
    :cond_7
    const/4 v7, 0x0

    .line 378
    .local v7, "criterion":Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 379
    .local v18, "duration":J
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_1

    :cond_8
    goto :goto_6

    :sswitch_12
    const-string v12, "context"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move/from16 v16, v8

    goto :goto_7

    :sswitch_13
    const-string v12, "criterion"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move/from16 v16, v13

    goto :goto_7

    :sswitch_14
    const-string/jumbo v14, "until"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move/from16 v16, v12

    goto :goto_7

    :sswitch_15
    const-string v12, "for"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v16, 0x4

    goto :goto_7

    :sswitch_16
    const-string v12, "condition"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move/from16 v16, v15

    goto :goto_7

    :sswitch_17
    const-string v12, "duration"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v16, 0x5

    goto :goto_7

    :goto_6
    const/16 v16, -0x1

    :goto_7
    packed-switch v16, :pswitch_data_1

    .line 391
    const-string/jumbo v8, "usage: cmd notification snooze (--for <msec> | --context <snooze-criterion-id>) <key>"

    goto/16 :goto_b

    .line 388
    :pswitch_1
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 389
    goto :goto_8

    .line 383
    :pswitch_2
    move-object v7, v10

    .line 384
    move-wide/from16 v16, v18

    .line 395
    .end local v18    # "duration":J
    .local v16, "duration":J
    :goto_8
    iget-object v12, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v12, v11}, Lcom/android/server/notification/NotificationManagerService;->getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v12

    if-nez v12, :cond_9

    .line 396
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error: no notification matching key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    return v15

    .line 399
    :cond_9
    const-wide/16 v18, 0x0

    cmp-long v12, v16, v18

    if-gtz v12, :cond_b

    if-eqz v7, :cond_a

    goto :goto_9

    .line 409
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error: invalid value for --"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    return v15

    .line 400
    :cond_b
    :goto_9
    cmp-long v12, v16, v18

    if-lez v12, :cond_c

    .line 401
    const-string/jumbo v12, "snoozing <%s> until time: %s"

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v11, v13, v8

    new-instance v14, Ljava/util/Date;

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v24, v9

    .end local v9    # "pw":Ljava/io/PrintWriter;
    .local v24, "pw":Ljava/io/PrintWriter;
    add-long v8, v18, v16

    :try_start_5
    invoke-direct {v14, v8, v9}, Ljava/util/Date;-><init>(J)V

    aput-object v14, v13, v15

    .line 401
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v9, v24

    .end local v24    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "pw":Ljava/io/PrintWriter;
    :try_start_6
    invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 417
    .end local v0    # "subflag":Ljava/lang/String;
    .end local v7    # "criterion":Ljava/lang/String;
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .end local v10    # "flagarg":Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    .end local v16    # "duration":J
    .restart local v24    # "pw":Ljava/io/PrintWriter;
    :catch_1
    move-exception v0

    move-object/from16 v9, v24

    .end local v24    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_14

    .line 404
    .restart local v0    # "subflag":Ljava/lang/String;
    .restart local v7    # "criterion":Ljava/lang/String;
    .restart local v10    # "flagarg":Ljava/lang/String;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v16    # "duration":J
    :cond_c
    const-string/jumbo v8, "snoozing <%s> until criterion: %s"

    new-array v12, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    aput-object v7, v12, v15

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    :goto_a
    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    const/16 v23, 0x0

    move-object/from16 v18, v8

    move-object/from16 v19, v11

    move-wide/from16 v20, v16

    move-object/from16 v22, v7

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/notification/NotificationManagerService;->snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto/16 :goto_12

    .line 391
    .end local v16    # "duration":J
    .restart local v18    # "duration":J
    :goto_b
    invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    return v15

    .line 352
    .end local v0    # "subflag":Ljava/lang/String;
    .end local v7    # "criterion":Ljava/lang/String;
    .end local v10    # "flagarg":Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    .end local v18    # "duration":J
    :pswitch_3
    const/4 v0, 0x0

    .line 353
    .local v0, "mute":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 354
    .local v7, "key":Ljava/lang/String;
    const-string v8, "--mute"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 355
    const/4 v0, 0x1

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 358
    :cond_d
    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/notification/SnoozeHelper;->getNotification(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 359
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unsnoozing: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v10, v0}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    goto/16 :goto_12

    .line 362
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error: no snoozed otification matching key: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    return v15

    .line 337
    .end local v0    # "mute":Z
    .end local v7    # "key":Ljava/lang/String;
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 339
    .local v7, "sh":Lcom/android/server/notification/SnoozeHelper;
    invoke-virtual {v7}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    .line 340
    .local v10, "nr":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 341
    .local v11, "pkg":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 342
    .local v12, "key":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " snoozed, time="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v14

    .line 343
    invoke-virtual {v7, v14, v11, v12}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeTimeForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " context="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v14

    .line 346
    invoke-virtual {v7, v14, v11, v12}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeContextForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 342
    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    .end local v10    # "nr":Lcom/android/server/notification/NotificationRecord;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    goto :goto_c

    .line 349
    :cond_f
    goto/16 :goto_12

    .line 326
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "sh":Lcom/android/server/notification/SnoozeHelper;
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "key":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7, v0}, Lcom/android/server/notification/NotificationManagerService;->getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v7

    .line 328
    .local v7, "nr":Lcom/android/server/notification/NotificationRecord;
    if-eqz v7, :cond_10

    .line 329
    const-string v8, ""

    iget-object v10, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v8, v10, v11}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_12

    .line 331
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error: no active notification matching key: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    return v15

    .line 321
    .end local v0    # "key":Ljava/lang/String;
    .end local v7    # "nr":Lcom/android/server/notification/NotificationRecord;
    :pswitch_6
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 322
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    .end local v7    # "key":Ljava/lang/String;
    goto :goto_d

    .line 324
    :cond_11
    goto/16 :goto_12

    .line 318
    :pswitch_7
    invoke-direct {v1, v9, v3, v4}, Lcom/android/server/notification/NotificationShellCmd;->doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I

    .line 319
    goto/16 :goto_12

    .line 301
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, "channelId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 304
    .local v8, "allow":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    .line 305
    .local v10, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move v10, v11

    .line 308
    :cond_12
    iget-object v11, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v11, v3, v10, v0, v7}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v11

    .line 310
    .local v11, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v11, v8}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 311
    iget-object v12, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v10, v12}, Landroid/os/UserHandle;->getUid(II)I

    move-result v12

    .line 312
    .local v12, "appUid":I
    iget-object v13, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v13, v0, v12, v11}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 314
    goto/16 :goto_12

    .line 284
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v7    # "channelId":Ljava/lang/String;
    .end local v8    # "allow":Z
    .end local v10    # "userId":I
    .end local v11    # "channel":Landroid/app/NotificationChannel;
    .end local v12    # "appUid":I
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 285
    .restart local v0    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 286
    .local v7, "preference":I
    if-gt v7, v12, :cond_15

    if-gez v7, :cond_13

    goto :goto_e

    .line 291
    :cond_13
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 292
    .local v8, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_14

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v8, v10

    .line 295
    :cond_14
    iget-object v10, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v8, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    .line 296
    .local v10, "appUid":I
    iget-object v11, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v11, v0, v10, v7}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 297
    goto/16 :goto_12

    .line 287
    .end local v8    # "userId":I
    .end local v10    # "appUid":I
    :cond_15
    :goto_e
    const-string v8, "Invalid preference - must be between 0-3 (0=none 1=all 2=selected)"

    invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    const/4 v8, -0x1

    return v8

    .line 270
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v7    # "preference":I
    :pswitch_a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 271
    .local v0, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v0, v7

    .line 274
    :cond_16
    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7, v0}, Lcom/android/server/notification/NotificationManagerService;->getApprovedAssistant(I)Landroid/content/ComponentName;

    move-result-object v7

    .line 275
    .local v7, "approvedAssistant":Landroid/content/ComponentName;
    if-nez v7, :cond_17

    .line 276
    const-string/jumbo v8, "null"

    invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 278
    :cond_17
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    goto/16 :goto_12

    .line 262
    .end local v0    # "userId":I
    .end local v7    # "approvedAssistant":Landroid/content/ComponentName;
    :pswitch_b
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 263
    .restart local v0    # "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_18

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v0, v7

    .line 266
    :cond_18
    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7, v0}, Lcom/android/server/notification/NotificationManagerService;->resetAssistantUserSet(I)V

    .line 267
    goto/16 :goto_12

    .line 249
    .end local v0    # "userId":I
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 250
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_19

    .line 251
    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    const/4 v7, -0x1

    return v7

    .line 254
    :cond_19
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 255
    .local v7, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1a

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 258
    :cond_1a
    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v10, 0x0

    invoke-interface {v8, v0, v7, v10}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 260
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v7    # "userId":I
    goto/16 :goto_12

    .line 236
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 237
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1b

    .line 238
    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    const/4 v7, -0x1

    return v7

    .line 241
    :cond_1b
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 242
    .restart local v7    # "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1c

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 245
    :cond_1c
    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v8, v0, v7, v15}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 247
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v7    # "userId":I
    goto/16 :goto_12

    .line 222
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 223
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1d

    .line 224
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    const/4 v7, -0x1

    return v7

    .line 227
    :cond_1d
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 228
    .restart local v7    # "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1e

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 231
    :cond_1e
    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v10, 0x0

    invoke-interface {v8, v0, v7, v10, v15}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    .line 234
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v7    # "userId":I
    goto/16 :goto_12

    .line 208
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 209
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1f

    .line 210
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    const/4 v7, -0x1

    return v7

    .line 213
    :cond_1f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 214
    .restart local v7    # "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_20

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 217
    :cond_20
    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v8, v0, v7, v15, v15}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    .line 220
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v7    # "userId":I
    goto/16 :goto_12

    .line 198
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 200
    .restart local v7    # "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_21

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 203
    :cond_21
    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v10, 0x0

    invoke-interface {v8, v0, v7, v10}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 206
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v7    # "userId":I
    goto/16 :goto_12

    .line 187
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 188
    .restart local v0    # "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 189
    .restart local v7    # "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_22

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 192
    :cond_22
    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v8, v0, v7, v15}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 195
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v7    # "userId":I
    goto/16 :goto_12

    .line 165
    :pswitch_12
    const/4 v7, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "mode":Ljava/lang/String;
    const/4 v8, 0x0

    .line 167
    .local v8, "interruptionFilter":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2

    :cond_23
    goto :goto_f

    :sswitch_18
    const-string/jumbo v10, "none"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    const/4 v10, 0x0

    goto :goto_10

    :sswitch_19
    const-string/jumbo v10, "off"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    const/4 v10, 0x5

    goto :goto_10

    :sswitch_1a
    const-string v10, "all"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    const/4 v10, 0x4

    goto :goto_10

    :sswitch_1b
    const-string/jumbo v10, "on"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    move v10, v15

    goto :goto_10

    :sswitch_1c
    const-string/jumbo v10, "priority"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    move v10, v13

    goto :goto_10

    :sswitch_1d
    const-string v10, "alarms"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    move v10, v12

    goto :goto_10

    :goto_f
    move v10, v7

    :goto_10
    packed-switch v10, :pswitch_data_2

    goto :goto_11

    .line 180
    :pswitch_13
    const/4 v8, 0x1

    goto :goto_11

    .line 176
    :pswitch_14
    const/4 v8, 0x4

    .line 177
    goto :goto_11

    .line 173
    :pswitch_15
    const/4 v8, 0x2

    .line 174
    goto :goto_11

    .line 170
    :pswitch_16
    const/4 v8, 0x3

    .line 171
    nop

    .line 182
    :goto_11
    move v7, v8

    .line 183
    .local v7, "filter":I
    iget-object v10, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v10, v3, v7}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 185
    .end local v0    # "mode":Ljava/lang/String;
    .end local v7    # "filter":I
    .end local v8    # "interruptionFilter":I
    nop

    .line 420
    :goto_12
    goto :goto_15

    .line 415
    :goto_13
    return v0

    .line 417
    :catch_2
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    :goto_14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error occurred. Check logcat for details. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    const-string v7, "NotificationService"

    const-string v8, "Error running shell command"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_15
    const/4 v7, 0x0

    return v7

    .line 149
    .end local v9    # "pw":Ljava/io/PrintWriter;
    :goto_16
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7a8dd0c2 -> :sswitch_11
        -0x677a47b2 -> :sswitch_10
        -0x4f05a8e6 -> :sswitch_f
        -0x3df868b7 -> :sswitch_e
        -0x3580721a -> :sswitch_d
        -0x19cf0b16 -> :sswitch_c
        -0x199eb9aa -> :sswitch_b
        -0x18b58921 -> :sswitch_a
        -0xa97a41 -> :sswitch_9
        0x18f56 -> :sswitch_8
        0x32b09e -> :sswitch_7
        0x3498a0 -> :sswitch_6
        0xca4be8a -> :sswitch_5
        0x16318b24 -> :sswitch_4
        0x28bd431f -> :sswitch_3
        0x4af068f8 -> :sswitch_2
        0x76556fbd -> :sswitch_1
        0x7dcb4968 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x76bbb26c -> :sswitch_17
        -0x335692e5 -> :sswitch_16
        0x18cc9 -> :sswitch_15
        0x6a47f5e -> :sswitch_14
        0x16e20ea1 -> :sswitch_13
        0x38b735af -> :sswitch_12
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x545a2fbe -> :sswitch_1d
        -0x4577865c -> :sswitch_1c
        0xddf -> :sswitch_1b
        0x179a1 -> :sswitch_1a
        0x1ad6f -> :sswitch_19
        0x33af38 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    .line 690
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 435
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 436
    :cond_0
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 439
    :cond_1
    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 440
    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 441
    const-string v0, "content:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 442
    const-string v0, "file:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 443
    const-string v0, "android.resource:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 446
    :cond_2
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 447
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 449
    .local v0, "resid":I
    if-eqz v0, :cond_3

    .line 450
    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 449
    .end local v0    # "resid":I
    :cond_3
    goto :goto_0

    .line 452
    :cond_4
    const-string v0, "data:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 453
    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 454
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 455
    .local v1, "bits":[B
    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 452
    .end local v1    # "bits":[B
    :cond_5
    :goto_0
    nop

    .line 457
    return-object v1

    .line 444
    :cond_6
    :goto_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 445
    .local v0, "asUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1
.end method
