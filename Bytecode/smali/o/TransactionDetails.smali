.class public abstract Lo/TransactionDetails;
.super Lo/setCampaign;
.source ""

# interfaces
.implements Lo/Status;


# instance fields
.field private extraCallback:J

.field private onMessageChannelReady:Lo/Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/setCampaign;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()I
    .locals 1

    .line 49
    iget-object v0, p0, Lo/TransactionDetails;->onMessageChannelReady:Lo/Status;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Status;

    invoke-interface {v0}, Lo/Status;->ICustomTabsCallback()I

    move-result v0

    return v0
.end method

.method public ICustomTabsCallback(I)J
    .locals 4

    .line 54
    iget-object v0, p0, Lo/TransactionDetails;->onMessageChannelReady:Lo/Status;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Status;

    invoke-interface {v0, p1}, Lo/Status;->ICustomTabsCallback(I)J

    move-result-wide v0

    iget-wide v2, p0, Lo/TransactionDetails;->extraCallback:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public ICustomTabsCallback(JLo/Status;J)V
    .locals 0

    .line 41
    iput-wide p1, p0, Lo/setCampaign;->ICustomTabsCallback:J

    .line 42
    iput-object p3, p0, Lo/TransactionDetails;->onMessageChannelReady:Lo/Status;

    const-wide p1, 0x7fffffffffffffffL

    cmp-long p3, p4, p1

    if-nez p3, :cond_0

    .line 43
    iget-wide p4, p0, Lo/setCampaign;->ICustomTabsCallback:J

    :cond_0
    iput-wide p4, p0, Lo/TransactionDetails;->extraCallback:J

    return-void
.end method

.method public onMessageChannelReady(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lo/TransactionDetails;->onMessageChannelReady:Lo/Status;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Status;

    iget-wide v1, p0, Lo/TransactionDetails;->extraCallback:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lo/Status;->onMessageChannelReady(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onMessageChannelReady()V
    .locals 1

    .line 72
    invoke-super {p0}, Lo/setCampaign;->onMessageChannelReady()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lo/TransactionDetails;->onMessageChannelReady:Lo/Status;

    return-void
.end method

.method public onNavigationEvent(J)I
    .locals 3

    .line 59
    iget-object v0, p0, Lo/TransactionDetails;->onMessageChannelReady:Lo/Status;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Status;

    iget-wide v1, p0, Lo/TransactionDetails;->extraCallback:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lo/Status;->onNavigationEvent(J)I

    move-result p1

    return p1
.end method
