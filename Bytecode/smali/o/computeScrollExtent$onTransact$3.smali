.class public final Lo/computeScrollExtent$onTransact$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/rerunTransactionQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeScrollExtent$onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/rerunTransactionQueue<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "referralBottomSheet",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;",
        "rewardId",
        "",
        "rewardUsageId",
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
.field public final synthetic ICustomTabsCallback:Lo/computeScrollExtent$onTransact;


# direct methods
.method constructor <init>(Lo/computeScrollExtent$onTransact;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollExtent$onTransact$3;->ICustomTabsCallback:Lo/computeScrollExtent$onTransact;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 65
    move-object v4, p1

    check-cast v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    move-object v6, p3

    check-cast v6, Ljava/lang/String;

    const-string p1, "referralBottomSheet"

    invoke-static {v4, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1255
    iget-object p1, p0, Lo/computeScrollExtent$onTransact$3;->ICustomTabsCallback:Lo/computeScrollExtent$onTransact;

    iget-object p1, p1, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string p2, "lifecycle"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1513
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1514
    new-instance p3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {p3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1515
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    if-eqz p2, :cond_1

    .line 1256
    iget-object p2, p0, Lo/computeScrollExtent$onTransact$3;->ICustomTabsCallback:Lo/computeScrollExtent$onTransact;

    iget-object p2, p2, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-static {p2, v4, v5, v6}, Lo/computeScrollExtent;->onPostMessage(Lo/computeScrollExtent;Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    iput-boolean v1, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 1518
    :cond_1
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p2

    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq p2, v0, :cond_2

    .line 1519
    new-instance p2, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;

    move-object v0, p2

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/computeScrollExtent$onTransact$3;Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Lo/createCallback;

    iput-object p2, p3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1520
    iget-object p2, p3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1522
    :cond_2
    :goto_0
    new-instance p2, Lo/computeScrollExtent$onTransact$3$extraCallback;

    invoke-direct {p2, p3, p1}, Lo/computeScrollExtent$onTransact$3$extraCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    .line 65
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
