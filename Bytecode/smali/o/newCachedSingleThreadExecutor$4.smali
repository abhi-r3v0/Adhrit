.class public final Lo/newCachedSingleThreadExecutor$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/newCachedSingleThreadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/newCachedSingleThreadExecutor;


# direct methods
.method public constructor <init>(Lo/newCachedSingleThreadExecutor;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lo/newCachedSingleThreadExecutor$4;->onPostMessage:Lo/newCachedSingleThreadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 108
    iget-object v0, p0, Lo/newCachedSingleThreadExecutor$4;->onPostMessage:Lo/newCachedSingleThreadExecutor;

    iget-object v0, v0, Lo/newCachedSingleThreadExecutor;->extraCallback:Lo/newTopicsSyncExecutor;

    .line 1293
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/newTopicsSyncExecutor;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    const-string v4, "Stopping foreground service"

    invoke-virtual {v1, v2, v4, v3}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 1294
    iget-object v1, v0, Lo/newTopicsSyncExecutor;->onRelationshipValidationResult:Lo/newTopicsSyncExecutor$onPostMessage;

    if-eqz v1, :cond_1

    .line 1295
    iget-object v1, v0, Lo/newTopicsSyncExecutor;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    if-eqz v1, :cond_0

    .line 1297
    iget-object v1, v0, Lo/newTopicsSyncExecutor;->onRelationshipValidationResult:Lo/newTopicsSyncExecutor$onPostMessage;

    iget-object v2, v0, Lo/newTopicsSyncExecutor;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    .line 2072
    iget v2, v2, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onNavigationEvent:I

    .line 1297
    invoke-interface {v1, v2}, Lo/newTopicsSyncExecutor$onPostMessage;->onNavigationEvent(I)V

    const/4 v1, 0x0

    .line 1298
    iput-object v1, v0, Lo/newTopicsSyncExecutor;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    .line 1300
    :cond_0
    iget-object v0, v0, Lo/newTopicsSyncExecutor;->onRelationshipValidationResult:Lo/newTopicsSyncExecutor$onPostMessage;

    invoke-interface {v0}, Lo/newTopicsSyncExecutor$onPostMessage;->onPostMessage()V

    :cond_1
    return-void
.end method
