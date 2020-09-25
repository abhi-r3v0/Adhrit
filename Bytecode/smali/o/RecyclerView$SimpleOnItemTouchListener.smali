.class public final Lo/RecyclerView$SimpleOnItemTouchListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/validateViewHolderForOffsetPosition;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B0\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0003H\u0016R\u0013\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\tR\u0013\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/network/utils/retry/DefaultRetryStrategy;",
        "Lcom/dreamplug/network/helper/RetryStrategy;",
        "maxRetry",
        "",
        "delay",
        "Lcom/dreamplug/utils/Seconds;",
        "multiplier",
        "adder",
        "(IJIJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "J",
        "count",
        "currentDelay",
        "retry",
        "",
        "retryBlock",
        "Lkotlin/Function0;",
        "shouldRetry",
        "",
        "responseCode",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private final ICustomTabsCallback$Stub:I

.field private final extraCallback:J

.field private onMessageChannelReady:J

.field private onPostMessage:I

.field private final onRelationshipValidationResult:J


# direct methods
.method private constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lo/RecyclerView$SimpleOnItemTouchListener;-><init>(IJIJI)V

    return-void
.end method

.method private constructor <init>(IJIJ)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->onPostMessage:I

    iput-wide p2, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->onRelationshipValidationResult:J

    iput p4, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->ICustomTabsCallback$Stub:I

    .line 14
    iput-wide p2, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->onMessageChannelReady:J

    .line 15
    iput-wide p5, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->extraCallback:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    cmp-long p1, p5, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 19
    iput p1, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->onPostMessage:I

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(IJIJB)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p6}, Lo/RecyclerView$SimpleOnItemTouchListener;-><init>(IJIJ)V

    return-void
.end method

.method public synthetic constructor <init>(IJIJI)V
    .locals 7

    and-int/lit8 p5, p7, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x3

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const-wide/16 p2, 0x2

    :cond_1
    move-wide v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    const/4 p4, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, p4

    :goto_1
    const-wide/16 v5, 0x0

    move-object v0, p0

    .line 11
    invoke-direct/range {v0 .. v6}, Lo/RecyclerView$SimpleOnItemTouchListener;-><init>(IJIJ)V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)Z
    .locals 2

    .line 24
    iget v0, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->ICustomTabsCallback:I

    iget v1, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->onPostMessage:I

    if-ge v0, v1, :cond_0

    const/16 v0, 0x196

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onNavigationEvent(Lo/getServerTime;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "retryBlock"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget v0, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->ICustomTabsCallback:I

    .line 29
    sget-object v0, Lo/RecyclerView$SmoothScroller;->onMessageChannelReady:Lo/RecyclerView$SmoothScroller;

    iget-wide v0, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->onMessageChannelReady:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    new-instance v2, Lo/RecyclerView$SimpleOnItemTouchListener$onNavigationEvent;

    invoke-direct {v2, p1}, Lo/RecyclerView$SimpleOnItemTouchListener$onNavigationEvent;-><init>(Lo/getServerTime;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lo/RecyclerView$SmoothScroller;->onNavigationEvent(JLjava/lang/Runnable;)V

    .line 30
    iget-wide v0, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->onMessageChannelReady:J

    iget-wide v2, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->extraCallback:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->onMessageChannelReady:J

    .line 31
    iget p1, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->ICustomTabsCallback$Stub:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    iput-wide v0, p0, Lo/RecyclerView$SimpleOnItemTouchListener;->onMessageChannelReady:J

    return-void
.end method
