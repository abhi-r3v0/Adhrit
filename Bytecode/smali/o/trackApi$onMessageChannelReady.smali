.class Lo/trackApi$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/endTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/trackApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/trackApi;

.field private final onNavigationEvent:Lo/PublisherException;


# direct methods
.method public constructor <init>(Lo/trackApi;)V
    .locals 1

    .line 447
    iput-object p1, p0, Lo/trackApi$onMessageChannelReady;->ICustomTabsCallback:Lo/trackApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance p1, Lo/PublisherException;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lo/PublisherException;-><init>([B)V

    iput-object p1, p0, Lo/trackApi$onMessageChannelReady;->onNavigationEvent:Lo/PublisherException;

    return-void
.end method


# virtual methods
.method public onNavigationEvent(Lo/getWaivers;Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
    .locals 0

    return-void
.end method

.method public onPostMessage(Lo/DreamAppGlideModule;)V
    .locals 9

    .line 459
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    .line 467
    invoke-virtual {p1, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 469
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 471
    iget-object v4, p0, Lo/trackApi$onMessageChannelReady;->onNavigationEvent:Lo/PublisherException;

    invoke-virtual {p1, v4, v1}, Lo/DreamAppGlideModule;->ICustomTabsCallback(Lo/PublisherException;I)V

    .line 472
    iget-object v4, p0, Lo/trackApi$onMessageChannelReady;->onNavigationEvent:Lo/PublisherException;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    .line 473
    iget-object v5, p0, Lo/trackApi$onMessageChannelReady;->onNavigationEvent:Lo/PublisherException;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lo/PublisherException;->ICustomTabsCallback(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_1

    .line 475
    iget-object v4, p0, Lo/trackApi$onMessageChannelReady;->onNavigationEvent:Lo/PublisherException;

    invoke-virtual {v4, v5}, Lo/PublisherException;->ICustomTabsCallback(I)V

    goto :goto_1

    .line 477
    :cond_1
    iget-object v4, p0, Lo/trackApi$onMessageChannelReady;->onNavigationEvent:Lo/PublisherException;

    invoke-virtual {v4, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    .line 478
    iget-object v5, p0, Lo/trackApi$onMessageChannelReady;->ICustomTabsCallback:Lo/trackApi;

    invoke-static {v5}, Lo/trackApi;->onMessageChannelReady(Lo/trackApi;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Lo/getFileFromAssets;

    new-instance v7, Lo/trackApi$onNavigationEvent;

    iget-object v8, p0, Lo/trackApi$onMessageChannelReady;->ICustomTabsCallback:Lo/trackApi;

    invoke-direct {v7, v8, v4}, Lo/trackApi$onNavigationEvent;-><init>(Lo/trackApi;I)V

    invoke-direct {v6, v7}, Lo/getFileFromAssets;-><init>(Lo/endTransaction;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    iget-object v4, p0, Lo/trackApi$onMessageChannelReady;->ICustomTabsCallback:Lo/trackApi;

    invoke-static {v4}, Lo/trackApi;->onPostMessage(Lo/trackApi;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 482
    :cond_2
    iget-object p1, p0, Lo/trackApi$onMessageChannelReady;->ICustomTabsCallback:Lo/trackApi;

    invoke-static {p1}, Lo/trackApi;->onNavigationEvent(Lo/trackApi;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 483
    iget-object p1, p0, Lo/trackApi$onMessageChannelReady;->ICustomTabsCallback:Lo/trackApi;

    invoke-static {p1}, Lo/trackApi;->onMessageChannelReady(Lo/trackApi;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    return-void
.end method
