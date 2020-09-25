.class final Lo/DefaultItemAnimator$extraCommand$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DefaultItemAnimator$extraCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "card",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
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
.field private synthetic onMessageChannelReady:Lo/DefaultItemAnimator$extraCommand;


# direct methods
.method constructor <init>(Lo/DefaultItemAnimator$extraCommand;)V
    .locals 0

    iput-object p1, p0, Lo/DefaultItemAnimator$extraCommand$2;->onMessageChannelReady:Lo/DefaultItemAnimator$extraCommand;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 53
    check-cast p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    const-string v0, "card"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1333
    iget-object v0, p0, Lo/DefaultItemAnimator$extraCommand$2;->onMessageChannelReady:Lo/DefaultItemAnimator$extraCommand;

    iget-object v0, v0, Lo/DefaultItemAnimator$extraCommand;->ICustomTabsCallback:Lo/DefaultItemAnimator;

    invoke-static {v0, p1}, Lo/DefaultItemAnimator;->extraCallback(Lo/DefaultItemAnimator;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V

    .line 53
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
