.class final Lo/fg;
.super Lo/a$c$1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/a$c$1<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/a$c$1;

.field private final transient onMessageChannelReady:I

.field private final transient onPostMessage:I


# direct methods
.method constructor <init>(Lo/a$c$1;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/fg;->ICustomTabsCallback:Lo/a$c$1;

    invoke-direct {p0}, Lo/a$c$1;-><init>()V

    .line 2
    iput p2, p0, Lo/fg;->onMessageChannelReady:I

    .line 3
    iput p3, p0, Lo/fg;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(II)Lo/a$c$1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lo/a$c$1<",
            "TE;>;"
        }
    .end annotation

    .line 11
    iget v0, p0, Lo/fg;->onPostMessage:I

    invoke-static {p1, p2, v0}, Lo/dq;->onNavigationEvent(III)V

    .line 12
    iget-object v0, p0, Lo/fg;->ICustomTabsCallback:Lo/a$c$1;

    iget v1, p0, Lo/fg;->onMessageChannelReady:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lo/a$c$1;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lo/a$c$1;

    return-object p1
.end method

.method final ICustomTabsCallback()[Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/fg;->ICustomTabsCallback:Lo/a$c$1;

    invoke-virtual {v0}, Lo/isClosed;->ICustomTabsCallback()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final ICustomTabsCallback$Stub()I
    .locals 2

    .line 8
    iget-object v0, p0, Lo/fg;->ICustomTabsCallback:Lo/a$c$1;

    invoke-virtual {v0}, Lo/isClosed;->onMessageChannelReady()I

    move-result v0

    iget v1, p0, Lo/fg;->onMessageChannelReady:I

    add-int/2addr v0, v1

    iget v1, p0, Lo/fg;->onPostMessage:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 9
    iget v0, p0, Lo/fg;->onPostMessage:I

    invoke-static {p1, v0}, Lo/dq;->onMessageChannelReady(II)I

    .line 10
    iget-object v0, p0, Lo/fg;->ICustomTabsCallback:Lo/a$c$1;

    iget v1, p0, Lo/fg;->onMessageChannelReady:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lo/a$c$1;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final onMessageChannelReady()I
    .locals 2

    .line 7
    iget-object v0, p0, Lo/fg;->ICustomTabsCallback:Lo/a$c$1;

    invoke-virtual {v0}, Lo/isClosed;->onMessageChannelReady()I

    move-result v0

    iget v1, p0, Lo/fg;->onMessageChannelReady:I

    add-int/2addr v0, v1

    return v0
.end method

.method final onRelationshipValidationResult()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 5
    iget v0, p0, Lo/fg;->onPostMessage:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lo/a$c$1;->ICustomTabsCallback(II)Lo/a$c$1;

    move-result-object p1

    return-object p1
.end method
