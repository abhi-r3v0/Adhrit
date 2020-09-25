.class Lo/getPlaybackType$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPlaybackType;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lo/MediaMetadataCompatApi21;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getPlaybackType;

.field final synthetic onPostMessage:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lo/getPlaybackType;Ljava/lang/Runnable;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lo/getPlaybackType$1;->ICustomTabsCallback:Lo/getPlaybackType;

    iput-object p2, p0, Lo/getPlaybackType$1;->onPostMessage:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 277
    iget-object p1, p0, Lo/getPlaybackType$1;->onPostMessage:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method
