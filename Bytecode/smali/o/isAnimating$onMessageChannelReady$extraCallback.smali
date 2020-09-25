.class final Lo/isAnimating$onMessageChannelReady$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isAnimating$onMessageChannelReady;
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
        "com/dreamplug/fabrik/ui/lifestyle/win/landing/WinLandingFragment$buttonAnimationObserver$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Ljava/lang/Float;

.field private synthetic onNavigationEvent:Lo/isAnimating$onMessageChannelReady;


# direct methods
.method constructor <init>(Ljava/lang/Float;Lo/isAnimating$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/isAnimating$onMessageChannelReady$extraCallback;->extraCallback:Ljava/lang/Float;

    iput-object p2, p0, Lo/isAnimating$onMessageChannelReady$extraCallback;->onNavigationEvent:Lo/isAnimating$onMessageChannelReady;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 6

    .line 1553
    iget-object v0, p0, Lo/isAnimating$onMessageChannelReady$extraCallback;->onNavigationEvent:Lo/isAnimating$onMessageChannelReady;

    iget-object v0, v0, Lo/isAnimating$onMessageChannelReady;->extraCallback:Lo/isAnimating;

    invoke-static {v0}, Lo/isAnimating;->ICustomTabsCallback$Stub$Proxy(Lo/isAnimating;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1554
    iget-object v0, p0, Lo/isAnimating$onMessageChannelReady$extraCallback;->onNavigationEvent:Lo/isAnimating$onMessageChannelReady;

    iget-object v0, v0, Lo/isAnimating$onMessageChannelReady;->extraCallback:Lo/isAnimating;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->trophyRoom:I

    invoke-virtual {v0, v1}, Lo/isAnimating;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/saveOldPosition;

    const-string/jumbo v1, "trophyRoom"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1555
    iget-object v2, p0, Lo/isAnimating$onMessageChannelReady$extraCallback;->onNavigationEvent:Lo/isAnimating$onMessageChannelReady;

    iget-object v2, v2, Lo/isAnimating$onMessageChannelReady;->extraCallback:Lo/isAnimating;

    invoke-static {v2}, Lo/isAnimating;->extraCommand(Lo/isAnimating;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 1556
    iget-object v2, p0, Lo/isAnimating$onMessageChannelReady$extraCallback;->onNavigationEvent:Lo/isAnimating$onMessageChannelReady;

    iget-object v2, v2, Lo/isAnimating$onMessageChannelReady;->extraCallback:Lo/isAnimating;

    iget-object v3, p0, Lo/isAnimating$onMessageChannelReady$extraCallback;->onNavigationEvent:Lo/isAnimating$onMessageChannelReady;

    iget-object v3, v3, Lo/isAnimating$onMessageChannelReady;->extraCallback:Lo/isAnimating;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->trophyRoom:I

    invoke-virtual {v3, v4}, Lo/isAnimating;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/saveOldPosition;

    invoke-static {v3, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lo/isAnimating;->onMessageChannelReady(Lo/isAnimating;I)V

    .line 1558
    :cond_0
    iget-object v2, p0, Lo/isAnimating$onMessageChannelReady$extraCallback;->onNavigationEvent:Lo/isAnimating$onMessageChannelReady;

    iget-object v2, v2, Lo/isAnimating$onMessageChannelReady;->extraCallback:Lo/isAnimating;

    invoke-static {v2}, Lo/isAnimating;->mayLaunchUrl(Lo/isAnimating;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lo/isAnimating$onMessageChannelReady$extraCallback;->onNavigationEvent:Lo/isAnimating$onMessageChannelReady;

    iget-object v3, v3, Lo/isAnimating$onMessageChannelReady;->extraCallback:Lo/isAnimating;

    invoke-static {v3}, Lo/isAnimating;->extraCommand(Lo/isAnimating;)I

    move-result v3

    iget-object v4, p0, Lo/isAnimating$onMessageChannelReady$extraCallback;->onNavigationEvent:Lo/isAnimating$onMessageChannelReady;

    iget-object v4, v4, Lo/isAnimating$onMessageChannelReady;->extraCallback:Lo/isAnimating;

    invoke-static {v4}, Lo/isAnimating;->mayLaunchUrl(Lo/isAnimating;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lo/isAnimating$onMessageChannelReady$extraCallback;->extraCallback:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 1559
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1560
    iget-object v2, p0, Lo/isAnimating$onMessageChannelReady$extraCallback;->onNavigationEvent:Lo/isAnimating$onMessageChannelReady;

    iget-object v2, v2, Lo/isAnimating$onMessageChannelReady;->extraCallback:Lo/isAnimating;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->trophyRoom:I

    invoke-virtual {v2, v3}, Lo/isAnimating;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/saveOldPosition;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    :cond_1
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
