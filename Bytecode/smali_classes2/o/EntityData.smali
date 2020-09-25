.class public final Lo/EntityData;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RedeemInitiatedRewardDetailsResponse;


# instance fields
.field private onMessageChannelReady:Lo/logout;


# direct methods
.method public constructor <init>(Lo/logout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/EntityData;->onMessageChannelReady:Lo/logout;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/EntityData;->onMessageChannelReady:Lo/logout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/logout;->ICustomTabsService()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    iget-object v0, p0, Lo/EntityData;->onMessageChannelReady:Lo/logout;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Lo/RedeemInitiatedRewardDetailsResponse;
    .locals 0

    return-object p0
.end method
