.class public final Lo/recycleFromEnd$2;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/recycleFromEnd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/widget/ProgressButton$1",
        "Lcom/dreamplug/utils/animation/DefaultAnimatorListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/recycleFromEnd;


# direct methods
.method constructor <init>(Lo/recycleFromEnd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lo/recycleFromEnd$2;->onPostMessage:Lo/recycleFromEnd;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lo/recycleFromEnd$2;->onPostMessage:Lo/recycleFromEnd;

    .line 1031
    iget-object p1, p1, Lo/recycleFromEnd;->onPostMessage:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 71
    iget-object p1, p0, Lo/recycleFromEnd$2;->onPostMessage:Lo/recycleFromEnd;

    .line 2031
    iget-object p1, p1, Lo/recycleFromEnd;->onPostMessage:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 71
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 72
    iget-object p1, p0, Lo/recycleFromEnd$2;->onPostMessage:Lo/recycleFromEnd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
