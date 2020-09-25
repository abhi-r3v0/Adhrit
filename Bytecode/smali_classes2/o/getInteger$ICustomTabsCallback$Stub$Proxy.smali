.class public final Lo/getInteger$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInteger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1",
        "Lcom/dreamplug/network/helper/BaseCallback;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onFailure",
        "",
        "t",
        "",
        "errorResponse",
        "onResponse",
        "response",
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

.field public final synthetic extraCallback:Lo/getInteger;


# direct methods
.method constructor <init>(Lo/getInteger;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lo/getInteger$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getInteger;

    iput-object p2, p0, Lo/getInteger$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 8

    .line 202
    move-object v5, p2

    check-cast v5, Lcom/dreamplug/utils/model/BaseResponse;

    .line 1204
    iget-object p2, p0, Lo/getInteger$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getInteger;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p2

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1298
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1299
    new-instance v6, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v6}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v6, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1300
    invoke-virtual {p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    .line 1205
    iget-object v0, p0, Lo/getInteger$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getInteger;

    invoke-static {v0}, Lo/getInteger;->onNavigationEvent(Lo/getInteger;)V

    .line 1206
    new-instance v0, Lo/isLayoutRtl;

    .line 1207
    iget-object v1, p0, Lo/getInteger$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getInteger;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const-string v4, "activity!!"

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    .line 1208
    invoke-static {p1, v5}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 1209
    iget-object v4, p0, Lo/getInteger$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getInteger;

    const v5, 0x7f130337

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.ok)"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1210
    new-instance v5, Lo/getInteger$ICustomTabsCallback$Stub$Proxy$extraCallback;

    invoke-direct {v5}, Lo/getInteger$ICustomTabsCallback$Stub$Proxy$extraCallback;-><init>()V

    check-cast v5, Lo/isLayoutRtl$onPostMessage;

    .line 1206
    invoke-direct {v0, v1, p1, v4, v5}, Lo/isLayoutRtl;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lo/isLayoutRtl$onPostMessage;)V

    .line 1216
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1302
    iput-boolean v3, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 1303
    :cond_2
    invoke-virtual {p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v1, :cond_3

    .line 1304
    new-instance v7, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;

    move-object v0, v7

    move-object v1, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getInteger$ICustomTabsCallback$Stub$Proxy;Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)V

    check-cast v7, Lo/createCallback;

    iput-object v7, v6, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1305
    iget-object p1, v6, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p2, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1307
    :cond_3
    :goto_0
    new-instance p1, Lo/getInteger$ICustomTabsCallback$Stub$Proxy$onNavigationEvent;

    invoke-direct {p1, v6, p2}, Lo/getInteger$ICustomTabsCallback$Stub$Proxy$onNavigationEvent;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 1

    .line 2221
    iget-object p1, p0, Lo/getInteger$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getInteger;

    invoke-static {p1}, Lo/getInteger;->onPostMessage(Lo/getInteger;)Lo/getTitleMarginStart;

    move-result-object p1

    iget-object v0, p0, Lo/getInteger$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    .line 3023
    iput-object v0, p1, Lo/getTitleMarginStart;->extraCallback:Ljava/lang/String;

    .line 2222
    iget-object p1, p0, Lo/getInteger$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getInteger;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/getInteger;->onMessageChannelReady(Lo/getInteger;Ljava/lang/Boolean;)V

    return-void
.end method
