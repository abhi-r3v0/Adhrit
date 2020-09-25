.class final Lo/offsetChildrenHorizontal$INotificationSideChannel;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/offsetChildrenHorizontal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/nextTransactionOrder<",
        "Ljava/lang/Integer;",
        "Lo/dispatchOnScrolled$onMessageChannelReady;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "st",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$State;",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startSpinning$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/offsetChildrenHorizontal;


# direct methods
.method constructor <init>(Lo/offsetChildrenHorizontal;)V
    .locals 0

    iput-object p1, p0, Lo/offsetChildrenHorizontal$INotificationSideChannel;->onPostMessage:Lo/offsetChildrenHorizontal;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p2, Lo/dispatchOnScrolled$onMessageChannelReady;

    const-string/jumbo p1, "st"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1385
    sget-object p1, Lo/dispatchOnScrolled$onMessageChannelReady$extraCallback;->ICustomTabsCallback:Lo/dispatchOnScrolled$onMessageChannelReady$extraCallback;

    invoke-static {p2, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/offsetChildrenHorizontal$INotificationSideChannel;->onPostMessage:Lo/offsetChildrenHorizontal;

    invoke-static {p1}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(Lo/offsetChildrenHorizontal;)V

    .line 68
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
