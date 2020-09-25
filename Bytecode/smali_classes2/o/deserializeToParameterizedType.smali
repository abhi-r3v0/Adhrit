.class public final Lo/deserializeToParameterizedType;
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0000\u0008\u0000\u0018\u00002\u00020*B\u0007\u00a2\u0006\u0004\u0008\u0001\u0010\u0002J!\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0015\u0010\u001e\u001a\u00020\r*\u0004\u0018\u00010\u0003H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u001e\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030 8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010&\u001a\u00020#8@@\u0000X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0016\u0010(\u001a\u00020#8@@\u0000X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/WorkQueue;",
        "<init>",
        "()V",
        "Lkotlinx/coroutines/scheduling/Task;",
        "task",
        "",
        "fair",
        "add",
        "(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;",
        "addLast",
        "(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/Task;",
        "Lkotlinx/coroutines/scheduling/GlobalQueue;",
        "globalQueue",
        "",
        "offloadAllWorkTo",
        "(Lkotlinx/coroutines/scheduling/GlobalQueue;)V",
        "poll",
        "()Lkotlinx/coroutines/scheduling/Task;",
        "pollBuffer",
        "queue",
        "pollTo",
        "(Lkotlinx/coroutines/scheduling/GlobalQueue;)Z",
        "victim",
        "",
        "tryStealBlockingFrom",
        "(Lkotlinx/coroutines/scheduling/WorkQueue;)J",
        "tryStealFrom",
        "blockingOnly",
        "tryStealLastScheduled",
        "(Lkotlinx/coroutines/scheduling/WorkQueue;Z)J",
        "decrementIfBlocking",
        "(Lkotlinx/coroutines/scheduling/Task;)V",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "buffer",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "",
        "getBufferSize$kotlinx_coroutines_core",
        "()I",
        "bufferSize",
        "getSize$kotlinx_coroutines_core",
        "size",
        "kotlinx-coroutines-core",
        ""
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final extraCallback:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final onNavigationEvent:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field static final onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lo/convertToPlainJavaTypes;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blockingTasksInBuffer:I

.field volatile consumerIndex:I

.field volatile lastScheduledTask:Ljava/lang/Object;

.field volatile producerIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lo/deserializeToParameterizedType;

    const-class v1, Ljava/lang/Object;

    const-string v2, "lastScheduledTask"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lo/deserializeToParameterizedType;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lo/deserializeToParameterizedType;->extraCallback:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lo/deserializeToParameterizedType;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "blockingTasksInBuffer"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/deserializeToParameterizedType;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lo/deserializeToParameterizedType;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lo/deserializeToParameterizedType;->lastScheduledTask:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lo/deserializeToParameterizedType;->producerIndex:I

    .line 58
    iput v0, p0, Lo/deserializeToParameterizedType;->consumerIndex:I

    .line 60
    iput v0, p0, Lo/deserializeToParameterizedType;->blockingTasksInBuffer:I

    return-void
.end method

.method private static synthetic extraCallback(Lo/deserializeToParameterizedType;Lo/convertToPlainJavaTypes;)Lo/convertToPlainJavaTypes;
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0}, Lo/deserializeToParameterizedType;->extraCallback(Lo/convertToPlainJavaTypes;Z)Lo/convertToPlainJavaTypes;

    move-result-object p0

    return-object p0
.end method

