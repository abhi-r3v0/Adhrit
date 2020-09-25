.class final Lo/onActivityResumed$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityResumed;-><init>()V
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
.field private synthetic ICustomTabsCallback:Lo/onActivityResumed;


# direct methods
.method constructor <init>(Lo/onActivityResumed;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityResumed$asBinder;->ICustomTabsCallback:Lo/onActivityResumed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 45
    check-cast p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    .line 1281
    iget-object v0, p0, Lo/onActivityResumed$asBinder;->ICustomTabsCallback:Lo/onActivityResumed;

    invoke-static {v0}, Lo/onActivityResumed;->ICustomTabsCallback$Stub(Lo/onActivityResumed;)Lo/setCompatVectorFromResourcesEnabled;

    move-result-object v0

    const-string v1, "campaign"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/onActivityResumed$asBinder;->ICustomTabsCallback:Lo/onActivityResumed;

    invoke-static {v1}, Lo/onActivityResumed;->extraCallback(Lo/onActivityResumed;)Lo/onActivityResumed$onNavigationEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1342
    iget-object v1, v1, Lo/onActivityResumed$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "contact_book"

    .line 1281
    invoke-static {v0, p1, v2, v1}, Lo/setCompatVectorFromResourcesEnabled;->onMessageChannelReady(Lo/setCompatVectorFromResourcesEnabled;Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
