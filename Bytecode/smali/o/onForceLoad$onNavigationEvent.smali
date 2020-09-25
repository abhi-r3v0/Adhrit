.class public final Lo/onForceLoad$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onForceLoad;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/CredCurrencyHeaderHolder$bind$5",
        "Landroidx/lifecycle/Observer;",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
        "onChanged",
        "",
        "t",
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
.field final synthetic onNavigationEvent:Lo/onForceLoad;


# direct methods
.method constructor <init>(Lo/onForceLoad;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lo/onForceLoad$onNavigationEvent;->onNavigationEvent:Lo/onForceLoad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 62
    check-cast p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    if-eqz p1, :cond_0

    .line 1065
    sget-object p1, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 1066
    iget-object p1, p0, Lo/onForceLoad$onNavigationEvent;->onNavigationEvent:Lo/onForceLoad;

    invoke-static {p1}, Lo/onForceLoad;->onPostMessage(Lo/onForceLoad;)Lo/onChildrenLoaded;

    move-result-object p1

    const-string v0, "inviteView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    iget-object p1, p0, Lo/onForceLoad$onNavigationEvent;->onNavigationEvent:Lo/onForceLoad;

    invoke-static {p1}, Lo/onForceLoad;->onMessageChannelReady(Lo/onForceLoad;)Lo/createFullSpanItemFromEnd;

    move-result-object p1

    const-string v0, "invite"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/onForceLoad$onNavigationEvent$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/onForceLoad$onNavigationEvent$onNavigationEvent;-><init>(Lo/onForceLoad$onNavigationEvent;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    :cond_0
    return-void
.end method
