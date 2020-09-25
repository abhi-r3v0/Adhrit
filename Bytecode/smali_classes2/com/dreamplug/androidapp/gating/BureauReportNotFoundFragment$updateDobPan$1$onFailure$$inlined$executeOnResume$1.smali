.class public final Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInteger$ICustomTabsCallback$Stub$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getInteger$ICustomTabsCallback$Stub$Proxy;

.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onMessageChannelReady:Lcom/dreamplug/utils/model/BaseResponse;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getInteger$ICustomTabsCallback$Stub$Proxy;Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getInteger$ICustomTabsCallback$Stub$Proxy;

    iput-object p4, p0, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->onMessageChannelReady:Lcom/dreamplug/utils/model/BaseResponse;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getInteger$ICustomTabsCallback$Stub$Proxy;

    iget-object p1, p1, Lo/getInteger$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getInteger;

    invoke-static {p1}, Lo/getInteger;->onNavigationEvent(Lo/getInteger;)V

    .line 54
    new-instance p1, Lo/isLayoutRtl;

    .line 65
    iget-object v0, p0, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getInteger$ICustomTabsCallback$Stub$Proxy;

    iget-object v0, v0, Lo/getInteger$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getInteger;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    .line 66
    iget-object v1, p0, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->onMessageChannelReady:Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v1, v2}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 67
    iget-object v2, p0, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getInteger$ICustomTabsCallback$Stub$Proxy;

    iget-object v2, v2, Lo/getInteger$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getInteger;

    const v3, 0x7f130337

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.ok)"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v3, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1$ICustomTabsCallback;

    invoke-direct {v3}, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1$ICustomTabsCallback;-><init>()V

    check-cast v3, Lo/isLayoutRtl$onPostMessage;

    .line 54
    invoke-direct {p1, v0, v1, v2, v3}, Lo/isLayoutRtl;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lo/isLayoutRtl$onPostMessage;)V

    .line 64
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
