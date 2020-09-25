.class public final Lo/dispatchOnLoadComplete$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchOnLoadComplete;->onPostMessage(Lcom/dreamplug/androidapp/auth/ThirdPartyAuthorizeRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/CredProtectViewModel$authorizeThirdParty$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
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
.field private synthetic onMessageChannelReady:Lo/dispatchOnLoadComplete;


# direct methods
.method constructor <init>(Lo/dispatchOnLoadComplete;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lo/dispatchOnLoadComplete$onNavigationEvent;->onMessageChannelReady:Lo/dispatchOnLoadComplete;

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
            "Lcom/dreamplug/utils/model/BaseResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 45
    sget-object p1, Lo/shouldCollapse;->ICustomTabsCallback:Lo/shouldCollapse;

    invoke-static {p1}, Lo/shouldCollapse;->onPostMessage(Lo/shouldCollapse;)V

    .line 46
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 1000
    sget-object p1, Lo/setTrackTintMode;->INotificationSideChannel:Lo/setTitleTextColor;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 47
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object p1, Lo/setTrackTintMode;->onResult:Lo/setTitleTextColor;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v1, 0x41

    aget-object v0, v0, v1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 48
    iget-object p1, p0, Lo/dispatchOnLoadComplete$onNavigationEvent;->onMessageChannelReady:Lo/dispatchOnLoadComplete;

    invoke-static {p1}, Lo/dispatchOnLoadComplete;->onPostMessage(Lo/dispatchOnLoadComplete;)Lo/setActive;

    move-result-object p1

    new-instance v0, Lo/cancelLoadInBackground;

    invoke-direct {v0}, Lo/cancelLoadInBackground;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_0
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lo/dispatchOnLoadComplete$onNavigationEvent;->onMessageChannelReady:Lo/dispatchOnLoadComplete;

    invoke-static {v0}, Lo/dispatchOnLoadComplete;->onPostMessage(Lo/dispatchOnLoadComplete;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/cancelLoadInBackground;

    const/4 v2, 0x0

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 2014
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 3014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 52
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v3, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lo/cancelLoadInBackground;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
