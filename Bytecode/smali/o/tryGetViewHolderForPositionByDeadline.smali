.class public final Lo/tryGetViewHolderForPositionByDeadline;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/tryGetViewHolderForPositionByDeadline$extraCallback;,
        Lo/tryGetViewHolderForPositionByDeadline$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0019\u001aB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0011\u001a\u00020\u0012\"\u0004\u0008\u0000\u0010\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u0017J\u0008\u0010\u0018\u001a\u00020\u0012H\u0002R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0008\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/network/internals/AuthQueue;",
        "",
        "()V",
        "authUpdateListener",
        "Lcom/dreamplug/network/helper/AuthStateChangeListener;",
        "getAuthUpdateListener",
        "()Lcom/dreamplug/network/helper/AuthStateChangeListener;",
        "authUpdateListener$delegate",
        "Lkotlin/Lazy;",
        "reentrantLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "set",
        "",
        "Lcom/dreamplug/network/internals/AuthQueue$CallDataParent;",
        "getSet",
        "()Ljava/util/Set;",
        "set$delegate",
        "add",
        "",
        "T",
        "call",
        "Lretrofit2/Call;",
        "callback",
        "Lretrofit2/Callback;",
        "onAuthIdeal",
        "CallData",
        "CallDataParent",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/isSameListener;

.field private static final onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final onNavigationEvent:Lo/isSameListener;

.field public static final onPostMessage:Lo/tryGetViewHolderForPositionByDeadline;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lo/tryGetViewHolderForPositionByDeadline;

    invoke-direct {v0}, Lo/tryGetViewHolderForPositionByDeadline;-><init>()V

    sput-object v0, Lo/tryGetViewHolderForPositionByDeadline;->onPostMessage:Lo/tryGetViewHolderForPositionByDeadline;

    .line 14
    sget-object v0, Lo/tryGetViewHolderForPositionByDeadline$onNavigationEvent;->onMessageChannelReady:Lo/tryGetViewHolderForPositionByDeadline$onNavigationEvent;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 14
    sput-object v2, Lo/tryGetViewHolderForPositionByDeadline;->onNavigationEvent:Lo/isSameListener;

    .line 15
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lo/tryGetViewHolderForPositionByDeadline;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    sget-object v0, Lo/tryGetViewHolderForPositionByDeadline$ICustomTabsCallback;->extraCallback:Lo/tryGetViewHolderForPositionByDeadline$ICustomTabsCallback;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 17
    sput-object v1, Lo/tryGetViewHolderForPositionByDeadline;->extraCallback:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/tryGetViewHolderForPositionByDeadline;)Lo/instantiateReceiver;
    .locals 0

    .line 8000
    sget-object p0, Lo/tryGetViewHolderForPositionByDeadline;->extraCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/instantiateReceiver;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/tryGetViewHolderForPositionByDeadline;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/tryGetViewHolderForPositionByDeadline;->onMessageChannelReady()V

    return-void
.end method

.method private final onMessageChannelReady()V
    .locals 3

    .line 44
    sget-object v0, Lo/tryGetViewHolderForPositionByDeadline;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4000
    sget-object v0, Lo/tryGetViewHolderForPositionByDeadline;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 45
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 5000
    sget-object v1, Lo/tryGetViewHolderForPositionByDeadline;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 46
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 47
    sget-object v1, Lo/tryGetViewHolderForPositionByDeadline;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/tryGetViewHolderForPositionByDeadline$onPostMessage;

    .line 50
    instance-of v2, v1, Lo/tryGetViewHolderForPositionByDeadline$extraCallback;

    if-eqz v2, :cond_0

    .line 51
    check-cast v1, Lo/tryGetViewHolderForPositionByDeadline$extraCallback;

    .line 5058
    iget-object v2, v1, Lo/tryGetViewHolderForPositionByDeadline$extraCallback;->onNavigationEvent:Lo/fromQueryDefinition;

    iget-object v1, v1, Lo/tryGetViewHolderForPositionByDeadline$extraCallback;->extraCallback:Lo/hasIndex;

    invoke-interface {v2, v1}, Lo/fromQueryDefinition;->extraCallback(Lo/hasIndex;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/fromQueryDefinition;Lo/hasIndex;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/fromQueryDefinition<",
            "TT;>;",
            "Lo/hasIndex<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lo/tryGetViewHolderForPositionByDeadline;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1000
    sget-object v0, Lo/tryGetViewHolderForPositionByDeadline;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 29
    new-instance v1, Lo/tryGetViewHolderForPositionByDeadline$extraCallback;

    invoke-direct {v1, p1, p2}, Lo/tryGetViewHolderForPositionByDeadline$extraCallback;-><init>(Lo/fromQueryDefinition;Lo/hasIndex;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object p1, Lo/tryGetViewHolderForPositionByDeadline;->onMessageChannelReady:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 32
    sget-object p1, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    invoke-static {}, Lo/getScrapCount;->onPostMessage()Lo/getScrapList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 34
    invoke-interface {p1}, Lo/getScrapList;->extraCallback()I

    move-result p2

    if-nez p2, :cond_0

    .line 35
    invoke-direct {p0}, Lo/tryGetViewHolderForPositionByDeadline;->onMessageChannelReady()V

    .line 2000
    sget-object p2, Lo/tryGetViewHolderForPositionByDeadline;->extraCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/instantiateReceiver;

    .line 36
    invoke-interface {p1, p2}, Lo/getScrapList;->ICustomTabsCallback(Lo/instantiateReceiver;)V

    return-void

    .line 3000
    :cond_0
    sget-object p2, Lo/tryGetViewHolderForPositionByDeadline;->extraCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/instantiateReceiver;

    .line 38
    invoke-interface {p1, p2}, Lo/getScrapList;->onNavigationEvent(Lo/instantiateReceiver;)V

    :cond_1
    return-void
.end method
