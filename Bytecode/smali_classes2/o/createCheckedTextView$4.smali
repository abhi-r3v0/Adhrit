.class final Lo/createCheckedTextView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/createCheckedTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/createCheckedTextView;


# direct methods
.method constructor <init>(Lo/createCheckedTextView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lo/createCheckedTextView$4;->onMessageChannelReady:Lo/createCheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lo/createCheckedTextView$4;->onMessageChannelReady:Lo/createCheckedTextView;

    invoke-static {p1}, Lo/createCheckedTextView;->onPostMessage(Lo/createCheckedTextView;)Lo/isTitleOptional;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lo/createCheckedTextView$4;->onMessageChannelReady:Lo/createCheckedTextView;

    invoke-static {p1}, Lo/createCheckedTextView;->onPostMessage(Lo/createCheckedTextView;)Lo/isTitleOptional;

    move-result-object p1

    iget-object v0, p0, Lo/createCheckedTextView$4;->onMessageChannelReady:Lo/createCheckedTextView;

    invoke-static {v0}, Lo/createCheckedTextView;->extraCallback(Lo/createCheckedTextView;)Lo/enableContentAnimations;

    move-result-object v0

    invoke-virtual {v0}, Lo/enableContentAnimations;->onMessageChannelReady()F

    move-result v0

    invoke-virtual {p1, v0}, Lo/isTitleOptional;->ICustomTabsCallback(F)V

    :cond_0
    return-void
.end method
