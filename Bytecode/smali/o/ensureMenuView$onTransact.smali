.class public final Lo/ensureMenuView$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getContentPaddingLeft$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureMenuView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/androidapp/login/LoginActivity$onCreate$2",
        "Lcom/dreamplug/androidapp/ui/widget/TickEditText$NumberEnteredListener;",
        "onTextChange",
        "",
        "text",
        "",
        "oldString",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/ensureMenuView;


# direct methods
.method constructor <init>(Lo/ensureMenuView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lo/ensureMenuView$onTransact;->extraCallback:Lo/ensureMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string/jumbo v2, "text"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "oldString"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p0

    .line 70
    iget-object v4, v3, Lo/ensureMenuView$onTransact;->extraCallback:Lo/ensureMenuView;

    .line 1037
    iget-object v4, v4, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v4, :cond_0

    const-string/jumbo v5, "viewModel"

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v5, "string"

    .line 70
    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1336
    iget-object v2, v4, Lo/getContentInsetStart;->onNavigationEvent:Lo/setActive;

    .line 2320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v6, 0x0

    if-eq v2, v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v6

    .line 1336
    :goto_0
    check-cast v2, Lcom/dreamplug/androidapp/login/LoginUiModel;

    if-eqz v2, :cond_1b

    .line 1339
    invoke-virtual {v2}, Lcom/dreamplug/androidapp/login/LoginUiModel;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const-string v7, "pairs"

    const-string/jumbo v8, "source"

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_e

    :sswitch_0
    const-string v1, "phone"

    .line 1373
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1374
    sget-object v2, Lo/setCollapseIcon;->extraCallback:Lo/setCollapseIcon;

    invoke-static {v1, v0}, Lo/setCollapseIcon;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f130424

    if-eqz v1, :cond_3

    .line 1375
    iget-object v1, v4, Lo/getContentInsetStart;->asBinder:Lo/setActive;

    new-instance v5, Lo/ensureContentInsets$onMessageChannelReady;

    invoke-direct {v5}, Lo/ensureContentInsets$onMessageChannelReady;-><init>()V

    invoke-virtual {v1, v5}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1376
    iget-object v1, v4, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 11320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 11321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v6

    .line 1376
    :goto_1
    move-object v11, v1

    check-cast v11, Lo/setContentInsetsRelative;

    if-eqz v11, :cond_5

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x9

    const-string/jumbo v14, "submit"

    invoke-static/range {v11 .. v16}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v1

    goto :goto_3

    .line 1378
    :cond_3
    iget-object v1, v4, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 12320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 12321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v6

    .line 1378
    :goto_2
    move-object v11, v1

    check-cast v11, Lo/setContentInsetsRelative;

    if-eqz v11, :cond_5

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x9

    const-string v14, "disable"

    invoke-static/range {v11 .. v16}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object v1, v6

    .line 1381
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v10, :cond_19

    new-array v0, v10, [Lo/addWrite;

    .line 13043
    new-instance v2, Lo/addWrite;

    const-string v5, "App Launch"

    invoke-direct {v2, v8, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v9

    .line 1383
    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v10}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "onboard_enter_phone_number_first_digit"

    .line 1382
    invoke-static {v0, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto/16 :goto_f

    :sswitch_1
    const-string v1, "lName"

    .line 1350
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1351
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v10, :cond_6

    const-string v0, "onboard_second_name_screen_triggered"

    .line 1352
    invoke-static {v0}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1354
    :cond_6
    iget-object v0, v4, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 5320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 5321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_7

    goto :goto_4

    :cond_7
    move-object v0, v6

    .line 1354
    :goto_4
    move-object v7, v0

    check-cast v7, Lo/setContentInsetsRelative;

    if-eqz v7, :cond_18

    const/4 v8, 0x0

    const v0, 0x7f13041e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v12, 0x9

    const-string/jumbo v10, "submit"

    invoke-static/range {v7 .. v12}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v0

    :goto_5
    move-object v1, v0

    goto/16 :goto_f

    :sswitch_2
    const-string v1, "fName"

    .line 1340
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1341
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v10, :cond_8

    const-string v2, "onboard_first_name_screen_triggered"

    .line 1342
    invoke-static {v2}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1344
    :cond_8
    sget-object v2, Lo/setCollapseIcon;->extraCallback:Lo/setCollapseIcon;

    invoke-static {v1, v0}, Lo/setCollapseIcon;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f13041b

    if-eqz v0, :cond_a

    .line 1345
    iget-object v0, v4, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 3320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v2, :cond_9

    goto :goto_6

    :cond_9
    move-object v0, v6

    .line 1345
    :goto_6
    move-object v7, v0

    check-cast v7, Lo/setContentInsetsRelative;

    if-eqz v7, :cond_18

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v12, 0x9

    const-string/jumbo v10, "submit"

    invoke-static/range {v7 .. v12}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v0

    goto :goto_5

    .line 1347
    :cond_a
    iget-object v0, v4, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 4320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v2, :cond_b

    goto :goto_7

    :cond_b
    move-object v0, v6

    .line 1347
    :goto_7
    move-object v7, v0

    check-cast v7, Lo/setContentInsetsRelative;

    if-eqz v7, :cond_18

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v12, 0x9

    const-string v10, "disable"

    invoke-static/range {v7 .. v12}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v0

    goto :goto_5

    :sswitch_3
    const-string v5, "email"

    .line 1386
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1387
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v10, :cond_c

    const-string v2, "onboard_email_screen_triggered"

    .line 1388
    invoke-static {v2}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1390
    :cond_c
    sget-object v2, Lo/setCollapseIcon;->extraCallback:Lo/setCollapseIcon;

    invoke-static {v5, v0}, Lo/setCollapseIcon;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const v5, 0x7f130417

    if-eqz v2, :cond_f

    const-string v2, "$this$endsWith"

    .line 13354
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "suffix"

    const-string v8, "gmail.com"

    invoke-static {v8, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13356
    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 14354
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14356
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1392
    iget-object v0, v4, Lo/getContentInsetStart;->asBinder:Lo/setActive;

    new-instance v1, Lo/ensureContentInsets$onMessageChannelReady;

    invoke-direct {v1}, Lo/ensureContentInsets$onMessageChannelReady;-><init>()V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1394
    :cond_d
    iget-object v0, v4, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 15320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 15321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_e

    goto :goto_8

    :cond_e
    move-object v0, v6

    .line 1394
    :goto_8
    move-object v7, v0

    check-cast v7, Lo/setContentInsetsRelative;

    if-eqz v7, :cond_18

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v12, 0x9

    const-string/jumbo v10, "submit"

    invoke-static/range {v7 .. v12}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v0

    goto/16 :goto_5

    .line 1396
    :cond_f
    iget-object v0, v4, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 16320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 16321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_10

    goto :goto_9

    :cond_10
    move-object v0, v6

    .line 1396
    :goto_9
    move-object v7, v0

    check-cast v7, Lo/setContentInsetsRelative;

    if-eqz v7, :cond_18

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v12, 0x9

    const-string v10, "disable"

    invoke-static/range {v7 .. v12}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v0

    goto/16 :goto_5

    :sswitch_4
    const-string v1, "otp"

    .line 1356
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1357
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v10, :cond_11

    new-array v2, v10, [Lo/addWrite;

    .line 6043
    new-instance v5, Lo/addWrite;

    const-string v11, "entered manually"

    invoke-direct {v5, v8, v11}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v9

    .line 1358
    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6088
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-static {v10}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "onboard_otp_enter_first_digit"

    .line 1358
    invoke-static {v2, v5}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1361
    :cond_11
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_12

    goto :goto_a

    :cond_12
    const/4 v10, 0x0

    :goto_a
    if-eqz v10, :cond_13

    .line 1362
    iget-object v2, v4, Lo/getContentInsetStart;->onMessageChannelReady:Lo/setActive;

    .line 7075
    iget-object v5, v4, Lo/getContentInsetStart;->onMessageChannelReady:Lo/setActive;

    .line 7320
    iget-object v5, v5, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 7321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    .line 8000
    new-instance v5, Lo/getContentInsetStart$onPostMessage;

    const/16 v7, 0x8

    invoke-direct {v5, v7, v7}, Lo/getContentInsetStart$onPostMessage;-><init>(II)V

    .line 1362
    invoke-virtual {v2, v5}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1363
    iget-object v2, v4, Lo/getContentInsetStart;->ICustomTabsService:Ljava/io/Closeable;

    if-eqz v2, :cond_14

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    goto :goto_b

    .line 1365
    :cond_13
    iget-object v2, v4, Lo/getContentInsetStart;->onMessageChannelReady:Lo/setActive;

    .line 8075
    iget-object v5, v4, Lo/getContentInsetStart;->onMessageChannelReady:Lo/setActive;

    .line 8320
    iget-object v5, v5, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 8321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    .line 9000
    new-instance v5, Lo/getContentInsetStart$onPostMessage;

    invoke-direct {v5, v9, v9}, Lo/getContentInsetStart$onPostMessage;-><init>(II)V

    .line 1365
    invoke-virtual {v2, v5}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1367
    :cond_14
    :goto_b
    sget-object v2, Lo/setCollapseIcon;->extraCallback:Lo/setCollapseIcon;

    invoke-static {v1, v0}, Lo/setCollapseIcon;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f130428

    if-eqz v0, :cond_16

    .line 1368
    iget-object v0, v4, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 9320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 9321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v2, :cond_15

    goto :goto_c

    :cond_15
    move-object v0, v6

    .line 1368
    :goto_c
    move-object v7, v0

    check-cast v7, Lo/setContentInsetsRelative;

    if-eqz v7, :cond_18

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v12, 0x9

    const-string/jumbo v10, "submit"

    invoke-static/range {v7 .. v12}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v0

    goto/16 :goto_5

    .line 1370
    :cond_16
    iget-object v0, v4, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 10320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 10321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v2, :cond_17

    goto :goto_d

    :cond_17
    move-object v0, v6

    .line 1370
    :goto_d
    move-object v7, v0

    check-cast v7, Lo/setContentInsetsRelative;

    if-eqz v7, :cond_18

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v12, 0x9

    const-string v10, "disable"

    invoke-static/range {v7 .. v12}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v0

    goto/16 :goto_5

    :cond_18
    :goto_e
    move-object v1, v6

    .line 1400
    :cond_19
    :goto_f
    iget-object v0, v4, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 17320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 17321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v2, :cond_1a

    move-object v6, v0

    .line 1400
    :cond_1a
    check-cast v6, Lo/setContentInsetsRelative;

    invoke-static {v6, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1403
    iget-object v0, v4, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    :cond_1b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1af2b -> :sswitch_4
        0x5c24b9c -> :sswitch_3
        0x5c24c11 -> :sswitch_2
        0x616d917 -> :sswitch_1
        0x65b3d6e -> :sswitch_0
    .end sparse-switch
.end method
