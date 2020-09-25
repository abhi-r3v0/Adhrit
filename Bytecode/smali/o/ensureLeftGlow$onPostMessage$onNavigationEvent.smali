.class final Lo/ensureLeftGlow$onPostMessage$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ensureLeftGlow$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Lo/ensureLeftGlow$onPostMessage;


# direct methods
.method constructor <init>(Lo/ensureLeftGlow$onPostMessage;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/ensureLeftGlow$onPostMessage$onNavigationEvent;->onPostMessage:Lo/ensureLeftGlow$onPostMessage;

    iput-object p2, p0, Lo/ensureLeftGlow$onPostMessage$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 10

    .line 1058
    sget-object v0, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1058
    :goto_0
    check-cast v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    if-eqz v0, :cond_1

    .line 2046
    iget-object v0, v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->postMessage:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 1058
    :goto_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 1059
    iget-object v0, p0, Lo/ensureLeftGlow$onPostMessage$onNavigationEvent;->onPostMessage:Lo/ensureLeftGlow$onPostMessage;

    iget-object v0, v0, Lo/ensureLeftGlow$onPostMessage;->onMessageChannelReady:Lo/ensureLeftGlow;

    iget-object v3, p0, Lo/ensureLeftGlow$onPostMessage$onNavigationEvent;->onPostMessage:Lo/ensureLeftGlow$onPostMessage;

    iget-object v3, v3, Lo/ensureLeftGlow$onPostMessage;->onMessageChannelReady:Lo/ensureLeftGlow;

    invoke-static {v3}, Lo/ensureLeftGlow;->onNavigationEvent(Lo/ensureLeftGlow;)Lo/setSpeed;

    move-result-object v3

    const-string/jumbo v4, "share_cred.png"

    invoke-static {v3, v4}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v3}, Lo/ensureLeftGlow;->extraCallback(Lo/ensureLeftGlow;Ljava/io/File;)V

    .line 1061
    :cond_2
    iget-object v6, p0, Lo/ensureLeftGlow$onPostMessage$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    if-eqz v6, :cond_8

    new-array v0, v1, [Lo/addWrite;

    const/4 v3, 0x0

    .line 1062
    iget-object v4, p0, Lo/ensureLeftGlow$onPostMessage$onNavigationEvent;->onPostMessage:Lo/ensureLeftGlow$onPostMessage;

    iget-object v4, v4, Lo/ensureLeftGlow$onPostMessage;->onMessageChannelReady:Lo/ensureLeftGlow;

    invoke-static {v4}, Lo/ensureLeftGlow;->extraCallback(Lo/ensureLeftGlow;)Lo/ensureLeftGlow$extraCallback;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2097
    iget-object v4, v4, Lo/ensureLeftGlow$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v4, v2

    .line 3043
    :goto_2
    new-instance v5, Lo/addWrite;

    const-string/jumbo v7, "source"

    invoke-direct {v5, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v3

    const-string v3, "pairs"

    .line 1062
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "refer_via_whatsapp_navigated"

    .line 1062
    invoke-static {v0, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1063
    iget-object v0, p0, Lo/ensureLeftGlow$onPostMessage$onNavigationEvent;->onPostMessage:Lo/ensureLeftGlow$onPostMessage;

    iget-object v0, v0, Lo/ensureLeftGlow$onPostMessage;->onMessageChannelReady:Lo/ensureLeftGlow;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v0, p0, Lo/ensureLeftGlow$onPostMessage$onNavigationEvent;->onPostMessage:Lo/ensureLeftGlow$onPostMessage;

    iget-object v0, v0, Lo/ensureLeftGlow$onPostMessage;->onMessageChannelReady:Lo/ensureLeftGlow;

    invoke-static {v0}, Lo/ensureLeftGlow;->ICustomTabsCallback(Lo/ensureLeftGlow;)Ljava/io/File;

    move-result-object v5

    const/4 v7, 0x1

    sget-object v0, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 3320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 1063
    :goto_3
    check-cast v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    if-eqz v0, :cond_5

    .line 4024
    iget-object v2, v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->onTransact:Ljava/lang/String;

    :cond_5
    move-object v8, v2

    const/4 v9, 0x4

    .line 1063
    invoke-static/range {v4 .. v9}, Lo/extraCallback;->extraCallback(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 1064
    :cond_6
    iget-object v0, p0, Lo/ensureLeftGlow$onPostMessage$onNavigationEvent;->onPostMessage:Lo/ensureLeftGlow$onPostMessage;

    iget-object v0, v0, Lo/ensureLeftGlow$onPostMessage;->onMessageChannelReady:Lo/ensureLeftGlow;

    invoke-static {v0}, Lo/ensureLeftGlow;->onMessageChannelReady(Lo/ensureLeftGlow;)Lo/setCompatVectorFromResourcesEnabled;

    move-result-object v0

    .line 4025
    iget-object v0, v0, Lo/setCompatVectorFromResourcesEnabled;->onMessageChannelReady:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 1064
    iget-object v1, p0, Lo/ensureLeftGlow$onPostMessage$onNavigationEvent;->onPostMessage:Lo/ensureLeftGlow$onPostMessage;

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 1065
    iget-object v0, p0, Lo/ensureLeftGlow$onPostMessage$onNavigationEvent;->onPostMessage:Lo/ensureLeftGlow$onPostMessage;

    iget-object v0, v0, Lo/ensureLeftGlow$onPostMessage;->onMessageChannelReady:Lo/ensureLeftGlow;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 55
    :cond_8
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
