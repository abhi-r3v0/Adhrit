.class final Lo/getAccessibilityNodeProvider$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAccessibilityNodeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic ICustomTabsCallback$Stub:Z

.field private synthetic asInterface:Lo/getServerTime;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Z

.field private synthetic onNavigationEvent:Ljava/util/List;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZLo/getServerTime;)V
    .locals 0

    iput-object p1, p0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->extraCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    iput-boolean p5, p0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->onMessageChannelReady:Z

    iput-boolean p6, p0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->ICustomTabsCallback$Stub:Z

    iput-object p7, p0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->asInterface:Lo/getServerTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    .line 38
    new-instance v9, Lo/isSpanStillValid;

    iget-object v2, v0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->extraCallback:Ljava/lang/String;

    iget-object v3, v0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    iget-object v4, v0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v5, v0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    iget-boolean v6, v0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->onMessageChannelReady:Z

    iget-boolean v7, v0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->ICustomTabsCallback$Stub:Z

    iget-object v8, v0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->asInterface:Lo/getServerTime;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lo/isSpanStillValid;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZLo/getServerTime;)V

    .line 39
    sget-object v1, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    invoke-static {v1}, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback(Lo/getAccessibilityNodeProvider;)Lo/sendAccessibilityEventUnchecked;

    move-result-object v1

    const-string v2, "brObject"

    invoke-static {v9, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v9}, Lo/isSpanStillValid;->getDataList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1059
    iget-object v1, v1, Lo/sendAccessibilityEventUnchecked;->onMessageChannelReady:Lcom/dreamplug/batcher/database/BatcherDataBase;

    invoke-virtual {v1}, Lcom/dreamplug/batcher/database/BatcherDataBase;->onTransact()Lo/performAccessibilityAction;

    move-result-object v1

    invoke-virtual {v9}, Lo/isSpanStillValid;->getDataList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 1160
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "$this$collectionSizeOrDefault"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2039
    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    const/16 v4, 0xa

    .line 1160
    :goto_0
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 1161
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1162
    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    .line 1060
    new-instance v4, Lo/sendAccessibilityEvent;

    .line 1061
    invoke-virtual {v9}, Lo/isSpanStillValid;->getUrl()Ljava/lang/String;

    move-result-object v11

    .line 1062
    invoke-virtual {v9}, Lo/isSpanStillValid;->getMethod()Ljava/lang/String;

    move-result-object v12

    .line 1064
    invoke-virtual {v9}, Lo/isSpanStillValid;->isImmediate()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1065
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 1066
    invoke-virtual {v9}, Lo/isSpanStillValid;->isCompressed()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v10, v4

    .line 1060
    invoke-direct/range {v10 .. v16}, Lo/sendAccessibilityEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 1067
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1163
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 1059
    invoke-virtual {v1, v3}, Lo/performAccessibilityAction;->ICustomTabsCallback(Ljava/util/List;)V

    goto :goto_2

    .line 1069
    :cond_2
    invoke-virtual {v9}, Lo/isSpanStillValid;->getData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1070
    iget-object v1, v1, Lo/sendAccessibilityEventUnchecked;->onMessageChannelReady:Lcom/dreamplug/batcher/database/BatcherDataBase;

    invoke-virtual {v1}, Lcom/dreamplug/batcher/database/BatcherDataBase;->onTransact()Lo/performAccessibilityAction;

    move-result-object v1

    new-instance v10, Lo/sendAccessibilityEvent;

    .line 1071
    invoke-virtual {v9}, Lo/isSpanStillValid;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 1072
    invoke-virtual {v9}, Lo/isSpanStillValid;->getMethod()Ljava/lang/String;

    move-result-object v4

    .line 1073
    invoke-virtual {v9}, Lo/isSpanStillValid;->getData()Ljava/lang/String;

    move-result-object v5

    .line 1074
    invoke-virtual {v9}, Lo/isSpanStillValid;->isImmediate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1075
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1076
    invoke-virtual {v9}, Lo/isSpanStillValid;->isCompressed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v2, v10

    .line 1070
    invoke-direct/range {v2 .. v8}, Lo/sendAccessibilityEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;)V

    invoke-virtual {v1, v10}, Lo/performAccessibilityAction;->onPostMessage(Lo/sendAccessibilityEvent;)V

    .line 40
    :cond_3
    :goto_2
    invoke-virtual {v9}, Lo/isSpanStillValid;->isImmediate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    sget-object v1, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    iget-object v2, v0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-static {v1, v2}, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback(Lo/getAccessibilityNodeProvider;Ljava/lang/String;)V

    goto :goto_3

    .line 43
    :cond_4
    sget-object v1, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    iget-object v2, v0, Lo/getAccessibilityNodeProvider$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-static {v1, v2}, Lo/getAccessibilityNodeProvider;->onNavigationEvent(Lo/getAccessibilityNodeProvider;Ljava/lang/String;)V

    .line 45
    :goto_3
    invoke-virtual {v9}, Lo/isSpanStillValid;->getOnRequestAdded()Lo/getServerTime;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_5
    return-void
.end method
