.class final Lo/onLogMessage$onMessageChannelReady;
.super Lo/onLogMessage$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onLogMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lo/onLogMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getMinKey$onTransact;",
            ">;"
        }
    .end annotation
.end field

.field private volatile onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 265
    const-class v0, Lo/onLogMessage$onMessageChannelReady;

    const-string v1, "onPostMessage"

    .line 266
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/onLogMessage$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getMinKey$onTransact;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 272
    invoke-direct {p0, v0}, Lo/onLogMessage$extraCallback;-><init>(B)V

    .line 273
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 274
    iput-object p1, p0, Lo/onLogMessage$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    .line 275
    iput p2, p0, Lo/onLogMessage$onMessageChannelReady;->onPostMessage:I

    return-void

    .line 1142
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "empty list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/onLogMessage$extraCallback;)Z
    .locals 3

    .line 306
    instance-of v0, p1, Lo/onLogMessage$onMessageChannelReady;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 309
    :cond_0
    check-cast p1, Lo/onLogMessage$onMessageChannelReady;

    if-eq p1, p0, :cond_2

    .line 311
    iget-object v0, p0, Lo/onLogMessage$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    .line 312
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p1, Lo/onLogMessage$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lo/onLogMessage$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lo/onLogMessage$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final extraCallback()Lo/getMinKey$ICustomTabsCallback;
    .locals 3

    .line 1289
    iget-object v0, p0, Lo/onLogMessage$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1290
    sget-object v1, Lo/onLogMessage$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 1293
    rem-int v0, v1, v0

    .line 1294
    sget-object v2, Lo/onLogMessage$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move v1, v0

    .line 1296
    :cond_0
    iget-object v0, p0, Lo/onLogMessage$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMinKey$onTransact;

    .line 280
    invoke-static {v0}, Lo/getMinKey$ICustomTabsCallback;->extraCallback(Lo/getMinKey$onTransact;)Lo/getMinKey$ICustomTabsCallback;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 285
    const-class v0, Lo/onLogMessage$onMessageChannelReady;

    .line 2119
    new-instance v1, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 285
    iget-object v0, p0, Lo/onLogMessage$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    const-string v2, "list"

    invoke-virtual {v1, v2, v0}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
