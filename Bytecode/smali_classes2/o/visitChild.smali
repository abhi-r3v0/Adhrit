.class public final Lo/visitChild;
.super Lo/ensureRunLoop;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u0008\u001a\u00020\tH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u0003H\u0016R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/ranges/IntProgressionIterator;",
        "Lkotlin/collections/IntIterator;",
        "first",
        "",
        "last",
        "step",
        "(III)V",
        "finalElement",
        "hasNext",
        "",
        "next",
        "getStep",
        "()I",
        "nextInt",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private extraCallback:I

.field private onMessageChannelReady:Z

.field private final onNavigationEvent:I

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 38
    invoke-direct {p0}, Lo/ensureRunLoop;-><init>()V

    iput p3, p0, Lo/visitChild;->onPostMessage:I

    .line 39
    iput p2, p0, Lo/visitChild;->onNavigationEvent:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    if-gt p1, p2, :cond_1

    goto :goto_0

    :cond_0
    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    iput-boolean v0, p0, Lo/visitChild;->onMessageChannelReady:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 41
    :cond_2
    iget p1, p0, Lo/visitChild;->onNavigationEvent:I

    :goto_1
    iput p1, p0, Lo/visitChild;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final extraCallback()I
    .locals 2

    .line 46
    iget v0, p0, Lo/visitChild;->extraCallback:I

    .line 47
    iget v1, p0, Lo/visitChild;->onNavigationEvent:I

    if-ne v0, v1, :cond_1

    .line 48
    iget-boolean v1, p0, Lo/visitChild;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lo/visitChild;->onMessageChannelReady:Z

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 52
    :cond_1
    iget v1, p0, Lo/visitChild;->onPostMessage:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/visitChild;->extraCallback:I

    :goto_0
    return v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lo/visitChild;->onMessageChannelReady:Z

    return v0
.end method
