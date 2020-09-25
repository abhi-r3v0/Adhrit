.class final Lo/UpiErrorResponseJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Status;


# instance fields
.field private final ICustomTabsCallback:[Lo/SimResponseJsonAdapter;

.field private final onMessageChannelReady:[J


# direct methods
.method public constructor <init>([Lo/SimResponseJsonAdapter;[J)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/UpiErrorResponseJsonAdapter;->ICustomTabsCallback:[Lo/SimResponseJsonAdapter;

    .line 40
    iput-object p2, p0, Lo/UpiErrorResponseJsonAdapter;->onMessageChannelReady:[J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 51
    iget-object v0, p0, Lo/UpiErrorResponseJsonAdapter;->onMessageChannelReady:[J

    array-length v0, v0

    return v0
.end method

.method public final ICustomTabsCallback(I)J
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 56
    :goto_0
    invoke-static {v2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 57
    iget-object v2, p0, Lo/UpiErrorResponseJsonAdapter;->onMessageChannelReady:[J

    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 58
    iget-object v0, p0, Lo/UpiErrorResponseJsonAdapter;->onMessageChannelReady:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final onMessageChannelReady(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lo/UpiErrorResponseJsonAdapter;->onMessageChannelReady:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback([JJZZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 64
    iget-object p2, p0, Lo/UpiErrorResponseJsonAdapter;->ICustomTabsCallback:[Lo/SimResponseJsonAdapter;

    aget-object p2, p2, p1

    sget-object v0, Lo/SimResponseJsonAdapter;->onNavigationEvent:Lo/SimResponseJsonAdapter;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object p2, p0, Lo/UpiErrorResponseJsonAdapter;->ICustomTabsCallback:[Lo/SimResponseJsonAdapter;

    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 66
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(J)I
    .locals 2

    .line 45
    iget-object v0, p0, Lo/UpiErrorResponseJsonAdapter;->onMessageChannelReady:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent([JJZZ)I

    move-result p1

    .line 46
    iget-object p2, p0, Lo/UpiErrorResponseJsonAdapter;->onMessageChannelReady:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
