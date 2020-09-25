.class final Lo/setActiveConvWindow;
.super Lo/getResponseTimeExpectationsFetchInterval;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getResponseTimeExpectationsFetchInterval<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient extraCallback:Lo/setSessionTimeoutInterval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setSessionTimeoutInterval<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient onMessageChannelReady:[Ljava/lang/Object;

.field private final transient onNavigationEvent:I

.field private final transient onPostMessage:I


# direct methods
.method constructor <init>(Lo/setSessionTimeoutInterval;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setSessionTimeoutInterval<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/getResponseTimeExpectationsFetchInterval;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setActiveConvWindow;->extraCallback:Lo/setSessionTimeoutInterval;

    .line 3
    iput-object p2, p0, Lo/setActiveConvWindow;->onMessageChannelReady:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lo/setActiveConvWindow;->onPostMessage:I

    .line 5
    iput p4, p0, Lo/setActiveConvWindow;->onNavigationEvent:I

    return-void
.end method

.method static synthetic extraCallback(Lo/setActiveConvWindow;)[Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/setActiveConvWindow;->onMessageChannelReady:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/setActiveConvWindow;)I
    .locals 0

    .line 18
    iget p0, p0, Lo/setActiveConvWindow;->onNavigationEvent:I

    return p0
.end method


# virtual methods
.method final asBinder()Lo/setResponseTimeExpectationsFetchInterval;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setResponseTimeExpectationsFetchInterval<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 9
    new-instance v0, Lo/getActiveConvMinFetchInterval;

    invoke-direct {v0, p0}, Lo/getActiveConvMinFetchInterval;-><init>(Lo/setActiveConvWindow;)V

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 10
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    iget-object v2, p0, Lo/setActiveConvWindow;->extraCallback:Lo/setSessionTimeoutInterval;

    invoke-virtual {v2, v0}, Lo/setSessionTimeoutInterval;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 17
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
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lo/getRemoteConfigFetchInterval;->ICustomTabsCallback()Lo/setResponseTimeExpectationsFetchInterval;

    move-result-object v0

    invoke-virtual {v0}, Lo/getRemoteConfigFetchInterval;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lo/getActiveConvMaxFetchInterval;

    return-object v0
.end method

.method final onPostMessage([Ljava/lang/Object;I)I
    .locals 1

    .line 8
    invoke-virtual {p0}, Lo/getRemoteConfigFetchInterval;->ICustomTabsCallback()Lo/setResponseTimeExpectationsFetchInterval;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/getRemoteConfigFetchInterval;->onPostMessage([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final size()I
    .locals 1

    .line 16
    iget v0, p0, Lo/setActiveConvWindow;->onNavigationEvent:I

    return v0
.end method
