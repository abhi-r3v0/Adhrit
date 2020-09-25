.class public final Lo/onDestroyOptionsMenu$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDestroyOptionsMenu;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/asympote/campaign/OnboardingCampaignData$linkCampaignData$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lo/onDestroyOptionsMenu$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/onDestroyOptionsMenu$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/onDestroyOptionsMenu$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {}, Lo/onDestroyOptionsMenu;->onMessageChannelReady()V

    .line 32
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    iget-object v0, p0, Lo/onDestroyOptionsMenu$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 1000
    sget-object v1, Lo/onDestroyOptionsMenu;->ICustomTabsCallback:Lo/setSubtitleTextColor;

    sget-object v2, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 34
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    iget-object v0, p0, Lo/onDestroyOptionsMenu$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 2000
    sget-object v1, Lo/onDestroyOptionsMenu;->onNavigationEvent:Lo/setSubtitleTextColor;

    sget-object v2, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 35
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    iget-object v0, p0, Lo/onDestroyOptionsMenu$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 3000
    sget-object v1, Lo/onDestroyOptionsMenu;->extraCallback:Lo/setSubtitleTextColor;

    sget-object v2, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_0
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_1

    .line 38
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    const/4 v0, 0x0

    invoke-static {v0}, Lo/onDestroyOptionsMenu;->onNavigationEvent(Ljava/lang/String;)V

    .line 39
    sget-object v1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {v0}, Lo/onDestroyOptionsMenu;->onPostMessage(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {v0}, Lo/onDestroyOptionsMenu;->extraCallback(Ljava/lang/String;)V

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 4000
    sget-object v0, Lo/onDestroyOptionsMenu;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 43
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