.method private final extraCallback(Lo/convertToPlainJavaTypes;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 205
    iget-object p1, p1, Lo/convertToPlainJavaTypes;->asBinder:Lo/parseAndValidateUpdate;

    invoke-interface {p1}, Lo/parseAndValidateUpdate;->onPostMessage()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 196
    sget-object p1, Lo/deserializeToParameterizedType;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    .line 197
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private final onMessageChannelReady(Lo/deserializeToParameterizedType;Z)J
    .locals 7

    .line 152
    :cond_0
    iget-object v0, p1, Lo/deserializeToParameterizedType;->lastScheduledTask:Ljava/lang/Object;

    check-cast v0, Lo/convertToPlainJavaTypes;

    const-wide/16 v1, -0x2

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    const/4 v3, 0x0

    if-eqz p2, :cond_3

    .line 204
    iget-object v4, v0, Lo/convertToPlainJavaTypes;->asBinder:Lo/parseAndValidateUpdate;

    invoke-interface {v4}, Lo/parseAndValidateUpdate;->onPostMessage()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_3

    return-wide v1

    .line 156
    :cond_3
    sget-object v1, Lo/convertToCustomClass;->onMessageChannelReady:Lo/deserializeToPrimitive;

    invoke-virtual {v1}, Lo/deserializeToPrimitive;->onPostMessage()J

    move-result-wide v1

    .line 157
    iget-wide v4, v0, Lo/convertToPlainJavaTypes;->asInterface:J

    sub-long/2addr v1, v4

    .line 158
    sget-wide v4, Lo/convertToCustomClass;->extraCallback:J

    cmp-long v6, v1, v4

    if-gez v6, :cond_4

    .line 159
    sget-wide p1, Lo/convertToCustomClass;->extraCallback:J

    sub-long/2addr p1, v1

    return-wide p1

    .line 166
    :cond_4
    sget-object v1, Lo/deserializeToParameterizedType;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4072
    invoke-virtual {p0, v0, v3}, Lo/deserializeToParameterizedType;->extraCallback(Lo/convertToPlainJavaTypes;Z)Lo/convertToPlainJavaTypes;

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private final onPostMessage(Lo/convertToPlainJavaTypes;)Lo/convertToPlainJavaTypes;
    .locals 2

    .line 202
    iget-object v0, p1, Lo/convertToPlainJavaTypes;->asBinder:Lo/parseAndValidateUpdate;

    invoke-interface {v0}, Lo/parseAndValidateUpdate;->onPostMessage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 83
    sget-object v0, Lo/deserializeToParameterizedType;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 1052
    :cond_1
    iget v0, p0, Lo/deserializeToParameterizedType;->producerIndex:I

    iget v1, p0, Lo/deserializeToParameterizedType;->consumerIndex:I

    sub-int/2addr v0, v1

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_2

    return-object p1

    .line 85
    :cond_2
    iget v0, p0, Lo/deserializeToParameterizedType;->producerIndex:I

    and-int/2addr v0, v1

    .line 94
    :goto_1
    iget-object v1, p0, Lo/deserializeToParameterizedType;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 95
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 97
    :cond_3
    iget-object v1, p0, Lo/deserializeToParameterizedType;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 98
    sget-object p1, Lo/deserializeToParameterizedType;->extraCallback:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/deserializeToParameterizedType;)J
    .locals 4

    .line 109
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2052
    iget v0, p0, Lo/deserializeToParameterizedType;->producerIndex:I

    iget v3, p0, Lo/deserializeToParameterizedType;->consumerIndex:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 110
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lo/deserializeToParameterizedType;->onMessageChannelReady()Lo/convertToPlainJavaTypes;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 112
    invoke-static {p0, v0}, Lo/deserializeToParameterizedType;->extraCallback(Lo/deserializeToParameterizedType;Lo/convertToPlainJavaTypes;)Lo/convertToPlainJavaTypes;

    move-result-object p1

    .line 113
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    :goto_3
    const-wide/16 v0, -0x1

    return-wide v0

    .line 116
    :cond_6
    invoke-direct {p0, p1, v2}, Lo/deserializeToParameterizedType;->onMessageChannelReady(Lo/deserializeToParameterizedType;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final extraCallback(Lo/convertToPlainJavaTypes;Z)Lo/convertToPlainJavaTypes;
    .locals 0

    if-eqz p2, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lo/deserializeToParameterizedType;->onPostMessage(Lo/convertToPlainJavaTypes;)Lo/convertToPlainJavaTypes;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    sget-object p2, Lo/deserializeToParameterizedType;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/convertToPlainJavaTypes;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 75
    :cond_1
    invoke-direct {p0, p1}, Lo/deserializeToParameterizedType;->onPostMessage(Lo/convertToPlainJavaTypes;)Lo/convertToPlainJavaTypes;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Lo/validateNullableKey;)V
    .locals 2

    .line 141
    sget-object v0, Lo/deserializeToParameterizedType;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/convertToPlainJavaTypes;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lo/tryParseInt;->extraCallback(Ljava/lang/Object;)Z

    .line 3175
    :cond_0
    invoke-virtual {p0}, Lo/deserializeToParameterizedType;->onMessageChannelReady()Lo/convertToPlainJavaTypes;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 3176
    :cond_1
    invoke-virtual {p1, v0}, Lo/tryParseInt;->extraCallback(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    return-void
.end method

.method public final onMessageChannelReady(Lo/deserializeToParameterizedType;)J
    .locals 8

    .line 120
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3052
    iget v0, p0, Lo/deserializeToParameterizedType;->producerIndex:I

    iget v3, p0, Lo/deserializeToParameterizedType;->consumerIndex:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 120
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 121
    :cond_2
    :goto_1
    iget v0, p1, Lo/deserializeToParameterizedType;->consumerIndex:I

    .line 122
    iget v3, p1, Lo/deserializeToParameterizedType;->producerIndex:I

    .line 123
    iget-object v4, p1, Lo/deserializeToParameterizedType;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :goto_2
    if-eq v0, v3, :cond_5

    and-int/lit8 v5, v0, 0x7f

    .line 127
    iget v6, p1, Lo/deserializeToParameterizedType;->blockingTasksInBuffer:I

    if-eqz v6, :cond_5

    .line 128
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/convertToPlainJavaTypes;

    if-eqz v6, :cond_4

    .line 203
    iget-object v7, v6, Lo/convertToPlainJavaTypes;->asBinder:Lo/parseAndValidateUpdate;

    invoke-interface {v7}, Lo/parseAndValidateUpdate;->onPostMessage()I

    move-result v7

    if-ne v7, v2, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_4

    const/4 v7, 0x0

    .line 129
    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 130
    sget-object v0, Lo/deserializeToParameterizedType;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 131
    invoke-static {p0, v6}, Lo/deserializeToParameterizedType;->extraCallback(Lo/deserializeToParameterizedType;Lo/convertToPlainJavaTypes;)Lo/convertToPlainJavaTypes;

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 137
    :cond_5
    invoke-direct {p0, p1, v2}, Lo/deserializeToParameterizedType;->onMessageChannelReady(Lo/deserializeToParameterizedType;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method final onMessageChannelReady()Lo/convertToPlainJavaTypes;
    .locals 5

    .line 182
    :cond_0
    :goto_0
    iget v0, p0, Lo/deserializeToParameterizedType;->consumerIndex:I

    .line 183
    iget v1, p0, Lo/deserializeToParameterizedType;->producerIndex:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    and-int/lit8 v1, v0, 0x7f

    .line 185
    sget-object v3, Lo/deserializeToParameterizedType;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lo/deserializeToParameterizedType;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/convertToPlainJavaTypes;

    if-nez v0, :cond_2

    goto :goto_0

    .line 188
    :cond_2
    invoke-direct {p0, v0}, Lo/deserializeToParameterizedType;->extraCallback(Lo/convertToPlainJavaTypes;)V

    return-object v0
.end method

.method public final onNavigationEvent()Lo/convertToPlainJavaTypes;
    .locals 2

    .line 66
    sget-object v0, Lo/deserializeToParameterizedType;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/convertToPlainJavaTypes;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/deserializeToParameterizedType;->onMessageChannelReady()Lo/convertToPlainJavaTypes;

    move-result-object v0

    :cond_0
    return-object v0
.end method
