.class final Lo/ensureLeftGlow$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureLeftGlow;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "campaign",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/ensureLeftGlow;


# direct methods
.method constructor <init>(Lo/ensureLeftGlow;)V
    .locals 0

    iput-object p1, p0, Lo/ensureLeftGlow$ICustomTabsCallback;->ICustomTabsCallback:Lo/ensureLeftGlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 9

    .line 28
    check-cast p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    .line 1073
    iget-object v0, p0, Lo/ensureLeftGlow$ICustomTabsCallback;->ICustomTabsCallback:Lo/ensureLeftGlow;

    invoke-static {v0}, Lo/ensureLeftGlow;->onMessageChannelReady(Lo/ensureLeftGlow;)Lo/setCompatVectorFromResourcesEnabled;

    move-result-object v0

    const-string v1, "campaign"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/ensureLeftGlow$ICustomTabsCallback;->ICustomTabsCallback:Lo/ensureLeftGlow;

    invoke-static {v1}, Lo/ensureLeftGlow;->extraCallback(Lo/ensureLeftGlow;)Lo/ensureLeftGlow$extraCallback;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1097
    iget-object v1, v1, Lo/ensureLeftGlow$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 1073
    :goto_0
    iget-object v3, p0, Lo/ensureLeftGlow$ICustomTabsCallback;->ICustomTabsCallback:Lo/ensureLeftGlow;

    invoke-static {v3}, Lo/ensureLeftGlow;->extraCallback(Lo/ensureLeftGlow;)Lo/ensureLeftGlow$extraCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2097
    iget-object v2, v3, Lo/ensureLeftGlow$extraCallback;->onNavigationEvent:Ljava/lang/String;

    :cond_1
    const-string v3, "deeplink"

    .line 1073
    invoke-virtual {v0, p1, v3, v1, v2}, Lo/setCompatVectorFromResourcesEnabled;->onPostMessage(Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    iget-object v0, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->requestPostMessageChannel:Ljava/lang/String;

    .line 1074
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_4

    .line 1075
    iget-object v0, p0, Lo/ensureLeftGlow$ICustomTabsCallback;->ICustomTabsCallback:Lo/ensureLeftGlow;

    invoke-static {v0}, Lo/ensureLeftGlow;->onNavigationEvent(Lo/ensureLeftGlow;)Lo/setSpeed;

    move-result-object v1

    .line 4044
    iget-object v2, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->requestPostMessageChannel:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1075
    new-instance p1, Lo/ensureLeftGlow$ICustomTabsCallback$5;

    invoke-direct {p1, p0}, Lo/ensureLeftGlow$ICustomTabsCallback$5;-><init>(Lo/ensureLeftGlow$ICustomTabsCallback;)V

    move-object v7, p1

    check-cast v7, Lo/onDisconnectSetValue;

    const/16 v8, 0x1e

    invoke-static/range {v1 .. v8}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    :cond_4
    return-void
.end method
