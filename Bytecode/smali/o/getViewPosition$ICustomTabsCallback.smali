.class public final Lo/getViewPosition$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getViewPosition;->onMessageChannelReady(Lo/getFont;)V
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
        "com/dreamplug/fabrik/ui/tabholder/TabHolderFragment$executeTarget$6",
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
.field private synthetic extraCallback:Lo/getViewPosition;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/getViewPosition;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lo/getViewPosition$ICustomTabsCallback;->extraCallback:Lo/getViewPosition;

    iput-object p2, p0, Lo/getViewPosition$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 1407
    sget-object p1, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 1408
    iget-object p1, p0, Lo/getViewPosition$ICustomTabsCallback;->extraCallback:Lo/getViewPosition;

    .line 2000
    iget-object p1, p1, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 1408
    iget-object v0, p0, Lo/getViewPosition$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    const-string/jumbo v1, "source"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2347
    new-instance v1, Lo/onGetChildDrawingOrder$setCallbacksMessenger;

    new-instance v2, Lo/onDetach$getDefaultImpl;

    invoke-direct {v2, v0}, Lo/onDetach$getDefaultImpl;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lo/onGetChildDrawingOrder$setCallbacksMessenger;-><init>(Lo/onDetach$getDefaultImpl;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {p1, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void
.end method
