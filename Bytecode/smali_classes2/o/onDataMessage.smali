.class Lo/onDataMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/colorFlip;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onDataMessage$extraCallback;
    }
.end annotation


# static fields
.field private static synthetic onRelationshipValidationResult:Z


# instance fields
.field private ICustomTabsCallback:Lo/rotateRight;

.field private ICustomTabsCallback$Stub:Lo/onDataMessage$extraCallback;

.field private asBinder:J

.field private extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile onMessageChannelReady:Z

.field private onNavigationEvent:Lo/colorFlip;

.field private onPostMessage:Lo/emptyMap;

.field private onTransact:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lo/onDataMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/onDataMessage;->onRelationshipValidationResult:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/onDataMessage;->extraCallback:Ljava/util/List;

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 3

    .line 141
    sget-boolean v0, Lo/onDataMessage;->onRelationshipValidationResult:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 142
    :cond_1
    :goto_0
    sget-boolean v0, Lo/onDataMessage;->onRelationshipValidationResult:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lo/onDataMessage;->onMessageChannelReady:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 143
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    :goto_2
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v1, p0, Lo/onDataMessage;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lo/onDataMessage;->extraCallback:Ljava/util/List;

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lo/onDataMessage;->onMessageChannelReady:Z

    .line 150
    iget-object v0, p0, Lo/onDataMessage;->ICustomTabsCallback$Stub:Lo/onDataMessage$extraCallback;

    .line 151
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 168
    invoke-virtual {v0}, Lo/onDataMessage$extraCallback;->ICustomTabsCallback()V

    :cond_4
    return-void

    .line 157
    :cond_5
    :try_start_1
    iget-object v1, p0, Lo/onDataMessage;->extraCallback:Ljava/util/List;

    .line 158
    iput-object v0, p0, Lo/onDataMessage;->extraCallback:Ljava/util/List;

    .line 159
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 163
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 165
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 159
    monitor-exit p0

    throw v0
.end method

.method private extraCallback(Lo/colorFlip;)V
    .locals 4

    .line 310
    iget-object v0, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    if-eqz v0, :cond_1

    .line 311
    iput-object p1, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    .line 312
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/onDataMessage;->onTransact:J

    return-void

    .line 6592
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v3, v0, v2

    const-string v1, "realStream already set to %s"

    invoke-static {v1, v0}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onNavigationEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-boolean v0, p0, Lo/onDataMessage;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lo/onDataMessage;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 185
    :cond_0
    monitor-exit p0

    .line 186
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 185
    monitor-exit p0

    throw p1
.end method

.method static synthetic onPostMessage(Lo/onDataMessage;)Lo/colorFlip;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 1

    .line 327
    iget-boolean v0, p0, Lo/onDataMessage;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    invoke-interface {v0, p1}, Lo/colorFlip;->ICustomTabsCallback(I)V

    return-void

    .line 330
    :cond_0
    new-instance v0, Lo/onDataMessage$1;

    invoke-direct {v0, p0, p1}, Lo/onDataMessage$1;-><init>(Lo/onDataMessage;I)V

    invoke-direct {p0, v0}, Lo/onDataMessage;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/assertValidTrackedQuery$onPostMessage;)V
    .locals 5

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lo/onDataMessage;->ICustomTabsCallback:Lo/rotateRight;

    if-nez v0, :cond_0

    .line 105
    monitor-exit p0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    if-eqz v0, :cond_1

    const-string v0, "buffered_nanos"

    .line 108
    iget-wide v1, p0, Lo/onDataMessage;->onTransact:J

    iget-wide v3, p0, Lo/onDataMessage;->asBinder:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lo/assertValidTrackedQuery$onPostMessage;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)Lo/assertValidTrackedQuery$onPostMessage;

    .line 109
    iget-object v0, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    invoke-interface {v0, p1}, Lo/colorFlip;->ICustomTabsCallback(Lo/assertValidTrackedQuery$onPostMessage;)V

    goto :goto_0

    :cond_1
    const-string v0, "buffered_nanos"

    .line 111
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lo/onDataMessage;->asBinder:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lo/assertValidTrackedQuery$onPostMessage;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)Lo/assertValidTrackedQuery$onPostMessage;

    const-string v0, "waiting_for_connection"

    .line 1035
    iget-object p1, p1, Lo/assertValidTrackedQuery$onPostMessage;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 1

    .line 383
    iget-boolean v0, p0, Lo/onDataMessage;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    invoke-interface {v0, p1}, Lo/colorFlip;->ICustomTabsCallback(Z)V

    return-void

    .line 386
    :cond_0
    new-instance v0, Lo/onDataMessage$6;

    invoke-direct {v0, p0, p1}, Lo/onDataMessage$6;-><init>(Lo/onDataMessage;Z)V

    invoke-direct {p0, v0}, Lo/onDataMessage;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final V_()Lo/serverCacheEstimatedSizeInBytes;
    .locals 1

    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    .line 240
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0}, Lo/colorFlip;->V_()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v0

    return-object v0

    .line 244
    :cond_0
    sget-object v0, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    return-object v0

    :catchall_0
    move-exception v0

    .line 240
    monitor-exit p0

    throw v0
