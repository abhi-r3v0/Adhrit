.class final Lo/getPositionDescription$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPositionDescription;->onMessageChannelReady(Landroid/view/animation/Animation;J)V
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
.field private synthetic ICustomTabsCallback:Lo/getPositionDescription;

.field private synthetic onPostMessage:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lo/getPositionDescription;Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lo/getPositionDescription$onNavigationEvent;->ICustomTabsCallback:Lo/getPositionDescription;

    iput-object p2, p0, Lo/getPositionDescription$onNavigationEvent;->onPostMessage:Landroid/view/animation/Animation;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1287
    iget-object v0, p0, Lo/getPositionDescription$onNavigationEvent;->ICustomTabsCallback:Lo/getPositionDescription;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->back:I

    invoke-virtual {v0, v1}, Lo/getPositionDescription;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v1, "back"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$visible"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1288
    iget-object v0, p0, Lo/getPositionDescription$onNavigationEvent;->ICustomTabsCallback:Lo/getPositionDescription;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->back:I

    invoke-virtual {v0, v1}, Lo/getPositionDescription;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    iget-object v1, p0, Lo/getPositionDescription$onNavigationEvent;->onPostMessage:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 66
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
