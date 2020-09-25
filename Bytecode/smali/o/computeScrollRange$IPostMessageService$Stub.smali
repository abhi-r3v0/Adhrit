.class final Lo/computeScrollRange$IPostMessageService$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollRange;->ICustomTabsCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/computeScrollRange;

.field private synthetic onPostMessage:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lo/computeScrollRange;Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollRange$IPostMessageService$Stub;->onNavigationEvent:Lo/computeScrollRange;

    iput-object p2, p0, Lo/computeScrollRange$IPostMessageService$Stub;->onPostMessage:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 460
    iget-object v0, p0, Lo/computeScrollRange$IPostMessageService$Stub;->onNavigationEvent:Lo/computeScrollRange;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->invitedFriendsLayout:I

    invoke-virtual {v0, v1}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/computeScrollRange$IPostMessageService$Stub;->onPostMessage:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
