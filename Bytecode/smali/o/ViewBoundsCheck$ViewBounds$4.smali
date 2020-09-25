.class final Lo/ViewBoundsCheck$ViewBounds$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ViewBoundsCheck$ViewBounds;-><init>(Lo/containsPosition;Lo/getStrokeAlpha;Lo/ViewBoundsCheck$ViewBounds$extraCallback;Lo/invalidateAnchorPositionInfo;Lo/recycleTile;Ljava/util/concurrent/Executor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/ViewBoundsCheck$ViewBounds;


# direct methods
.method constructor <init>(Lo/ViewBoundsCheck$ViewBounds;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lo/ViewBoundsCheck$ViewBounds$4;->ICustomTabsCallback:Lo/ViewBoundsCheck$ViewBounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 187
    iget-object v0, p0, Lo/ViewBoundsCheck$ViewBounds$4;->ICustomTabsCallback:Lo/ViewBoundsCheck$ViewBounds;

    invoke-static {v0}, Lo/ViewBoundsCheck$ViewBounds;->onMessageChannelReady(Lo/ViewBoundsCheck$ViewBounds;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lo/ViewBoundsCheck$ViewBounds$4;->ICustomTabsCallback:Lo/ViewBoundsCheck$ViewBounds;

    invoke-static {v1}, Lo/ViewBoundsCheck$ViewBounds;->onNavigationEvent(Lo/ViewBoundsCheck$ViewBounds;)Z

    .line 189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-static {}, Lo/ViewBoundsCheck$ViewBounds;->extraCallback()Z

    .line 191
    iget-object v0, p0, Lo/ViewBoundsCheck$ViewBounds$4;->ICustomTabsCallback:Lo/ViewBoundsCheck$ViewBounds;

    invoke-static {v0}, Lo/ViewBoundsCheck$ViewBounds;->extraCallback(Lo/ViewBoundsCheck$ViewBounds;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v1

    .line 189
    monitor-exit v0

    throw v1
.end method
