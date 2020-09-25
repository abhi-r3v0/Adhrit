.class public final Lo/DiffUtil$ItemCallback$warmup$4;
.super Lo/recalculatePositionOfItemAt;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DiffUtil$ItemCallback$warmup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field private synthetic ICustomTabsCallback:Lo/DiffUtil$ItemCallback$warmup;


# direct methods
.method constructor <init>(Lo/DiffUtil$ItemCallback$warmup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lo/DiffUtil$ItemCallback$warmup$4;->ICustomTabsCallback:Lo/DiffUtil$ItemCallback$warmup;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 205
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$warmup$4;->ICustomTabsCallback:Lo/DiffUtil$ItemCallback$warmup;

    iget-object p1, p1, Lo/DiffUtil$ItemCallback$warmup;->extraCallback:Lo/DiffUtil$ItemCallback;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->uploadingLottie:I

    invoke-virtual {p1, v0}, Lo/DiffUtil$ItemCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final run()V
    .locals 1

    .line 1206
    iget-object v0, p0, Lo/DiffUtil$ItemCallback$warmup$4;->ICustomTabsCallback:Lo/DiffUtil$ItemCallback$warmup;

    iget-object v0, v0, Lo/DiffUtil$ItemCallback$warmup;->extraCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {v0}, Lo/DiffUtil$ItemCallback;->newSession(Lo/DiffUtil$ItemCallback;)V

    return-void
.end method
