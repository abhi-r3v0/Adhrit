.class final Lo/performStart$onNavigationEvent$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/performStart$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/nextTransactionOrder<",
        "Ljava/lang/String;",
        "Ljava/lang/Throwable;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "<anonymous parameter 1>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/cm/adapters/CmBannerViewHolder$bind$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/performStart$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/performStart$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lo/performStart$onNavigationEvent$1;->onMessageChannelReady:Lo/performStart$onNavigationEvent;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1035
    iget-object p1, p0, Lo/performStart$onNavigationEvent$1;->onMessageChannelReady:Lo/performStart$onNavigationEvent;

    iget-object p1, p1, Lo/performStart$onNavigationEvent;->onNavigationEvent:Lo/performStart;

    invoke-static {p1}, Lo/performStart;->extraCallback(Lo/performStart;)Lo/flagRemovedAndOffsetPosition;

    move-result-object p1

    const p2, 0x7f080456

    invoke-virtual {p1, p2}, Lo/setSpeed;->setActualImageResource(I)V

    .line 1036
    iget-object p1, p0, Lo/performStart$onNavigationEvent$1;->onMessageChannelReady:Lo/performStart$onNavigationEvent;

    iget-object p1, p1, Lo/performStart$onNavigationEvent;->onNavigationEvent:Lo/performStart;

    invoke-static {p1}, Lo/performStart;->onMessageChannelReady(Lo/performStart;)Lo/isScrap;

    move-result-object p1

    const-string p2, "pit"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    .line 1049
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Lo/onChildrenLoaded$onPostMessage;

    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    .line 1050
    move-object v0, p2

    check-cast v0, Lo/onChildrenLoaded$onPostMessage;

    const-string v1, "1.0"

    .line 1037
    iput-object v1, v0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    .line 1051
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1049
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
