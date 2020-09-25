.class public abstract Lo/getResponseTimeExpectationsFetchInterval;
.super Lo/getRemoteConfigFetchInterval;
.source ""

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getRemoteConfigFetchInterval<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient onMessageChannelReady:Lo/setResponseTimeExpectationsFetchInterval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setResponseTimeExpectationsFetchInterval<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getRemoteConfigFetchInterval;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()Lo/setResponseTimeExpectationsFetchInterval;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setResponseTimeExpectationsFetchInterval<",
            "TE;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lo/getResponseTimeExpectationsFetchInterval;->onMessageChannelReady:Lo/setResponseTimeExpectationsFetchInterval;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lo/getResponseTimeExpectationsFetchInterval;->asBinder()Lo/setResponseTimeExpectationsFetchInterval;

    move-result-object v0

    iput-object v0, p0, Lo/getResponseTimeExpectationsFetchInterval;->onMessageChannelReady:Lo/setResponseTimeExpectationsFetchInterval;

    :cond_0
    return-object v0
.end method

.method asBinder()Lo/setResponseTimeExpectationsFetchInterval;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setResponseTimeExpectationsFetchInterval<",
            "TE;>;"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lo/getRemoteConfigFetchInterval;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lo/setResponseTimeExpectationsFetchInterval;->onMessageChannelReady([Ljava/lang/Object;)Lo/setResponseTimeExpectationsFetchInterval;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lo/getMsgFetchIntervalNormal;->extraCallback(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 5
    invoke-static {p0}, Lo/getMsgFetchIntervalNormal;->onMessageChannelReady(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lo/getRemoteConfigFetchInterval;->onNavigationEvent()Lo/getActiveConvMaxFetchInterval;

    move-result-object v0

    return-object v0
.end method
