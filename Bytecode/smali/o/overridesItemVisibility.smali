.class public final Lo/overridesItemVisibility;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/overridesItemVisibility$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 +2\u00020\u0001:\u0001+B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u0003H\u0002J\u0006\u0010!\u001a\u00020\u0019J\u0008\u0010\"\u001a\u00020\u0019H\u0002J\u0016\u0010#\u001a\u00020\u00192\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020&0%H\u0002J\u0010\u0010\'\u001a\u00020\u00192\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001e\u0010(\u001a\u00020\u00192\u0016\u0008\u0002\u0010)\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018J\u0008\u0010*\u001a\u00020\u0019H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R:\u0010\u0016\u001a.\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u00180\u0017j\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018`\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0017j\u0008\u0012\u0004\u0012\u00020\u0003`\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/dreamplug/batcher/sync/RequestDispatcher;",
        "",
        "url",
        "",
        "(Ljava/lang/String;)V",
        "batchCount",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "healthObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcom/dreamplug/utils/health/Health$ServiceStatus;",
        "isCanceled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isServerDown",
        "networkHelper",
        "Lcom/dreamplug/batcher/network/NetworkHelper;",
        "onGoingRequests",
        "result",
        "",
        "getResult",
        "()I",
        "setResult",
        "(I)V",
        "resultCallbacks",
        "Ljava/util/ArrayList;",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/collections/ArrayList;",
        "sources",
        "getUrl",
        "()Ljava/lang/String;",
        "workStarted",
        "addSource",
        "source",
        "cancel",
        "exitChecks",
        "pickBatch",
        "requests",
        "",
        "Lcom/dreamplug/batcher/database/Request;",
        "publishResult",
        "send",
        "resultCallback",
        "watchHealth",
        "Companion",
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
.field private static final ICustomTabsService:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lo/overridesItemVisibility;",
            ">;"
        }
    .end annotation
.end field

.field public static final onNavigationEvent:Lo/overridesItemVisibility$extraCallback;


# instance fields
.field private ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicInteger;

.field private ICustomTabsCallback$Stub:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/onDisconnectSetValue<",
            "Ljava/lang/Integer;",
            "Lo/addWrites;",
            ">;>;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub$Proxy:I

.field private asBinder:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final asInterface:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lcom/dreamplug/utils/health/Health$ServiceStatus;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final newSession:Ljava/lang/String;

.field public onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final onPostMessage:Lo/isVisible;

