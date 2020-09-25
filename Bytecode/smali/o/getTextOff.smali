.class public final Lo/getTextOff;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\u0008\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\u0004J\u0006\u0010\u000c\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020\u0004J\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0004\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/data/DataUpdater;",
        "",
        "()V",
        "fileUploadDone",
        "",
        "requestTag",
        "",
        "refreshWinFarm",
        "reloadHome",
        "showAppUpdateDialog",
        "updateAddress",
        "updateCoinsCount",
        "updateNBACards",
        "updateRefundAccount",
        "updateRewards",
        "updateTabBarHeight",
        "height",
        "",
        "updateTabBarOffsetPercentage",
        "offset",
        "",
        "updateTabConfigData",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/getTextOff;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/getTextOff;

    invoke-direct {v0}, Lo/getTextOff;-><init>()V

    sput-object v0, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()V
    .locals 1

    .line 25
    sget-object v0, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v0}, Lo/onPanelClosed;->onNavigationEvent()Lo/setActive;

    return-void
.end method

.method public static asInterface()V
    .locals 3

    .line 41
    sget-object v0, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 4000
    sget-object v0, Lo/setSplitTrack;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 41
    new-instance v1, Lo/getThumbTintList;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static extraCallback()V
    .locals 1

    .line 29
    sget-object v0, Lo/dispatchDetachedFromWindow;->onNavigationEvent:Lo/dispatchDetachedFromWindow;

    invoke-virtual {v0}, Lo/dispatchDetachedFromWindow;->asInterface()Lo/setActive;

    return-void
.end method

.method public static extraCallback(F)V
    .locals 2

    .line 57
    sget-object v0, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 8000
    sget-object v0, Lo/setSplitTrack;->asBinder:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 57
    new-instance v1, Lo/getThumbTintList;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v1, p0}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static onMessageChannelReady()V
    .locals 3

    .line 14
    sget-object v0, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 1000
    sget-object v0, Lo/setSplitTrack;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 14
    new-instance v1, Lo/getThumbTintList;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)V
    .locals 2

    const-string v0, "requestTag"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 6000
    sget-object v0, Lo/setSplitTrack;->asInterface:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 49
    new-instance v1, Lo/getThumbTintList;

    invoke-direct {v1, p0}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static onNavigationEvent()V
    .locals 1

    .line 33
    sget-object v0, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-static {}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onMessageChannelReady()Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static onNavigationEvent(I)V
    .locals 1

    .line 60
    sget-object v0, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 9000
    sget-object v0, Lo/setSplitTrack;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static onPostMessage()V
    .locals 3

    .line 18
    sget-object v0, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 2000
    sget-object v0, Lo/setSplitTrack;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 18
    new-instance v1, Lo/getThumbTintList;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 19
    sget-object v0, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    .line 2026
    sget-object v1, Lo/setRemoveDuration$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/setRemoveDuration$onNavigationEvent$ICustomTabsCallback;

    check-cast v1, Lo/setRemoveDuration;

    .line 3010
    new-instance v2, Lo/getThumbTintList;

    invoke-direct {v2, v1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 20
    sget-object v0, Lo/findOneVisibleChild;->onMessageChannelReady:Lo/findOneVisibleChild;

    invoke-static {}, Lo/findOneVisibleChild;->extraCallback()V

    .line 21
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->onMessageChannelReady()Lo/setActive;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static onRelationshipValidationResult()V
    .locals 3

    .line 45
    sget-object v0, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 5000
    sget-object v0, Lo/setSplitTrack;->onTransact:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 45
    new-instance v1, Lo/getThumbTintList;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static onTransact()V
    .locals 3

    .line 53
    sget-object v0, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 7000
    sget-object v0, Lo/setSplitTrack;->onRelationshipValidationResult:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 53
    new-instance v1, Lo/getThumbTintList;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
