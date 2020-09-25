.class final Lo/getSessionTimeoutInterval;
.super Lo/setResponseTimeExpectationsFetchInterval;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setResponseTimeExpectationsFetchInterval<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setResponseTimeExpectationsFetchInterval;

.field private final transient extraCallback:I

.field private final transient onNavigationEvent:I


# direct methods
.method constructor <init>(Lo/setResponseTimeExpectationsFetchInterval;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getSessionTimeoutInterval;->ICustomTabsCallback:Lo/setResponseTimeExpectationsFetchInterval;

    invoke-direct {p0}, Lo/setResponseTimeExpectationsFetchInterval;-><init>()V

    .line 2
    iput p2, p0, Lo/getSessionTimeoutInterval;->extraCallback:I

    .line 3
    iput p3, p0, Lo/getSessionTimeoutInterval;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(II)Lo/setResponseTimeExpectationsFetchInterval;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lo/setResponseTimeExpectationsFetchInterval<",
            "TE;>;"
        }
    .end annotation

    .line 11
    iget v0, p0, Lo/getSessionTimeoutInterval;->onNavigationEvent:I

    invoke-static {p1, p2, v0}, Lo/gw;->ICustomTabsCallback(III)V

    .line 12
    iget-object v0, p0, Lo/getSessionTimeoutInterval;->ICustomTabsCallback:Lo/setResponseTimeExpectationsFetchInterval;

    iget v1, p0, Lo/getSessionTimeoutInterval;->extraCallback:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lo/setResponseTimeExpectationsFetchInterval;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lo/setResponseTimeExpectationsFetchInterval;

    return-object p1
.end method

.method final extraCallback()I
    .locals 2

    .line 8
    iget-object v0, p0, Lo/getSessionTimeoutInterval;->ICustomTabsCallback:Lo/setResponseTimeExpectationsFetchInterval;

    invoke-virtual {v0}, Lo/getRemoteConfigFetchInterval;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/getSessionTimeoutInterval;->extraCallback:I

    add-int/2addr v0, v1

    iget v1, p0, Lo/getSessionTimeoutInterval;->onNavigationEvent:I

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
    iget v0, p0, Lo/getSessionTimeoutInterval;->onNavigationEvent:I

    invoke-static {p1, v0}, Lo/gw;->onPostMessage(II)I

    .line 10
    iget-object v0, p0, Lo/getSessionTimeoutInterval;->ICustomTabsCallback:Lo/setResponseTimeExpectationsFetchInterval;

    iget v1, p0, Lo/getSessionTimeoutInterval;->extraCallback:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lo/setResponseTimeExpectationsFetchInterval;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final onMessageChannelReady()[Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/getSessionTimeoutInterval;->ICustomTabsCallback:Lo/setResponseTimeExpectationsFetchInterval;

    invoke-virtual {v0}, Lo/getRemoteConfigFetchInterval;->onMessageChannelReady()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final onPostMessage()I
    .locals 2

    .line 7
    iget-object v0, p0, Lo/getSessionTimeoutInterval;->ICustomTabsCallback:Lo/setResponseTimeExpectationsFetchInterval;

    invoke-virtual {v0}, Lo/getRemoteConfigFetchInterval;->onPostMessage()I

    move-result v0

    iget v1, p0, Lo/getSessionTimeoutInterval;->extraCallback:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 5
    iget v0, p0, Lo/getSessionTimeoutInterval;->onNavigationEvent:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lo/setResponseTimeExpectationsFetchInterval;->ICustomTabsCallback(II)Lo/setResponseTimeExpectationsFetchInterval;

    move-result-object p1

    return-object p1
.end method
