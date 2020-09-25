.class final Lo/isItemChanged$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isItemChanged;->onResume()V
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
.field private synthetic extraCallback:Lo/isItemChanged;


# direct methods
.method constructor <init>(Lo/isItemChanged;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$asInterface;->extraCallback:Lo/isItemChanged;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1740
    iget-object v0, p0, Lo/isItemChanged$asInterface;->extraCallback:Lo/isItemChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {v0, v1}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setMinimumHeight;

    if-eqz v0, :cond_1

    .line 1741
    iget-object v0, p0, Lo/isItemChanged$asInterface;->extraCallback:Lo/isItemChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {v0, v1}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setMinimumHeight;

    const-string v1, "lottie"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1742
    iget-object v0, p0, Lo/isItemChanged$asInterface;->extraCallback:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {v0, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setMinimumHeight;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 1743
    :cond_0
    iget-object v0, p0, Lo/isItemChanged$asInterface;->extraCallback:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {v0, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setMinimumHeight;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/isItemChanged$asInterface;->extraCallback:Lo/isItemChanged;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {v2, v3}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setMinimumHeight;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->getMaxFrame()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 67
    :cond_1
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
