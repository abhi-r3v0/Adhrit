.class public final Lo/computeScrollExtent$onTransact$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


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
        "Lo/getServerTime<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field public final synthetic ICustomTabsCallback:Ljava/lang/String;

.field public final synthetic onNavigationEvent:Lo/computeScrollExtent$onTransact;


# direct methods
.method constructor <init>(Lo/computeScrollExtent$onTransact;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollExtent$onTransact$2;->onNavigationEvent:Lo/computeScrollExtent$onTransact;

    iput-object p2, p0, Lo/computeScrollExtent$onTransact$2;->ICustomTabsCallback:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 10

    .line 1238
    iget-object v0, p0, Lo/computeScrollExtent$onTransact$2;->onNavigationEvent:Lo/computeScrollExtent$onTransact;

    iget-object v0, v0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1513
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1514
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1515
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    .line 1239
    iget-object v4, p0, Lo/computeScrollExtent$onTransact$2;->ICustomTabsCallback:Ljava/lang/String;

    const-string v6, "GEMS"

    invoke-static {v4, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    new-array v6, v4, [Lo/addWrite;

    .line 1240
    iget-object v7, p0, Lo/computeScrollExtent$onTransact$2;->onNavigationEvent:Lo/computeScrollExtent$onTransact;

    iget-object v7, v7, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    .line 3068
    iget-object v7, v7, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v7, :cond_1

    .line 1240
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 4000
    :cond_1
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/removeItemDecoration;

    .line 4043
    new-instance v8, Lo/addWrite;

    const-string/jumbo v9, "reward_ID"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v2

    .line 5043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v7, "source"

    const-string v8, "failure"

    invoke-direct {v2, v7, v8}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v6, v5

    const-string v2, "pairs"

    .line 1240
    invoke-static {v6, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v4, "inadequate_gems_cta_click"

    .line 1240
    invoke-static {v4, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1241
    iget-object v2, p0, Lo/computeScrollExtent$onTransact$2;->onNavigationEvent:Lo/computeScrollExtent$onTransact;

    iget-object v2, v2, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    .line 6000
    iget-object v2, v2, Lo/computeScrollExtent;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    const-string v4, "inadequate gem"

    .line 1241
    invoke-static {v2, v4}, Lo/getMoveDuration;->onRelationshipValidationResult(Lo/getMoveDuration;Ljava/lang/String;)V

    goto :goto_1

    .line 1243
    :cond_2
    iget-object v2, p0, Lo/computeScrollExtent$onTransact$2;->onNavigationEvent:Lo/computeScrollExtent$onTransact;

    iget-object v2, v2, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    .line 1244
    iget-object v2, p0, Lo/computeScrollExtent$onTransact$2;->onNavigationEvent:Lo/computeScrollExtent$onTransact;

    iget-object v2, v2, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    .line 7000
    iget-object v2, v2, Lo/computeScrollExtent;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    const-string v4, "mystery"

    .line 1244
    invoke-static {v2, v4}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;)V

    .line 1517
    :goto_1
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 1518
    :cond_4
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_5

    .line 1519
    new-instance v2, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/computeScrollExtent$onTransact$2;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1520
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1522
    :cond_5
    :goto_2
    new-instance v1, Lo/computeScrollExtent$onTransact$2$onNavigationEvent;

    invoke-direct {v1, v3, v0}, Lo/computeScrollExtent$onTransact$2$onNavigationEvent;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    .line 65
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
