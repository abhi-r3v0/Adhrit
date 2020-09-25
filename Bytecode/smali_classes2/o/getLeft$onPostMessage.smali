.class public abstract Lo/getLeft$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getMax$onNavigationEvent;
.implements Lo/interrupt$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getLeft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/putInternal;

.field ICustomTabsCallback$Stub:I

.field final asBinder:Ljava/lang/Object;

.field public extraCallback:Lo/getHashes;

.field private onMessageChannelReady:Z

.field private onNavigationEvent:Z


# direct methods
.method protected constructor <init>(ILo/restoreAuth;Lo/putInternal;)V
    .locals 7

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/getLeft$onPostMessage;->asBinder:Ljava/lang/Object;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 140
    move-object v0, p3

    check-cast v0, Lo/putInternal;

    iput-object v0, p0, Lo/getLeft$onPostMessage;->ICustomTabsCallback:Lo/putInternal;

    .line 141
    new-instance v0, Lo/interrupt;

    sget-object v3, Lo/purgeCache$onNavigationEvent;->onMessageChannelReady:Lo/purgeCache;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lo/interrupt;-><init>(Lo/interrupt$onNavigationEvent;Lo/partKey;ILo/restoreAuth;Lo/putInternal;)V

    iput-object v0, p0, Lo/getLeft$onPostMessage;->extraCallback:Lo/getHashes;

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "transportTracer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "statsTraceCtx"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private asBinder()V
    .locals 2

    .line 294
    iget-object v0, p0, Lo/getLeft$onPostMessage;->asBinder:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_0
    invoke-virtual {p0}, Lo/getLeft$onPostMessage;->onPostMessage()Z

    move-result v1

    .line 296
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p0}, Lo/getLeft$onPostMessage;->ICustomTabsCallback()Lo/sendAuthHelper;

    move-result-object v0

    invoke-interface {v0}, Lo/sendAuthHelper;->extraCallback()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 296
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected abstract ICustomTabsCallback()Lo/sendAuthHelper;
.end method

.method protected final extraCallback()V
    .locals 2

    .line 248
    iget-object v0, p0, Lo/getLeft$onPostMessage;->asBinder:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 249
    :try_start_0
    iput-boolean v1, p0, Lo/getLeft$onPostMessage;->onNavigationEvent:Z

    .line 250
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final extraCallback(I)V
    .locals 6

    .line 275
    iget-object v0, p0, Lo/getLeft$onPostMessage;->asBinder:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-boolean v1, p0, Lo/getLeft$onPostMessage;->onMessageChannelReady:Z

    const-string v2, "onStreamAllocated was not called, but it seems the stream is active"

    if-eqz v1, :cond_4

    .line 278
    iget v1, p0, Lo/getLeft$onPostMessage;->ICustomTabsCallback$Stub:I

    const v2, 0x8000

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 279
    :goto_0
    iget v5, p0, Lo/getLeft$onPostMessage;->ICustomTabsCallback$Stub:I

    sub-int/2addr v5, p1

    iput v5, p0, Lo/getLeft$onPostMessage;->ICustomTabsCallback$Stub:I

    if-ge v5, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 282
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 284
    invoke-direct {p0}, Lo/getLeft$onPostMessage;->asBinder()V

    :cond_3
    return-void

    .line 4511
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 282
    monitor-exit v0

    throw p1
.end method

.method protected final onMessageChannelReady()Lo/putInternal;
    .locals 1

    .line 289
    iget-object v0, p0, Lo/getLeft$onPostMessage;->ICustomTabsCallback:Lo/putInternal;

    return-object v0
.end method

.method public onNavigationEvent()V
    .locals 4

    .line 232
    invoke-virtual {p0}, Lo/getLeft$onPostMessage;->ICustomTabsCallback()Lo/sendAuthHelper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Lo/getLeft$onPostMessage;->asBinder:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-boolean v3, p0, Lo/getLeft$onPostMessage;->onMessageChannelReady:Z

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v3, "Already allocated"

    if-eqz v1, :cond_2

    .line 235
    iput-boolean v2, p0, Lo/getLeft$onPostMessage;->onMessageChannelReady:Z

    .line 236
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-direct {p0}, Lo/getLeft$onPostMessage;->asBinder()V

    return-void

    .line 3511
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 236
    monitor-exit v0

    throw v1

    .line 3495
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final onPostMessage(Lo/sendAuthHelper$onMessageChannelReady;)V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lo/getLeft$onPostMessage;->ICustomTabsCallback()Lo/sendAuthHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/sendAuthHelper;->onMessageChannelReady(Lo/sendAuthHelper$onMessageChannelReady;)V

    return-void
.end method

.method final onPostMessage()Z
    .locals 3

    .line 220
    iget-object v0, p0, Lo/getLeft$onPostMessage;->asBinder:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-boolean v1, p0, Lo/getLeft$onPostMessage;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lo/getLeft$onPostMessage;->ICustomTabsCallback$Stub:I

    const v2, 0x8000

    if-ge v1, v2, :cond_0

    iget-boolean v1, p0, Lo/getLeft$onPostMessage;->onNavigationEvent:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 222
    monitor-exit v0

    throw v1
.end method
