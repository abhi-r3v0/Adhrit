.class final Lo/sendQueueTitle$7;
.super Lo/onActiveChanged;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendQueueTitle;->onNavigationEvent(Landroid/view/ViewGroup;Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroid/view/ViewGroup;

.field private extraCallback:Z

.field final synthetic onNavigationEvent:Lo/sendQueueTitle;


# direct methods
.method constructor <init>(Lo/sendQueueTitle;Landroid/view/ViewGroup;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lo/sendQueueTitle$7;->onNavigationEvent:Lo/sendQueueTitle;

    iput-object p2, p0, Lo/sendQueueTitle$7;->ICustomTabsCallback:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lo/onActiveChanged;-><init>()V

    const/4 p1, 0x0

    .line 395
    iput-boolean p1, p0, Lo/sendQueueTitle$7;->extraCallback:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/fromQueueItem;)V
    .locals 2

    .line 405
    iget-boolean v0, p0, Lo/sendQueueTitle$7;->extraCallback:Z

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lo/sendQueueTitle$7;->ICustomTabsCallback:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/getExtraBinder;->onMessageChannelReady(Landroid/view/ViewGroup;Z)V

    .line 408
    :cond_0
    invoke-virtual {p1, p0}, Lo/fromQueueItem;->onMessageChannelReady(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    return-void
.end method

.method public final extraCallback(Lo/fromQueueItem;)V
    .locals 1

    .line 413
    iget-object p1, p0, Lo/sendQueueTitle$7;->ICustomTabsCallback:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/getExtraBinder;->onMessageChannelReady(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/fromQueueItem;)V
    .locals 1

    .line 399
    iget-object p1, p0, Lo/sendQueueTitle$7;->ICustomTabsCallback:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/getExtraBinder;->onMessageChannelReady(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    .line 400
    iput-boolean p1, p0, Lo/sendQueueTitle$7;->extraCallback:Z

    return-void
.end method

.method public final onPostMessage(Lo/fromQueueItem;)V
    .locals 1

    .line 418
    iget-object p1, p0, Lo/sendQueueTitle$7;->ICustomTabsCallback:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/getExtraBinder;->onMessageChannelReady(Landroid/view/ViewGroup;Z)V

    return-void
.end method
