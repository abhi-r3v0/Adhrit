.class final Lo/fromQueueItem$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fromQueueItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/fromQueueItem;


# direct methods
.method constructor <init>(Lo/fromQueueItem;)V
    .locals 0

    .line 1911
    iput-object p1, p0, Lo/fromQueueItem$1;->onMessageChannelReady:Lo/fromQueueItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1914
    iget-object v0, p0, Lo/fromQueueItem$1;->onMessageChannelReady:Lo/fromQueueItem;

    invoke-virtual {v0}, Lo/fromQueueItem;->onRelationshipValidationResult()V

    .line 1915
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
