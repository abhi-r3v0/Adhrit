.class public final Lo/accept;
.super Lo/RedemptionView;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/getRewardType;


# direct methods
.method public constructor <init>(Lo/getRewardType;)V
    .locals 0

    invoke-direct {p0}, Lo/RedemptionView;-><init>()V

    iput-object p1, p0, Lo/accept;->onNavigationEvent:Lo/getRewardType;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    iget-object v0, p0, Lo/accept;->onNavigationEvent:Lo/getRewardType;

    invoke-virtual {v0}, Lo/getRewardType;->extraCallback()V

    return-void
.end method

.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/accept;->onNavigationEvent:Lo/getRewardType;

    invoke-virtual {v0}, Lo/getRewardType;->ICustomTabsCallback()V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    iget-object v0, p0, Lo/accept;->onNavigationEvent:Lo/getRewardType;

    invoke-virtual {v0}, Lo/getRewardType;->u_()V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    iget-object v0, p0, Lo/accept;->onNavigationEvent:Lo/getRewardType;

    invoke-virtual {v0}, Lo/getRewardType;->onNavigationEvent()V

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 1

    iget-object v0, p0, Lo/accept;->onNavigationEvent:Lo/getRewardType;

    invoke-virtual {v0, p1}, Lo/getRewardType;->ICustomTabsCallback(I)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    iget-object v0, p0, Lo/accept;->onNavigationEvent:Lo/getRewardType;

    invoke-virtual {v0}, Lo/getRewardType;->onPostMessage()V

    return-void
.end method

.method public final onTransact()V
    .locals 1

    iget-object v0, p0, Lo/accept;->onNavigationEvent:Lo/getRewardType;

    invoke-virtual {v0}, Lo/getRewardType;->onTransact()V

    return-void
.end method