.end method

.method public final asBinder()V
    .locals 1

    .line 265
    iget-boolean v0, p0, Lo/onDataMessage;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    invoke-interface {v0}, Lo/colorFlip;->asBinder()V

    return-void

    .line 268
    :cond_0
    new-instance v0, Lo/onDataMessage$12;

    invoke-direct {v0, p0}, Lo/onDataMessage$12;-><init>(Lo/onDataMessage;)V

    invoke-direct {p0, v0}, Lo/onDataMessage;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extraCallback(I)V
    .locals 1

    .line 79
    iget-boolean v0, p0, Lo/onDataMessage;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    invoke-interface {v0, p1}, Lo/colorFlip;->extraCallback(I)V

    return-void

    .line 82
    :cond_0
    new-instance v0, Lo/onDataMessage$8;

    invoke-direct {v0, p0, p1}, Lo/onDataMessage$8;-><init>(Lo/onDataMessage;I)V

    invoke-direct {p0, v0}, Lo/onDataMessage;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extraCallback(Ljava/io/InputStream;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 251
    iget-boolean v0, p0, Lo/onDataMessage;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    invoke-interface {v0, p1}, Lo/colorFlip;->extraCallback(Ljava/io/InputStream;)V

    return-void

    .line 254
    :cond_0
    new-instance v0, Lo/onDataMessage$14;

    invoke-direct {v0, p0, p1}, Lo/onDataMessage$14;-><init>(Lo/onDataMessage;Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lo/onDataMessage;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void

    .line 4910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "message"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lo/onDataMessage;->ICustomTabsCallback:Lo/rotateRight;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 193
    new-instance v0, Lo/onDataMessage$10;

    invoke-direct {v0, p0, p1}, Lo/onDataMessage$10;-><init>(Lo/onDataMessage;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/onDataMessage;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void

    .line 2910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "authority"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2511
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "May only be called before start"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lo/onDataMessage;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    invoke-interface {v0}, Lo/colorFlip;->extraCallback()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady(I)V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lo/onDataMessage;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    invoke-interface {v0, p1}, Lo/colorFlip;->onMessageChannelReady(I)V

    return-void

    .line 68
    :cond_0
    new-instance v0, Lo/onDataMessage$2;

    invoke-direct {v0, p0, p1}, Lo/onDataMessage$2;-><init>(Lo/onDataMessage;I)V

    invoke-direct {p0, v0}, Lo/onDataMessage;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessageChannelReady(Lo/emptyMap;)V
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 283
    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v2, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    if-nez v2, :cond_0

    .line 286
    sget-object v0, Lo/isInterrupted;->onMessageChannelReady:Lo/isInterrupted;

    invoke-direct {p0, v0}, Lo/onDataMessage;->extraCallback(Lo/colorFlip;)V

    const/4 v0, 0x0

    .line 289
    iget-object v1, p0, Lo/onDataMessage;->ICustomTabsCallback:Lo/rotateRight;

    .line 290
    iput-object p1, p0, Lo/onDataMessage;->onPostMessage:Lo/emptyMap;

    .line 292
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 294
    new-instance v0, Lo/onDataMessage$11;

    invoke-direct {v0, p0, p1}, Lo/onDataMessage$11;-><init>(Lo/onDataMessage;Lo/emptyMap;)V

    invoke-direct {p0, v0}, Lo/onDataMessage;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    .line 302
    new-instance v0, Lo/getPredecessorKey;

    invoke-direct {v0}, Lo/getPredecessorKey;-><init>()V

    invoke-interface {v1, p1, v0}, Lo/rotateRight;->extraCallback(Lo/emptyMap;Lo/getPredecessorKey;)V

    .line 304
    :cond_2
    invoke-direct {p0}, Lo/onDataMessage;->ICustomTabsCallback()V

    return-void

    :catchall_0
    move-exception p1

    .line 292
    monitor-exit p0

    throw p1

    .line 5910
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "reason"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onNavigationEvent(Lo/colorFlip;)V
    .locals 1

    .line 124
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    if-eqz v0, :cond_0

    .line 127
    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "stream"

    if-eqz p1, :cond_1

    .line 129
    check-cast p1, Lo/colorFlip;

    invoke-direct {p0, p1}, Lo/onDataMessage;->extraCallback(Lo/colorFlip;)V

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-direct {p0}, Lo/onDataMessage;->ICustomTabsCallback()V

    return-void

    .line 1910
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 130
    monitor-exit p0

    throw p1
.end method

.method public final onNavigationEvent(Z)V
    .locals 1

    .line 352
    new-instance v0, Lo/onDataMessage$3;

    invoke-direct {v0, p0, p1}, Lo/onDataMessage$3;-><init>(Lo/onDataMessage;Z)V

    invoke-direct {p0, v0}, Lo/onDataMessage;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    .line 317
    new-instance v0, Lo/onDataMessage$13;

    invoke-direct {v0, p0}, Lo/onDataMessage$13;-><init>(Lo/onDataMessage;)V

    invoke-direct {p0, v0}, Lo/onDataMessage;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPostMessage(Lo/loadNestedQuery;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 364
    new-instance v0, Lo/onDataMessage$4;

    invoke-direct {v0, p0, p1}, Lo/onDataMessage$4;-><init>(Lo/onDataMessage;Lo/loadNestedQuery;)V

    invoke-direct {p0, v0}, Lo/onDataMessage;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void

    .line 7910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "decompressorRegistry"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/pruneTreeRecursive;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 342
    new-instance v0, Lo/onDataMessage$5;

    invoke-direct {v0, p0, p1}, Lo/onDataMessage$5;-><init>(Lo/onDataMessage;Lo/pruneTreeRecursive;)V

    invoke-direct {p0, v0}, Lo/onDataMessage;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void

    .line 6910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "compressor"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/rotateRight;)V
    .locals 4

    .line 203
    iget-object v0, p0, Lo/onDataMessage;->ICustomTabsCallback:Lo/rotateRight;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 207
    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    if-eqz p1, :cond_4

    .line 208
    move-object v0, p1

    check-cast v0, Lo/rotateRight;

    iput-object v0, p0, Lo/onDataMessage;->ICustomTabsCallback:Lo/rotateRight;

    .line 210
    iget-object v0, p0, Lo/onDataMessage;->onPostMessage:Lo/emptyMap;

    .line 211
    iget-boolean v1, p0, Lo/onDataMessage;->onMessageChannelReady:Z

    if-nez v1, :cond_1

    .line 213
    new-instance v2, Lo/onDataMessage$extraCallback;

    invoke-direct {v2, p1}, Lo/onDataMessage$extraCallback;-><init>(Lo/rotateRight;)V

    iput-object v2, p0, Lo/onDataMessage;->ICustomTabsCallback$Stub:Lo/onDataMessage$extraCallback;

    move-object p1, v2

    .line 215
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lo/onDataMessage;->asBinder:J

    .line 216
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 218
    new-instance v1, Lo/getPredecessorKey;

    invoke-direct {v1}, Lo/getPredecessorKey;-><init>()V

    invoke-interface {p1, v0, v1}, Lo/rotateRight;->extraCallback(Lo/emptyMap;Lo/getPredecessorKey;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 223
    iget-object v0, p0, Lo/onDataMessage;->onNavigationEvent:Lo/colorFlip;

    invoke-interface {v0, p1}, Lo/colorFlip;->onPostMessage(Lo/rotateRight;)V

    return-void

    .line 226
    :cond_3
    new-instance v0, Lo/onDataMessage$9;

    invoke-direct {v0, p0, p1}, Lo/onDataMessage$9;-><init>(Lo/onDataMessage;Lo/rotateRight;)V

    invoke-direct {p0, v0}, Lo/onDataMessage;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void

    .line 3910
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 216
    monitor-exit p0

    throw p1

    .line 3511
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/saveNode;)V
    .locals 1

    .line 93
    new-instance v0, Lo/onDataMessage$7;

    invoke-direct {v0, p0, p1}, Lo/onDataMessage$7;-><init>(Lo/onDataMessage;Lo/saveNode;)V

    invoke-direct {p0, v0}, Lo/onDataMessage;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method
