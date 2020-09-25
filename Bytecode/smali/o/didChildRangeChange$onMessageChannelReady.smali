.class final Lo/didChildRangeChange$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/didChildRangeChange;->extraCallback(Landroid/widget/TextView;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/landing/WinCardBaseHolder$setTimer$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Landroid/widget/TextView;

.field private synthetic onPostMessage:Lo/didChildRangeChange;


# direct methods
.method constructor <init>(Lo/didChildRangeChange;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lo/didChildRangeChange$onMessageChannelReady;->onPostMessage:Lo/didChildRangeChange;

    iput-object p2, p0, Lo/didChildRangeChange$onMessageChannelReady;->onNavigationEvent:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1070
    iget-object v0, p0, Lo/didChildRangeChange$onMessageChannelReady;->onPostMessage:Lo/didChildRangeChange;

    const-string/jumbo v1, "timer_expired"

    invoke-virtual {v0, v1}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lo/didChildRangeChange$onMessageChannelReady;->onNavigationEvent:Landroid/widget/TextView;

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$gone"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 2017
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
