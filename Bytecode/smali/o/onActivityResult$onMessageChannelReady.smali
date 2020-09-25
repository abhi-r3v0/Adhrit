.class public final Lo/onActivityResult$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onActivityResult;
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/dreamplug/fabrik/helper/ui/animation/TransitionKtxKt$executeAfterAllAnimationsAreFinished$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

.field private synthetic onNavigationEvent:Lo/onDisconnectSetValue;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lo/onDisconnectSetValue;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lo/onActivityResult$onMessageChannelReady;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo/onActivityResult$onMessageChannelReady;->onNavigationEvent:Lo/onDisconnectSetValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 88
    iget-object v0, p0, Lo/onActivityResult$onMessageChannelReady;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/onActivityResult$onMessageChannelReady;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lo/onActivityResult$onMessageChannelReady;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    new-instance v1, Lo/onActivityResult$onMessageChannelReady$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/onActivityResult$onMessageChannelReady$onNavigationEvent;-><init>(Lo/onActivityResult$onMessageChannelReady;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lo/onActivityResult$onMessageChannelReady;->onNavigationEvent:Lo/onDisconnectSetValue;

    iget-object v1, p0, Lo/onActivityResult$onMessageChannelReady;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {v0, v1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
