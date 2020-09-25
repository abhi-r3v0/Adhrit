.class public final Lo/removeItemAtIndex;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeItemAtIndex$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Ljava/lang/Boolean;

.field public static onNavigationEvent:Lo/removeItemAtIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2053
    new-instance v0, Lo/removeItemAtIndex;

    invoke-direct {v0}, Lo/removeItemAtIndex;-><init>()V

    sput-object v0, Lo/removeItemAtIndex;->onNavigationEvent:Lo/removeItemAtIndex;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extraCallback(Landroid/content/Context;Lcom/google/android/gms/common/stats/WakeLockEvent;)V
    .locals 2

    .line 2041
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lo/extraCallback$ICustomTabsCallback;->ICustomTabsCallback:Landroid/content/ComponentName;

    .line 2042
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.common.stats.EXTRA_LOG_EVENT"

    .line 2043
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 2044
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "WakeLockTracker"

    .line 2047
    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static extraCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, p4

    move-object v7, p5

    .line 1014
    invoke-static/range {v0 .. v9}, Lo/removeItemAtIndex;->onPostMessage(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    return-void
.end method

.method public static onPostMessage(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    move/from16 v3, p2

    .line 1049
    sget-object v0, Lo/removeItemAtIndex;->ICustomTabsCallback:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1050
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1051
    sput-object v0, Lo/removeItemAtIndex;->ICustomTabsCallback:Ljava/lang/Boolean;

    .line 1052
    :cond_0
    sget-object v0, Lo/removeItemAtIndex;->ICustomTabsCallback:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1018
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "missing wakeLock key. "

    .line 1019
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    const-string v1, "WakeLockTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v0, 0x7

    if-eq v0, v3, :cond_4

    const/16 v0, 0x8

    if-eq v0, v3, :cond_4

    const/16 v0, 0xa

    if-eq v0, v3, :cond_4

    const/16 v0, 0xb

    if-ne v0, v3, :cond_6

    .line 1022
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1023
    new-instance v14, Lcom/google/android/gms/common/stats/WakeLockEvent;

    .line 1024
    invoke-static/range {p7 .. p7}, Lo/getStoreAssociationSubHeader;->extraCallback(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 1025
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1026
    invoke-static/range {p0 .. p0}, Lo/component24;->onMessageChannelReady(Landroid/content/Context;)I

    move-result v10

    .line 1027
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.google.android.gms"

    .line 2015
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x0

    :cond_5
    move-object v12, v0

    .line 1028
    invoke-static/range {p0 .. p0}, Lo/component24;->ICustomTabsCallback(Landroid/content/Context;)F

    move-result v13

    const/16 v16, 0x0

    move-object v0, v14

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p6

    move-object/from16 v7, p1

    move-object/from16 v11, p4

    move-object/from16 v17, v14

    move-wide/from16 v14, p8

    invoke-direct/range {v0 .. v16}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(JILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    .line 1029
    invoke-static {v0, v1}, Lo/removeItemAtIndex;->extraCallback(Landroid/content/Context;Lcom/google/android/gms/common/stats/WakeLockEvent;)V

    :cond_6
    return-void
.end method
