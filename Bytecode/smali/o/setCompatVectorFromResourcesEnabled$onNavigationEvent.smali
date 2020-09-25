.class public final Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setCompatVectorFromResourcesEnabled;->onPostMessage(Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/androidapp/ui/main/gem/referral/share/ShareReferralViewModel$init$1",
        "Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;",
        "onResponse",
        "",
        "message",
        "",
        "onResponseError",
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
.field private synthetic ICustomTabsCallback:Lo/setCompatVectorFromResourcesEnabled;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;


# direct methods
.method constructor <init>(Lo/setCompatVectorFromResourcesEnabled;Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->ICustomTabsCallback:Lo/setCompatVectorFromResourcesEnabled;

    iput-object p2, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->onPostMessage:Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    iput-object p3, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    iput-object p4, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iput-object p5, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/String;)V
    .locals 6

    .line 60
    iget-object v0, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->ICustomTabsCallback:Lo/setCompatVectorFromResourcesEnabled;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->onPostMessage:Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    .line 1024
    iget-object v2, v2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->onTransact:Ljava/lang/String;

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->onPostMessage:Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    iget-object v3, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    iget-object v4, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iget-object v5, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lo/setCompatVectorFromResourcesEnabled;->onPostMessage(Lo/setCompatVectorFromResourcesEnabled;Ljava/lang/String;Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onResponseError(Ljava/lang/String;)V
    .locals 6

    .line 64
    iget-object v0, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->ICustomTabsCallback:Lo/setCompatVectorFromResourcesEnabled;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->onPostMessage:Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    .line 2024
    iget-object v2, v2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->onTransact:Ljava/lang/String;

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->onPostMessage:Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    iget-object v3, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    iget-object v4, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iget-object v5, p0, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lo/setCompatVectorFromResourcesEnabled;->onPostMessage(Lo/setCompatVectorFromResourcesEnabled;Ljava/lang/String;Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
