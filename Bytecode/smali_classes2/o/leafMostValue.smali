.class public final Lo/leafMostValue;
.super Lo/findRootMostMatchingPath;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/leafMostValue$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/findRootMostMatchingPath<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0010\u0018\u0000 #*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\u0014\u001a\u00020\t2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0016H\u0014J\u0015\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\u0019J!\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00028\u00002\n\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u001cH\u0014\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\tH\u0014J\n\u0010!\u001a\u0004\u0018\u00010\u0013H\u0014J\u0016\u0010\"\u001a\u0004\u0018\u00010\u00132\n\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u001cH\u0014R\u0014\u0010\u0004\u001a\u00020\u00058TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\nR\u0014\u0010\u000b\u001a\u00020\t8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\nR\u0014\u0010\u000c\u001a\u00020\t8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0014\u0010\r\u001a\u00020\t8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\nR\u0014\u0010\u000e\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\nR\u0012\u0010\u000f\u001a\u00060\u0010j\u0002`\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ConflatedChannel;",
        "E",
        "Lkotlinx/coroutines/channels/AbstractChannel;",
        "()V",
        "bufferDebugString",
        "",
        "getBufferDebugString",
        "()Ljava/lang/String;",
        "isBufferAlwaysEmpty",
        "",
        "()Z",
        "isBufferAlwaysFull",
        "isBufferEmpty",
        "isBufferFull",
        "isEmpty",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Lkotlinx/coroutines/internal/ReentrantLock;",
        "value",
        "",
        "enqueueReceiveInternal",
        "receive",
        "Lkotlinx/coroutines/channels/Receive;",
        "offerInternal",
        "element",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "offerSelectInternal",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;",
        "onCancelIdempotent",
        "",
        "wasClosed",
        "pollInternal",
        "pollSelectInternal",
        "Companion",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/AppCompatDrawableManager;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/locks/ReentrantLock;

.field private onPostMessage:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lo/AppCompatDrawableManager;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1}, Lo/AppCompatDrawableManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/leafMostValue;->extraCallback:Lo/AppCompatDrawableManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lo/findRootMostMatchingPath;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lo/leafMostValue;->ICustomTabsCallback:Ljava/util/concurrent/locks/ReentrantLock;

    .line 31
    sget-object v0, Lo/leafMostValue;->extraCallback:Lo/AppCompatDrawableManager;

    iput-object v0, p0, Lo/leafMostValue;->onPostMessage:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final asBinder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final asInterface()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final extraCallback()Ljava/lang/Object;
    .locals 3

    .line 101
    iget-object v0, p0, Lo/leafMostValue;->ICustomTabsCallback:Ljava/util/concurrent/locks/ReentrantLock;

    .line 144
    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 102
    :try_start_0
    iget-object v1, p0, Lo/leafMostValue;->onPostMessage:Ljava/lang/Object;

    sget-object v2, Lo/leafMostValue;->extraCallback:Lo/AppCompatDrawableManager;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lo/leafMostValue;->ICustomTabsCallback$Stub()Lo/findRootMostPathWithValue;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lo/afterExecute;->extraCallback:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 103
    :cond_1
    :try_start_1
    iget-object v1, p0, Lo/leafMostValue;->onPostMessage:Ljava/lang/Object;

    .line 104
    sget-object v2, Lo/leafMostValue;->extraCallback:Lo/AppCompatDrawableManager;

    iput-object v2, p0, Lo/leafMostValue;->onPostMessage:Ljava/lang/Object;

    .line 105
    sget-object v2, Lo/addWrites;->onPostMessage:Lo/addWrites;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected final onNavigationEvent()Z
    .locals 2

    .line 23
    iget-object v0, p0, Lo/leafMostValue;->onPostMessage:Ljava/lang/Object;

    sget-object v1, Lo/leafMostValue;->extraCallback:Lo/AppCompatDrawableManager;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final onNavigationEvent(Lo/rootMostValue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/rootMostValue<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lo/leafMostValue;->ICustomTabsCallback:Ljava/util/concurrent/locks/ReentrantLock;

    .line 147
    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 132
    :try_start_0
    invoke-super {p0, p1}, Lo/findRootMostMatchingPath;->onNavigationEvent(Lo/rootMostValue;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected final onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lo/leafMostValue;->ICustomTabsCallback:Ljava/util/concurrent/locks/ReentrantLock;

    .line 142
    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lo/leafMostValue;->ICustomTabsCallback$Stub()Lo/findRootMostPathWithValue;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 43
    :cond_0
    :try_start_1
    iget-object v1, p0, Lo/leafMostValue;->onPostMessage:Ljava/lang/Object;

    sget-object v2, Lo/leafMostValue;->extraCallback:Lo/AppCompatDrawableManager;

    if-ne v1, v2, :cond_b

    .line 46
    :cond_1
    invoke-virtual {p0}, Lo/leafMostValue;->ICustomTabsCallback()Lo/leafMostValueMatching;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 47
    :cond_2
    instance-of v2, v1, Lo/findRootMostPathWithValue;

    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    .line 48
    invoke-static {}, Lo/access$3000;->extraCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_4
    if-nez v1, :cond_5

    .line 50
    :try_start_2
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    invoke-interface {v1, p1}, Lo/leafMostValueMatching;->onPostMessage(Ljava/lang/Object;)Lo/AppCompatDrawableManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 52
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lo/purgeAllWrites;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    if-ne v2, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 58
    :cond_8
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez v1, :cond_9

    .line 61
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_9
    invoke-interface {v1}, Lo/leafMostValueMatching;->ICustomTabsCallback()V

    if-nez v1, :cond_a

    .line 62
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_a
    invoke-interface {v1}, Lo/leafMostValueMatching;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 57
    :cond_b
    :goto_2
    :try_start_3
    iput-object p1, p0, Lo/leafMostValue;->onPostMessage:Ljava/lang/Object;

    .line 58
    sget-object p1, Lo/afterExecute;->onPostMessage:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected final onPostMessage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final onTransact()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/leafMostValue;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
