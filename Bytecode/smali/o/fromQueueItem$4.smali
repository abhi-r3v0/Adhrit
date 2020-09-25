.class final Lo/fromQueueItem$4;
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
.field final synthetic ICustomTabsCallback:Lo/postOrRun;

.field final synthetic onMessageChannelReady:Lo/fromQueueItem;


# direct methods
.method constructor <init>(Lo/fromQueueItem;Lo/postOrRun;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lo/fromQueueItem$4;->onMessageChannelReady:Lo/fromQueueItem;

    iput-object p2, p0, Lo/fromQueueItem$4;->ICustomTabsCallback:Lo/postOrRun;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 906
    iget-object v0, p0, Lo/fromQueueItem$4;->ICustomTabsCallback:Lo/postOrRun;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    iget-object v0, p0, Lo/fromQueueItem$4;->onMessageChannelReady:Lo/fromQueueItem;

    iget-object v0, v0, Lo/fromQueueItem;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 901
    iget-object v0, p0, Lo/fromQueueItem$4;->onMessageChannelReady:Lo/fromQueueItem;

    iget-object v0, v0, Lo/fromQueueItem;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
