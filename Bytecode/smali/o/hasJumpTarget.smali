.class public final Lo/hasJumpTarget;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u001a\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u001a \u0010\t\u001a\u00020\u00052\u0016\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000bj\u0008\u0012\u0004\u0012\u00020\u000c`\rH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "BATCH_SIZE",
        "",
        "gson",
        "Lcom/google/gson/Gson;",
        "fetchAllApps",
        "",
        "context",
        "Landroid/content/Context;",
        "getApps",
        "sendListToBatcher",
        "appList",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "river_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/writeStringNoTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lo/writeStringNoTag;

    invoke-direct {v0}, Lo/writeStringNoTag;-><init>()V

    sput-object v0, Lo/hasJumpTarget;->ICustomTabsCallback:Lo/writeStringNoTag;

    return-void
.end method

.method public static final extraCallback(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lo/RecyclerView$SmoothScroller$Action;->ICustomTabsCallback:Lo/RecyclerView$SmoothScroller$Action;

    new-instance v1, Lo/hasJumpTarget$extraCallback;

    invoke-direct {v1, p0}, Lo/hasJumpTarget$extraCallback;-><init>(Landroid/content/Context;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Landroid/content/Context;)V
    .locals 18

    .line 3031
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 3032
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 3033
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "appInfo"

    .line 3035
    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 3037
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 3038
    iget-wide v6, v5, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sget-object v8, Lo/setTargetPosition;->onRelationshipValidationResult:Lo/setTargetPosition;

    .line 4000
    sget-object v8, Lo/setTargetPosition;->onPostMessage:Lo/copyArray;

    sget-object v9, Lo/setTargetPosition;->onMessageChannelReady:[Lo/applyUserOverwrite;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lo/SortedListAdapterCallback;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    cmp-long v11, v6, v8

    if-lez v11, :cond_2

    .line 3039
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v3

    if-ne v6, v3, :cond_1

    const/4 v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    .line 3040
    :goto_0
    sget-object v6, Lo/hasJumpTarget;->ICustomTabsCallback:Lo/writeStringNoTag;

    new-instance v7, Lo/setDx;

    iget-object v12, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v8, "ai.packageName"

    invoke-static {v12, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v13, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-wide v8, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    iget-wide v8, v5, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object v11, v7

    invoke-direct/range {v11 .. v17}, Lo/setDx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 4618
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lo/writeStringNoTag;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v5

    .line 3040
    invoke-virtual {v1, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 3041
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    const/16 v6, 0x32

    if-ne v5, v6, :cond_2

    .line 3042
    invoke-static {v1}, Lo/hasJumpTarget;->onMessageChannelReady(Ljava/util/ArrayList;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 3046
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 3047
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3048
    invoke-static {v1}, Lo/hasJumpTarget;->onMessageChannelReady(Ljava/util/ArrayList;)V

    .line 3050
    :cond_3
    sget-object v0, Lo/setTargetPosition;->onRelationshipValidationResult:Lo/setTargetPosition;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5000
    sget-object v2, Lo/setTargetPosition;->onPostMessage:Lo/copyArray;

    sget-object v3, Lo/setTargetPosition;->onMessageChannelReady:[Lo/applyUserOverwrite;

    aget-object v3, v3, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lo/SortedListAdapterCallback;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private static final onMessageChannelReady(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    new-instance v0, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;

    invoke-direct {v0}, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;-><init>()V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {}, Lo/isPendingInitialRun;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/dagger/v2/app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    iput-object v1, v0, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 59
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const-string v2, "dataList"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2059
    iput-object v1, v0, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    .line 60
    sget-object v1, Lo/onRequestSendAccessibilityEvent$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/onRequestSendAccessibilityEvent$onNavigationEvent$ICustomTabsCallback;

    check-cast v1, Lo/onRequestSendAccessibilityEvent$onNavigationEvent;

    const-string v2, "method"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2064
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    const/4 v1, 0x1

    .line 2074
    iput-boolean v1, v0, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 2079
    iput-boolean v1, v0, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->onNavigationEvent:Z

    const/4 v1, 0x0

    .line 2083
    invoke-virtual {v0, v1}, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->onPostMessage(Lo/getServerTime;)V

    .line 64
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method
