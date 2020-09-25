.class public final Lo/refreshData$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ak$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/refreshData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/payments/PaymentAmountsView$Companion;",
        "",
        "()V",
        "PAY_CUSTOM_CLICKED",
        "",
        "PAY_MIN_CLICKED",
        "PAY_TOTAL_CLICKED",
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
.field private final ICustomTabsCallback:Lo/OaidClient$Info;

.field private final onNavigationEvent:Lo/ak;

.field private final onPostMessage:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/ak;Ljava/util/List;Lo/OaidClient$Info;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/refreshData$ICustomTabsCallback;->onNavigationEvent:Lo/ak;

    iput-object p2, p0, Lo/refreshData$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    iput-object p3, p0, Lo/refreshData$ICustomTabsCallback;->ICustomTabsCallback:Lo/OaidClient$Info;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    .line 2000
    iget-object v1, v0, Lo/refreshData$ICustomTabsCallback;->onNavigationEvent:Lo/ak;

    iget-object v2, v0, Lo/refreshData$ICustomTabsCallback;->onPostMessage:Ljava/util/List;

    iget-object v3, v0, Lo/refreshData$ICustomTabsCallback;->ICustomTabsCallback:Lo/OaidClient$Info;

    move-object/from16 v4, p1

    check-cast v4, Landroid/database/Cursor;

    .line 2394
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    .line 2395
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x7

    .line 2396
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 3078
    :goto_1
    new-instance v10, Lo/Foreground$4$3$3$onPostMessage;

    invoke-direct {v10}, Lo/Foreground$4$3$3$onPostMessage;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3161
    iput-object v11, v10, Lo/Foreground$4$3$3$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    .line 2399
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lo/Foreground$4$4$extraCallback;->onPostMessage(Ljava/lang/String;)Lo/Foreground$4$4$extraCallback;

    move-result-object v10

    const/4 v11, 0x2

    .line 2400
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lo/Foreground$4$4$extraCallback;->extraCallback(J)Lo/Foreground$4$4$extraCallback;

    move-result-object v10

    const/4 v11, 0x3

    .line 2401
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lo/Foreground$4$4$extraCallback;->ICustomTabsCallback(J)Lo/Foreground$4$4$extraCallback;

    move-result-object v10

    const/4 v11, 0x4

    if-eqz v8, :cond_2

    .line 2403
    new-instance v5, Lo/Foreground$Listener;

    .line 2404
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 3452
    sget-object v8, Lo/ak;->onMessageChannelReady:Lo/isEnableLog;

    goto :goto_2

    .line 4030
    :cond_1
    new-instance v9, Lo/isEnableLog;

    invoke-direct {v9, v8}, Lo/isEnableLog;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    :goto_2
    const/4 v9, 0x5

    .line 2404
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lo/Foreground$Listener;-><init>(Lo/isEnableLog;[B)V

    .line 2403
    invoke-virtual {v10, v5}, Lo/Foreground$4$4$extraCallback;->extraCallback(Lo/Foreground$Listener;)Lo/Foreground$4$4$extraCallback;

    goto :goto_4

    .line 2406
    :cond_2
    new-instance v8, Lo/Foreground$Listener;

    .line 2407
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    .line 4452
    sget-object v11, Lo/ak;->onMessageChannelReady:Lo/isEnableLog;

    goto :goto_3

    .line 5030
    :cond_3
    new-instance v12, Lo/isEnableLog;

    invoke-direct {v12, v11}, Lo/isEnableLog;-><init>(Ljava/lang/String;)V

    move-object v11, v12

    .line 6082
    :goto_3
    iget-object v12, v1, Lo/ak;->onNavigationEvent:Lo/am;

    .line 7000
    new-instance v13, Lo/PreferenceGroup$extraCallback;

    invoke-direct {v13, v12}, Lo/PreferenceGroup$extraCallback;-><init>(Lo/am;)V

    .line 8000
    sget-object v12, Lo/shouldIgnore$ICustomTabsCallback;->ICustomTabsCallback:Lo/shouldIgnore$ICustomTabsCallback;

    .line 6082
    invoke-virtual {v1, v13, v12}, Lo/ak;->onPostMessage(Lo/ak$onMessageChannelReady;Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "bytes"

    .line 5421
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v15

    new-array v9, v9, [Ljava/lang/String;

    .line 5426
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v5

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v14, "event_payloads"

    const-string v16, "event_id = ?"

    const-string v20, "sequence_num"

    move-object/from16 v17, v9

    .line 5422
    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 9000
    sget-object v9, Lo/getTargetPosition$onMessageChannelReady;->onPostMessage:Lo/getTargetPosition$onMessageChannelReady;

    .line 5420
    invoke-static {v5, v9}, Lo/ak;->ICustomTabsCallback(Landroid/database/Cursor;Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 2407
    invoke-direct {v8, v11, v5}, Lo/Foreground$Listener;-><init>(Lo/isEnableLog;[B)V

    .line 2406
    invoke-virtual {v10, v8}, Lo/Foreground$4$4$extraCallback;->extraCallback(Lo/Foreground$Listener;)Lo/Foreground$4$4$extraCallback;

    :goto_4
    const/4 v5, 0x6

    .line 2409
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2410
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v5}, Lo/Foreground$4$4$extraCallback;->onPostMessage(Ljava/lang/Integer;)Lo/Foreground$4$4$extraCallback;

    .line 2412
    :cond_4
    invoke-virtual {v10}, Lo/Foreground$4$4$extraCallback;->onPostMessage()Lo/Foreground$4$4;

    move-result-object v5

    .line 9032
    new-instance v8, Lo/markSupported;

    invoke-direct {v8, v6, v7, v3, v5}, Lo/markSupported;-><init>(JLo/OaidClient$Info;Lo/Foreground$4$4;)V

    .line 2412
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method
