.class final Lo/updateMeasurements$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateMeasurements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/updateMeasurements;


# direct methods
.method constructor <init>(Lo/updateMeasurements;)V
    .locals 0

    iput-object p1, p0, Lo/updateMeasurements$extraCallback;->onPostMessage:Lo/updateMeasurements;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 21
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1124
    iget-object p1, p0, Lo/updateMeasurements$extraCallback;->onPostMessage:Lo/updateMeasurements;

    .line 2021
    iget-object p1, p1, Lo/updateMeasurements;->mayLaunchUrl:Lo/getSpanGroupIndex;

    .line 3000
    iget-object v0, p1, Lo/getSpanGroupIndex;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getSpanIndex;

    .line 3025
    iget-object v0, v0, Lo/getSpanIndex;->ICustomTabsCallback:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 3320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2060
    :goto_0
    check-cast v0, Lo/onSelectedChanged;

    if-eqz v0, :cond_1

    .line 4007
    iget-object v0, v0, Lo/onSelectedChanged;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;

    if-eqz v0, :cond_1

    .line 2061
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lo/isCurrent$onMessageChannelReady;->extraCallback(Landroid/app/Activity;)V

    .line 5006
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v2, "stash_interest_detail_screen_load"

    invoke-interface {p1, v2, v1}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 2063
    sget-object v1, Lo/checkVerticalSwipe;->onNavigationEvent:Lo/checkVerticalSwipe$onNavigationEvent;

    new-instance v1, Lo/checkVerticalSwipe$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/checkVerticalSwipe$ICustomTabsCallback;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;)V

    .line 5088
    new-instance v0, Lo/checkVerticalSwipe;

    invoke-direct {v0}, Lo/checkVerticalSwipe;-><init>()V

    .line 5089
    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    check-cast v1, Landroid/os/Parcelable;

    const-string v3, "extra"

    .line 6016
    invoke-static {v2, v1, v3}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 2063
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    .line 6464
    new-instance v1, Lo/binderDied;

    invoke-direct {v1, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const-string p1, "interest"

    .line 2063
    invoke-virtual {v0, v1, p1}, Lo/onAudioInfoChanged;->extraCallback(Lo/MediaControllerCompat$MediaControllerImplApi23;Ljava/lang/String;)I

    .line 21
    :cond_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
