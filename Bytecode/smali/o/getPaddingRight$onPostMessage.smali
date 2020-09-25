.class final Lo/getPaddingRight$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPaddingRight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/animation/Animation;",
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
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/animation/Animation;",
        "invoke",
        "com/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$animateToHide$1$1$2$1",
        "com/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$$special$$inlined$setListener$lambda$1",
        "com/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$$special$$inlined$apply$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getPaddingRight;

.field private synthetic onMessageChannelReady:Lo/getServerTime;


# direct methods
.method constructor <init>(Lo/getPaddingRight;Lo/getServerTime;)V
    .locals 0

    iput-object p1, p0, Lo/getPaddingRight$onPostMessage;->ICustomTabsCallback:Lo/getPaddingRight;

    iput-object p2, p0, Lo/getPaddingRight$onPostMessage;->onMessageChannelReady:Lo/getServerTime;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1186
    iget-object p1, p0, Lo/getPaddingRight$onPostMessage;->ICustomTabsCallback:Lo/getPaddingRight;

    invoke-static {p1}, Lo/getPaddingRight;->onMessageChannelReady(Lo/getPaddingRight;)Lo/onChildrenLoaded;

    move-result-object p1

    const-string v0, "nbaRoot"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1187
    iget-object p1, p0, Lo/getPaddingRight$onPostMessage;->onMessageChannelReady:Lo/getServerTime;

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 56
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
