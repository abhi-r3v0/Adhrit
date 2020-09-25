.class public final Lo/absorbGlows$onPostMessage$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/absorbGlows$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/lang/String;",
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/referal/FabrikShareReferralFragment$onViewCreated$1$1",
        "Landroidx/lifecycle/Observer;",
        "",
        "onChanged",
        "",
        "message",
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
.field private synthetic onMessageChannelReady:Lo/absorbGlows$onPostMessage;


# direct methods
.method constructor <init>(Lo/absorbGlows$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lo/absorbGlows$onPostMessage$1;->onMessageChannelReady:Lo/absorbGlows$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 75
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1078
    iget-object p1, p0, Lo/absorbGlows$onPostMessage$1;->onMessageChannelReady:Lo/absorbGlows$onPostMessage;

    iget-object p1, p1, Lo/absorbGlows$onPostMessage;->extraCallback:Lo/absorbGlows;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lo/absorbGlows$onPostMessage$1;->onMessageChannelReady:Lo/absorbGlows$onPostMessage;

    iget-object p1, p1, Lo/absorbGlows$onPostMessage;->extraCallback:Lo/absorbGlows;

    invoke-static {p1}, Lo/absorbGlows;->onPostMessage(Lo/absorbGlows;)Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x1

    sget-object p1, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 1320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v4, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v5, 0x0

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v5

    .line 1078
    :goto_0
    check-cast p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    if-eqz p1, :cond_1

    .line 2024
    iget-object p1, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->onTransact:Ljava/lang/String;

    move-object v4, p1

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    const/4 v5, 0x4

    .line 1078
    invoke-static/range {v0 .. v5}, Lo/extraCallback;->extraCallback(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 1079
    :cond_2
    iget-object p1, p0, Lo/absorbGlows$onPostMessage$1;->onMessageChannelReady:Lo/absorbGlows$onPostMessage;

    iget-object p1, p1, Lo/absorbGlows$onPostMessage;->extraCallback:Lo/absorbGlows;

    invoke-static {p1}, Lo/absorbGlows;->onMessageChannelReady(Lo/absorbGlows;)Lo/setCompatVectorFromResourcesEnabled;

    move-result-object p1

    .line 2025
    iget-object p1, p1, Lo/setCompatVectorFromResourcesEnabled;->onMessageChannelReady:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 1079
    move-object v0, p0

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    :cond_3
    return-void
.end method
