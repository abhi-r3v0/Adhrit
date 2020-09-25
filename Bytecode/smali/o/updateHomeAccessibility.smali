.class public final Lo/updateHomeAccessibility;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/openOptionsMenu$onPostMessage;
.implements Ljava/lang/Runnable;


# annotations
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
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field public final ICustomTabsCallback$Stub:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/isSameListener;

.field public final extraCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/ensureContentInsets;",
            ">;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:Lo/ensureContentInsets$extraCallback;

.field public onNavigationEvent:Lo/setSwitchMinWidth;

.field public onPostMessage:Lo/setCardBackgroundColor;

.field public final onTransact:Lo/asBinder;


# direct methods
.method public constructor <init>(Lo/asBinder;Lo/updateNavigationIcon;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseActivityInterface"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 46
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/updateHomeAccessibility;->extraCallback:Lo/setActive;

    .line 49
    new-instance p1, Lo/updateHomeAccessibility$onMessageChannelReady;

    invoke-direct {p1, p0}, Lo/updateHomeAccessibility$onMessageChannelReady;-><init>(Lo/updateHomeAccessibility;)V

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 49
    iput-object v0, p0, Lo/updateHomeAccessibility;->asInterface:Lo/isSameListener;

    .line 52
    iget-object p1, p0, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    invoke-virtual {p1}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "activity.lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lo/ensureSpinner;

    iget-object v1, p0, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    invoke-direct {v0, v1}, Lo/ensureSpinner;-><init>(Lo/asBinder;)V

    .line 54
    new-instance v0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;-><init>(Lo/updateHomeAccessibility;Lo/MediaControllerCompatApi21$CallbackProxy;Lo/updateNavigationIcon;)V

    .line 143
    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 172
    sget-object p1, Lo/updateHomeAccessibility$onNavigationEvent;->onNavigationEvent:Lo/updateHomeAccessibility$onNavigationEvent;

    check-cast p1, Lo/getServerTime;

    iput-object p1, p0, Lo/updateHomeAccessibility;->ICustomTabsCallback:Lo/getServerTime;

    .line 175
    new-instance p1, Lo/updateHomeAccessibility$extraCallback;

    invoke-direct {p1, p0}, Lo/updateHomeAccessibility$extraCallback;-><init>(Lo/updateHomeAccessibility;)V

    check-cast p1, Lo/getServerTime;

    iput-object p1, p0, Lo/updateHomeAccessibility;->ICustomTabsCallback$Stub:Lo/getServerTime;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Lclub/cred/interjection/data/models/Campaign;)Z
    .locals 7

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaign"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1081
    iget-object v0, p2, Lclub/cred/interjection/data/models/Campaign;->asBinder:Lclub/cred/interjection/data/models/DataCampaign;

    if-eqz v0, :cond_1

    .line 1101
    iget-object v1, v0, Lclub/cred/interjection/data/models/DataCampaign;->ICustomTabsCallback:Lclub/cred/interjection/data/models/Action;

    if-nez v1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    sget-object v0, Lo/DividerItemDecoration;->onMessageChannelReady:Lo/DividerItemDecoration;

    .line 2064
    iget-object v2, p2, Lclub/cred/interjection/data/models/Campaign;->onMessageChannelReady:Ljava/lang/String;

    .line 3000
    iget-object p2, p0, Lo/updateHomeAccessibility;->asInterface:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lo/getRowCountForAccessibility;

    .line 235
    sget-object p2, Lo/getRowCountForAccessibility;->onMessageChannelReady:Lo/getRowCountForAccessibility$onPostMessage;

    .line 3057
    invoke-static {}, Lo/getRowCountForAccessibility;->onMessageChannelReady()Z

    move-result v4

    .line 237
    iget-object p2, p0, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    move-object v6, p2

    check-cast v6, Landroid/app/Activity;

    move-object v5, p1

    .line 231
    invoke-static/range {v1 .. v6}, Lo/DividerItemDecoration;->extraCallback(Lclub/cred/interjection/data/models/Action;Ljava/lang/String;Lo/getRowCountForAccessibility;ZLjava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady(Lclub/cred/interjection/data/models/Action;)Z
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lo/DividerItemDecoration;->onMessageChannelReady:Lo/DividerItemDecoration;

    invoke-static {p1}, Lo/DividerItemDecoration;->onPostMessage(Lclub/cred/interjection/data/models/Action;)Z

    move-result p1

    return p1
.end method

.method public final run()V
    .locals 1

    .line 5042
    iget-object v0, p0, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 4210
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lo/isCurrent$onMessageChannelReady;->extraCallback(Landroid/app/Activity;)V

    return-void
.end method
