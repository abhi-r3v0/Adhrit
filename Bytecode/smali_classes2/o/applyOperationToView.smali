.class public final Lo/applyOperationToView;
.super Lo/ensureSessionIdentifier;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u0008\u001a\u00020\tH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u0003H\u0016R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/ranges/LongProgressionIterator;",
        "Lkotlin/collections/LongIterator;",
        "first",
        "",
        "last",
        "step",
        "(JJJ)V",
        "finalElement",
        "hasNext",
        "",
        "next",
        "getStep",
        "()J",
        "nextLong",
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
.field private final ICustomTabsCallback:J

.field private final extraCallback:J

.field private onNavigationEvent:J

.field private onPostMessage:Z


# direct methods
.method public constructor <init>(JJJ)V
    .locals 5

    .line 62
    invoke-direct {p0}, Lo/ensureSessionIdentifier;-><init>()V

    iput-wide p5, p0, Lo/applyOperationToView;->extraCallback:J

    .line 63
    iput-wide p3, p0, Lo/applyOperationToView;->ICustomTabsCallback:J

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p5, v2

    cmp-long p5, p1, p3

    if-lez v4, :cond_0

    if-gtz p5, :cond_1

    goto :goto_0

    :cond_0
    if-ltz p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 64
    :goto_0
    iput-boolean v0, p0, Lo/applyOperationToView;->onPostMessage:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 65
    :cond_2
    iget-wide p1, p0, Lo/applyOperationToView;->ICustomTabsCallback:J

    :goto_1
    iput-wide p1, p0, Lo/applyOperationToView;->onNavigationEvent:J

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lo/applyOperationToView;->onPostMessage:Z

    return v0
.end method

.method public final onNavigationEvent()J
    .locals 5

    .line 70
    iget-wide v0, p0, Lo/applyOperationToView;->onNavigationEvent:J

    .line 71
    iget-wide v2, p0, Lo/applyOperationToView;->ICustomTabsCallback:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 72
    iget-boolean v2, p0, Lo/applyOperationToView;->onPostMessage:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 73
    iput-boolean v2, p0, Lo/applyOperationToView;->onPostMessage:Z

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 76
    :cond_1
    iget-wide v2, p0, Lo/applyOperationToView;->extraCallback:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lo/applyOperationToView;->onNavigationEvent:J

    :goto_0
    return-wide v0
.end method
