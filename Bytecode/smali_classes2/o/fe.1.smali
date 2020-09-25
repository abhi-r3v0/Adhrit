.class abstract Lo/fe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/isCancelled;

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private onPostMessage:I


# direct methods
.method private constructor <init>(Lo/isCancelled;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/fe;->ICustomTabsCallback:Lo/isCancelled;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, Lo/fe;->ICustomTabsCallback:Lo/isCancelled;

    invoke-static {p1}, Lo/isCancelled;->extraCallback(Lo/isCancelled;)I

    move-result p1

    iput p1, p0, Lo/fe;->onMessageChannelReady:I

    .line 3
    iget-object p1, p0, Lo/fe;->ICustomTabsCallback:Lo/isCancelled;

    invoke-virtual {p1}, Lo/isCancelled;->ICustomTabsCallback()I

    move-result p1

    iput p1, p0, Lo/fe;->onNavigationEvent:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lo/fe;->onPostMessage:I

    return-void
.end method

.method synthetic constructor <init>(Lo/isCancelled;Lo/onCancelled;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lo/fe;-><init>(Lo/isCancelled;)V

    return-void
.end method

.method private final extraCallback()V
    .locals 2

    .line 22
    iget-object v0, p0, Lo/fe;->ICustomTabsCallback:Lo/isCancelled;

    invoke-static {v0}, Lo/isCancelled;->extraCallback(Lo/isCancelled;)I

    move-result v0

    iget v1, p0, Lo/fe;->onMessageChannelReady:I

    if-ne v0, v1, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method abstract ICustomTabsCallback(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .line 5
    iget v0, p0, Lo/fe;->onNavigationEvent:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lo/fe;->extraCallback()V

    .line 7
    invoke-virtual {p0}, Lo/fe;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget v0, p0, Lo/fe;->onNavigationEvent:I

    iput v0, p0, Lo/fe;->onPostMessage:I

    .line 10
    invoke-virtual {p0, v0}, Lo/fe;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lo/fe;->ICustomTabsCallback:Lo/isCancelled;

    iget v2, p0, Lo/fe;->onNavigationEvent:I

    invoke-virtual {v1, v2}, Lo/isCancelled;->ICustomTabsCallback(I)I

    move-result v1

    iput v1, p0, Lo/fe;->onNavigationEvent:I

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 13
    invoke-direct {p0}, Lo/fe;->extraCallback()V

    .line 14
    iget v0, p0, Lo/fe;->onPostMessage:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    .line 15
    invoke-static {v0, v1}, Lo/dq;->onNavigationEvent(ZLjava/lang/Object;)V

    .line 17
    iget v0, p0, Lo/fe;->onMessageChannelReady:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lo/fe;->onMessageChannelReady:I

    .line 18
    iget-object v0, p0, Lo/fe;->ICustomTabsCallback:Lo/isCancelled;

    iget-object v1, v0, Lo/isCancelled;->onPostMessage:[Ljava/lang/Object;

    iget v2, p0, Lo/fe;->onPostMessage:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isCancelled;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget v0, p0, Lo/fe;->onNavigationEvent:I

    iget v1, p0, Lo/fe;->onPostMessage:I

    invoke-static {v0, v1}, Lo/isCancelled;->onNavigationEvent(II)I

    move-result v0

    iput v0, p0, Lo/fe;->onNavigationEvent:I

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lo/fe;->onPostMessage:I

    return-void
.end method
