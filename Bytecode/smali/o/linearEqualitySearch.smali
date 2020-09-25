.class public final Lo/linearEqualitySearch;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "com/dreamplug/utils/animation/ViewPropertyAnimatorKtxKt$awaitEnd$2$2",
        "Landroid/animation/AnimatorListenerAdapter;",
        "endedSuccessfully",
        "",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/addMerge;

.field private onMessageChannelReady:Z


# direct methods
.method public constructor <init>(Lo/addMerge;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lo/linearEqualitySearch;->extraCallback:Lo/addMerge;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lo/linearEqualitySearch;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lo/linearEqualitySearch;->onMessageChannelReady:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    move-object v0, p0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 86
    iget-object p1, p0, Lo/linearEqualitySearch;->extraCallback:Lo/addMerge;

    invoke-interface {p1}, Lo/addMerge;->ICustomTabsCallback()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    iget-boolean p1, p0, Lo/linearEqualitySearch;->onMessageChannelReady:Z

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lo/linearEqualitySearch;->extraCallback:Lo/addMerge;

    sget-object v0, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-static {v0}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/addMerge;->onPostMessage(Ljava/lang/Object;)V

    return-void

    .line 93
    :cond_0
    iget-object p1, p0, Lo/linearEqualitySearch;->extraCallback:Lo/addMerge;

    const/4 v0, 0x0

    .line 1112
    invoke-interface {p1, v0}, Lo/addMerge;->onNavigationEvent(Ljava/lang/Throwable;)Z

    :cond_1
    return-void
.end method
