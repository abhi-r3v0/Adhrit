.class public final Lo/findFirstVisibleItemClosestToStart$extraCallback;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findFirstVisibleItemClosestToStart;
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
        "com/dreamplug/widget/CircularSeeker$letsAnimate$2",
        "Landroid/animation/AnimatorListenerAdapter;",
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
.field private synthetic onMessageChannelReady:Lo/findFirstVisibleItemClosestToStart;


# direct methods
.method constructor <init>(Lo/findFirstVisibleItemClosestToStart;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1257
    iput-object p1, p0, Lo/findFirstVisibleItemClosestToStart$extraCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToStart;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1259
    iget-object p1, p0, Lo/findFirstVisibleItemClosestToStart$extraCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToStart;

    invoke-virtual {p1}, Lo/findFirstVisibleItemClosestToStart;->onMessageChannelReady()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/findFirstVisibleItemClosestToStart;->setProgress(D)V

    return-void
.end method
