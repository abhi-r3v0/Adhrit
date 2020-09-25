.class final Lo/getActiveConvWindow;
.super Lo/getResponseTimeExpectationsFetchInterval;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getResponseTimeExpectationsFetchInterval<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient ICustomTabsCallback:Lo/setResponseTimeExpectationsFetchInterval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setResponseTimeExpectationsFetchInterval<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient onMessageChannelReady:Lo/setSessionTimeoutInterval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setSessionTimeoutInterval<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/setSessionTimeoutInterval;Lo/setResponseTimeExpectationsFetchInterval;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setSessionTimeoutInterval<",
            "TK;*>;",
            "Lo/setResponseTimeExpectationsFetchInterval<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/getResponseTimeExpectationsFetchInterval;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getActiveConvWindow;->onMessageChannelReady:Lo/setSessionTimeoutInterval;

    .line 3
    iput-object p2, p0, Lo/getActiveConvWindow;->ICustomTabsCallback:Lo/setResponseTimeExpectationsFetchInterval;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setResponseTimeExpectationsFetchInterval;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setResponseTimeExpectationsFetchInterval<",
            "TK;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lo/getActiveConvWindow;->ICustomTabsCallback:Lo/setResponseTimeExpectationsFetchInterval;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 8
    iget-object v0, p0, Lo/getActiveConvWindow;->onMessageChannelReady:Lo/setSessionTimeoutInterval;

    invoke-virtual {v0, p1}, Lo/setSessionTimeoutInterval;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lo/getRemoteConfigFetchInterval;->onNavigationEvent()Lo/getActiveConvMaxFetchInterval;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent()Lo/getActiveConvMaxFetchInterval;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getActiveConvMaxFetchInterval<",
            "TK;>;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lo/getRemoteConfigFetchInterval;->ICustomTabsCallback()Lo/setResponseTimeExpectationsFetchInterval;

    move-result-object v0

    invoke-virtual {v0}, Lo/getRemoteConfigFetchInterval;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lo/getActiveConvMaxFetchInterval;

    return-object v0
.end method

.method final onPostMessage([Ljava/lang/Object;I)I
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/getRemoteConfigFetchInterval;->ICustomTabsCallback()Lo/setResponseTimeExpectationsFetchInterval;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/getRemoteConfigFetchInterval;->onPostMessage([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final size()I
    .locals 1

    .line 9
    iget-object v0, p0, Lo/getActiveConvWindow;->onMessageChannelReady:Lo/setSessionTimeoutInterval;

    invoke-virtual {v0}, Lo/setSessionTimeoutInterval;->size()I

    move-result v0

    return v0
.end method
