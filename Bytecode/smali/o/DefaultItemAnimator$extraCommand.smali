.class final Lo/DefaultItemAnimator$extraCommand;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DefaultItemAnimator;
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
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
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
        "it",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
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
.field final synthetic ICustomTabsCallback:Lo/DefaultItemAnimator;


# direct methods
.method constructor <init>(Lo/DefaultItemAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/DefaultItemAnimator$extraCommand;->ICustomTabsCallback:Lo/DefaultItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 53
    check-cast p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 1331
    iget-object v0, p0, Lo/DefaultItemAnimator$extraCommand;->ICustomTabsCallback:Lo/DefaultItemAnimator;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lo/DefaultItemAnimator;->extraCallback(Lo/DefaultItemAnimator;I)V

    .line 1332
    iget-object v0, p0, Lo/DefaultItemAnimator$extraCommand;->ICustomTabsCallback:Lo/DefaultItemAnimator;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->cashbackCard:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/animateRemoveImpl;

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo/DefaultItemAnimator$extraCommand$2;

    invoke-direct {v1, p0}, Lo/DefaultItemAnimator$extraCommand$2;-><init>(Lo/DefaultItemAnimator$extraCommand;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-virtual {v0, p1, v1}, Lo/animateRemoveImpl;->setData(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;Lo/onDisconnectSetValue;)V

    return-void
.end method
