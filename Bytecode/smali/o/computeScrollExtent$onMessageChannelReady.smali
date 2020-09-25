.class final Lo/computeScrollExtent$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollExtent;-><init>()V
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
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
        "selectedReward",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
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
.field private synthetic onNavigationEvent:Lo/computeScrollExtent;


# direct methods
.method constructor <init>(Lo/computeScrollExtent;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollExtent$onMessageChannelReady;->onNavigationEvent:Lo/computeScrollExtent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 65
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 1496
    iget-object v0, p0, Lo/computeScrollExtent$onMessageChannelReady;->onNavigationEvent:Lo/computeScrollExtent;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getLayoutInflater;

    if-eqz p1, :cond_1

    .line 2000
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/removeItemDecoration;

    .line 1496
    iget-object v1, p0, Lo/computeScrollExtent$onMessageChannelReady;->onNavigationEvent:Lo/computeScrollExtent;

    .line 2068
    iget-object v1, v1, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v1, :cond_0

    .line 3000
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/removeItemDecoration;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1496
    :goto_0
    invoke-static {p1, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lo/getLayoutInflater;->setEnableDrag(Z)V

    return-void
.end method