.field private onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private onTransact:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/overridesItemVisibility$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/overridesItemVisibility$extraCallback;-><init>(B)V

    sput-object v0, Lo/overridesItemVisibility;->onNavigationEvent:Lo/overridesItemVisibility$extraCallback;

    .line 165
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lo/overridesItemVisibility;->ICustomTabsService:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/overridesItemVisibility;->newSession:Ljava/lang/String;

    .line 23
    new-instance p1, Lo/isVisible;

    invoke-direct {p1}, Lo/isVisible;-><init>()V

    iput-object p1, p0, Lo/overridesItemVisibility;->onPostMessage:Lo/isVisible;

    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lo/overridesItemVisibility;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lo/overridesItemVisibility;->extraCallback:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/overridesItemVisibility;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/overridesItemVisibility;->onTransact:Ljava/util/ArrayList;

    .line 28
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lo/overridesItemVisibility;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lo/overridesItemVisibility;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lo/overridesItemVisibility;->asBinder:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance p1, Lo/overridesItemVisibility$onPostMessage;

    invoke-direct {p1, p0}, Lo/overridesItemVisibility$onPostMessage;-><init>(Lo/overridesItemVisibility;)V

    check-cast p1, Lo/setPlaybackToRemote;

    iput-object p1, p0, Lo/overridesItemVisibility;->asInterface:Lo/setPlaybackToRemote;

    const/4 p1, -0x1

    .line 152
    iput p1, p0, Lo/overridesItemVisibility;->ICustomTabsCallback$Stub$Proxy:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lo/overridesItemVisibility;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final ICustomTabsCallback(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string v1, "Success"

    goto :goto_0

    :cond_0
    const-string v1, "Pending"

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xa

    const-string v2, "RequestDispatcher:publishResult:%s"

    .line 131
    invoke-static {v1, v2, v0}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v1, Lo/overridesItemVisibility$onMessageChannelReady;

    invoke-direct {v1, p0}, Lo/overridesItemVisibility$onMessageChannelReady;-><init>(Lo/overridesItemVisibility;)V

    check-cast v1, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/updateItemAt;->ICustomTabsCallback(Lo/updateItemAt;Lo/getServerTime;)Ljava/io/Closeable;

    .line 136
    iget v0, p0, Lo/overridesItemVisibility;->ICustomTabsCallback$Stub$Proxy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lo/overridesItemVisibility;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 180
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/onDisconnectSetValue;

    if-eqz v2, :cond_1

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 140
    :cond_2
    iget-object v1, p0, Lo/overridesItemVisibility;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 141
    sget-object v1, Lo/overridesItemVisibility;->ICustomTabsService:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lo/overridesItemVisibility;->newSession:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iput p1, p0, Lo/overridesItemVisibility;->ICustomTabsCallback$Stub$Proxy:I

    .line 143
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final ICustomTabsCallback(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sendAccessibilityEvent;",
            ">;)V"
        }
    .end annotation

    .line 77
    :goto_0
    iget-object v0, p0, Lo/overridesItemVisibility;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/overridesItemVisibility;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    iget-object v0, p0, Lo/overridesItemVisibility;->extraCallback:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lo/overridesItemVisibility;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v3, v0, 0x32

    if-ge v2, v3, :cond_4

    .line 88
    iget-object p1, p0, Lo/overridesItemVisibility;->extraCallback:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_3

    .line 1119
    sget-object p1, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    iget-object v0, p0, Lo/overridesItemVisibility;->newSession:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/getAccessibilityNodeProvider;->onMessageChannelReady(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 1122
    invoke-direct {p0, p1}, Lo/overridesItemVisibility;->ICustomTabsCallback(I)V

    return-void

    .line 1126
    :cond_2
    invoke-direct {p0, v1}, Lo/overridesItemVisibility;->ICustomTabsCallback(I)V

    :cond_3
    return-void

    .line 95
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x32

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {p1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lo/overridesItemVisibility;->extraCallback:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 97
    iget-object v1, p0, Lo/overridesItemVisibility;->onPostMessage:Lo/isVisible;

    iget-object v2, p0, Lo/overridesItemVisibility;->onTransact:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    new-instance v3, Lo/overridesItemVisibility$onNavigationEvent;

    invoke-direct {v3, p0, v0, p1}, Lo/overridesItemVisibility$onNavigationEvent;-><init>(Lo/overridesItemVisibility;Ljava/util/List;Ljava/util/List;)V

    check-cast v3, Lo/getScrapOrCachedViewForId;

    invoke-virtual {v1, v0, v2, v3}, Lo/isVisible;->onMessageChannelReady(Ljava/util/List;Ljava/util/List;Lo/getScrapOrCachedViewForId;)V

    goto :goto_0

    .line 79
    :cond_5
    :goto_1
    invoke-direct {p0, v1}, Lo/overridesItemVisibility;->ICustomTabsCallback(I)V

    return-void
.end method

.method public static synthetic ICustomTabsCallback(Lo/overridesItemVisibility;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lo/overridesItemVisibility;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/overridesItemVisibility;Ljava/lang/String;)V
    .locals 1

    .line 1147
    iget-object v0, p0, Lo/overridesItemVisibility;->onTransact:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    iget-object p0, p0, Lo/overridesItemVisibility;->onTransact:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static final synthetic extraCallback(Lo/overridesItemVisibility;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/overridesItemVisibility;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/overridesItemVisibility;)Lo/setPlaybackToRemote;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/overridesItemVisibility;->asInterface:Lo/setPlaybackToRemote;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/overridesItemVisibility;Ljava/util/List;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lo/overridesItemVisibility;->ICustomTabsCallback(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic onNavigationEvent()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 21
    sget-object v0, Lo/overridesItemVisibility;->ICustomTabsService:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic onNavigationEvent(Lo/overridesItemVisibility;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/overridesItemVisibility;->extraCallback:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/onDisconnectSetValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/Integer;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 33
    iget v0, p0, Lo/overridesItemVisibility;->ICustomTabsCallback$Stub$Proxy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    .line 34
    :try_start_0
    iget v1, p0, Lo/overridesItemVisibility;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 35
    iget v1, p0, Lo/overridesItemVisibility;->ICustomTabsCallback$Stub$Proxy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    monitor-exit v0

    return-void

    .line 38
    :cond_1
    :try_start_1
    iget-object v1, p0, Lo/overridesItemVisibility;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    monitor-exit v0

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    .line 41
    sget-object v1, Lcom/dreamplug/utils/health/Health;->onMessageChannelReady:Lcom/dreamplug/utils/health/Health;

    sget-object v1, Lcom/dreamplug/utils/health/Health$onPostMessage;->onPostMessage:Lcom/dreamplug/utils/health/Health$onPostMessage;

    invoke-static {v1}, Lcom/dreamplug/utils/health/Health;->extraCallback(Lcom/dreamplug/utils/health/Health$onPostMessage;)Lcom/dreamplug/utils/health/Health$ServiceStatus;

    move-result-object v1

    invoke-static {v1}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/utils/health/Health$ServiceStatus;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xa

    const-string v3, "RequestDispatcher:send:isHealthy-%s"

    .line 40
    invoke-static {v1, v3, v0}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/dreamplug/utils/health/Health;->onMessageChannelReady:Lcom/dreamplug/utils/health/Health;

    sget-object v0, Lcom/dreamplug/utils/health/Health$onPostMessage;->onPostMessage:Lcom/dreamplug/utils/health/Health$onPostMessage;

    invoke-static {v0}, Lcom/dreamplug/utils/health/Health;->extraCallback(Lcom/dreamplug/utils/health/Health$onPostMessage;)Lcom/dreamplug/utils/health/Health$ServiceStatus;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/utils/health/Health$ServiceStatus;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1064
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v1, Lo/overridesItemVisibility$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/overridesItemVisibility$ICustomTabsCallback;-><init>(Lo/overridesItemVisibility;)V

    check-cast v1, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/updateItemAt;->ICustomTabsCallback(Lo/updateItemAt;Lo/getServerTime;)Ljava/io/Closeable;

    .line 44
    iget-object v0, p0, Lo/overridesItemVisibility;->asBinder:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 46
    :try_start_2
    sget-object v0, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    iget-object v1, p0, Lo/overridesItemVisibility;->newSession:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/getAccessibilityNodeProvider;->extraCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lo/getSessionPersistenceKey;->ICustomTabsCallback(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 47
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_5

    .line 48
    invoke-direct {p0, v0}, Lo/overridesItemVisibility;->ICustomTabsCallback(Ljava/util/List;)V

    return-void

    .line 50
    :cond_5
    invoke-direct {p0, v2}, Lo/overridesItemVisibility;->ICustomTabsCallback(I)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RequestDispatcher"

    .line 53
    check-cast v0, Ljava/lang/Throwable;

    const-string/jumbo v2, "tag"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    sget-object v2, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    const-string v2, "failed to fetch requests"

    invoke-static {v1, v2, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    invoke-direct {p0, p1}, Lo/overridesItemVisibility;->ICustomTabsCallback(I)V

    return-void

    :cond_6
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "RequestDispatcher:send:not health skipping send"

    .line 58
    invoke-static {v1, v2, v0}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-direct {p0, p1}, Lo/overridesItemVisibility;->ICustomTabsCallback(I)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v0

    throw p1
.end method
