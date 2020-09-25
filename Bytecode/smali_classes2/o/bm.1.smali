.class abstract Lo/bm;
.super Lo/setNotificationSound;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/setNotificationSound<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private extraCallback:I

.field private final onMessageChannelReady:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/setNotificationSound;-><init>()V

    .line 2
    invoke-static {p2, p1}, Lo/bZ;->onMessageChannelReady(II)I

    .line 3
    iput p1, p0, Lo/bm;->onMessageChannelReady:I

    .line 4
    iput p2, p0, Lo/bm;->extraCallback:I

    return-void
.end method


# virtual methods
.method protected abstract ICustomTabsCallback(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 2

    .line 6
    iget v0, p0, Lo/bm;->extraCallback:I

    iget v1, p0, Lo/bm;->onMessageChannelReady:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 11
    iget v0, p0, Lo/bm;->extraCallback:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lo/bm;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget v0, p0, Lo/bm;->extraCallback:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo/bm;->extraCallback:I

    invoke-virtual {p0, v0}, Lo/bm;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 10
    iget v0, p0, Lo/bm;->extraCallback:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lo/bm;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget v0, p0, Lo/bm;->extraCallback:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/bm;->extraCallback:I

    invoke-virtual {p0, v0}, Lo/bm;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 15
    iget v0, p0, Lo/bm;->extraCallback:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
