.class public final Lo/getAccessibilityNodeProvider;
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
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JY\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00162\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0010\u0008\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u001fH\u0000\u00a2\u0006\u0002\u0008 J\r\u0010!\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008\"J\u001b\u0010#\u001a\u00020\u00142\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020%0\u001aH\u0000\u00a2\u0006\u0002\u0008&J\u0015\u0010\'\u001a\u00020(2\u0006\u0010\u0017\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008)J\u001d\u0010*\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010\u001a2\u0006\u0010\u0017\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008+J\u0010\u0010,\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\r\u0010-\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008.J\u001f\u0010/\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0008\u0002\u00100\u001a\u000201H\u0000\u00a2\u0006\u0002\u00082J\u0010\u00103\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u00064"
    }
    d2 = {
        "Lcom/dreamplug/batcher/BatcherInternals;",
        "",
        "()V",
        "dbHelper",
        "Lcom/dreamplug/batcher/database/BatcherDatabaseHelper;",
        "getDbHelper",
        "()Lcom/dreamplug/batcher/database/BatcherDatabaseHelper;",
        "dbHelper$delegate",
        "Lkotlin/Lazy;",
        "handler",
        "Landroid/os/Handler;",
        "getHandler$batcher_release",
        "()Landroid/os/Handler;",
        "handler$delegate",
        "networkHelper",
        "Lcom/dreamplug/batcher/network/NetworkHelper;",
        "getNetworkHelper",
        "()Lcom/dreamplug/batcher/network/NetworkHelper;",
        "networkHelper$delegate",
        "addToBatch",
        "",
        "method",
        "",
        "url",
        "data",
        "dataList",
        "",
        "isImmediate",
        "",
        "isCompressed",
        "onRequestAdded",
        "Lkotlin/Function0;",
        "addToBatch$batcher_release",
        "clearAll",
        "clearAll$batcher_release",
        "deleteRequest",
        "requests",
        "Lcom/dreamplug/batcher/database/Request;",
        "deleteRequest$batcher_release",
        "getRequestCountForUrl",
        "",
        "getRequestCountForUrl$batcher_release",
        "getRequestsForUrl",
        "getRequestsForUrl$batcher_release",
        "getWorkName",
        "onAppUpgrade",
        "onAppUpgrade$batcher_release",
        "scheduleJob",
        "delayInSec",
        "",
        "scheduleJob$batcher_release",
        "sendImmediateRequests",
        "batcher_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

.field public static final extraCallback:Lo/isSameListener;

.field public static final onMessageChannelReady:Lo/isSameListener;

.field private static final onNavigationEvent:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lo/getAccessibilityNodeProvider;

    invoke-direct {v0}, Lo/getAccessibilityNodeProvider;-><init>()V

    sput-object v0, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    .line 21
    sget-object v0, Lo/getAccessibilityNodeProvider$extraCallback;->onNavigationEvent:Lo/getAccessibilityNodeProvider$extraCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 21
    sput-object v2, Lo/getAccessibilityNodeProvider;->onMessageChannelReady:Lo/isSameListener;

    .line 27
    sget-object v0, Lo/getAccessibilityNodeProvider$onPostMessage;->onMessageChannelReady:Lo/getAccessibilityNodeProvider$onPostMessage;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 27
    sput-object v2, Lo/getAccessibilityNodeProvider;->extraCallback:Lo/isSameListener;

    .line 31
    sget-object v0, Lo/getAccessibilityNodeProvider$ICustomTabsCallback;->onMessageChannelReady:Lo/getAccessibilityNodeProvider$ICustomTabsCallback;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 31
    sput-object v1, Lo/getAccessibilityNodeProvider;->onNavigationEvent:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getAccessibilityNodeProvider;)Lo/sendAccessibilityEventUnchecked;
    .locals 0

    .line 7000
    sget-object p0, Lo/getAccessibilityNodeProvider;->extraCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/sendAccessibilityEventUnchecked;

    return-object p0
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getAccessibilityNodeProvider;Ljava/lang/String;)V
    .locals 3

    .line 8000
    sget-object p0, Lo/getAccessibilityNodeProvider;->extraCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/sendAccessibilityEventUnchecked;

    const-string/jumbo v0, "url"

    .line 7076
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8050
    iget-object p0, p0, Lo/sendAccessibilityEventUnchecked;->onMessageChannelReady:Lcom/dreamplug/batcher/database/BatcherDataBase;

    invoke-virtual {p0}, Lcom/dreamplug/batcher/database/BatcherDataBase;->onTransact()Lo/performAccessibilityAction;

    move-result-object p0

    invoke-virtual {p0, p1}, Lo/performAccessibilityAction;->onNavigationEvent(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 9000
    sget-object v0, Lo/getAccessibilityNodeProvider;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sendAccessibilityEventUnchecked;

    .line 9054
    iget-object v0, v0, Lo/sendAccessibilityEventUnchecked;->onMessageChannelReady:Lcom/dreamplug/batcher/database/BatcherDataBase;

    invoke-virtual {v0}, Lcom/dreamplug/batcher/database/BatcherDataBase;->onTransact()Lo/performAccessibilityAction;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/performAccessibilityAction;->extraCallback(Ljava/util/List;)V

    .line 10000
    sget-object v0, Lo/getAccessibilityNodeProvider;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isVisible;

    const-string v1, "immediate"

    .line 10019
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "java.util.Collections.singletonList(element)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7079
    new-instance v2, Lo/getAccessibilityNodeProvider$asBinder;

    invoke-direct {v2, p0, p1}, Lo/getAccessibilityNodeProvider$asBinder;-><init>(Ljava/util/List;Ljava/lang/String;)V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-virtual {v0, p0, v1, v2}, Lo/isVisible;->onMessageChannelReady(Ljava/util/List;Ljava/util/List;Lo/getScrapOrCachedViewForId;)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 10073
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatcherSync:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic onNavigationEvent(Lo/getAccessibilityNodeProvider;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0xa

    .line 49
    invoke-virtual {p0, p1, v0, v1}, Lo/getAccessibilityNodeProvider;->onNavigationEvent(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/sendAccessibilityEvent;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    sget-object v1, Lo/getAccessibilityNodeProvider;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sendAccessibilityEventUnchecked;

    .line 94
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2090
    iget-object v0, v1, Lo/sendAccessibilityEventUnchecked;->onMessageChannelReady:Lcom/dreamplug/batcher/database/BatcherDataBase;

    invoke-virtual {v0}, Lcom/dreamplug/batcher/database/BatcherDataBase;->onTransact()Lo/performAccessibilityAction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/performAccessibilityAction;->ICustomTabsCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)I
    .locals 2

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    sget-object v1, Lo/getAccessibilityNodeProvider;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sendAccessibilityEventUnchecked;

    .line 98
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3094
    iget-object v0, v1, Lo/sendAccessibilityEventUnchecked;->onMessageChannelReady:Lcom/dreamplug/batcher/database/BatcherDataBase;

    invoke-virtual {v0}, Lcom/dreamplug/batcher/database/BatcherDataBase;->onTransact()Lo/performAccessibilityAction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/performAccessibilityAction;->extraCallback(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Ljava/lang/String;J)V
    .locals 2

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    sget-object v0, Lo/getAccessibilityNodeProvider;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 50
    new-instance v1, Lo/getAccessibilityNodeProvider$ICustomTabsCallback$Stub;

    invoke-direct {v1, p1, p2, p3}, Lo/getAccessibilityNodeProvider$ICustomTabsCallback$Stub;-><init>(Ljava/lang/String;J)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
