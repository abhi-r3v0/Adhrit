.class public final Lo/writeInt32;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeInt32$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static volatile ICustomTabsCallback:Lo/reverseIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/reverseIterator<",
            "Lo/ClsFileOutputStream;",
            "Lo/getCompleteFile;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile onMessageChannelReady:Lo/reverseIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/reverseIterator<",
            "Lo/writeSFixed64;",
            "Lo/writeInt64NoTag;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile onNavigationEvent:Lo/reverseIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/reverseIterator<",
            "Lo/writeBool;",
            "Lo/writeFixed64;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile onPostMessage:Lo/reverseIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/reverseIterator<",
            "Lo/ByteString$Output;",
            "Lo/closeInProgressStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/reverseIterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/reverseIterator<",
            "Lo/ByteString$Output;",
            "Lo/closeInProgressStream;",
            ">;"
        }
    .end annotation

    .line 207
    sget-object v0, Lo/writeInt32;->onPostMessage:Lo/reverseIterator;

    if-nez v0, :cond_1

    .line 208
    const-class v0, Lo/writeInt32;

    monitor-enter v0

    .line 209
    :try_start_0
    sget-object v1, Lo/writeInt32;->onPostMessage:Lo/reverseIterator;

    if-nez v1, :cond_0

    .line 211
    invoke-static {}, Lo/reverseIterator;->onPostMessage()Lo/reverseIterator$extraCallback;

    move-result-object v1

    sget-object v2, Lo/reverseIterator$ICustomTabsCallback;->ICustomTabsCallback:Lo/reverseIterator$ICustomTabsCallback;

    .line 1502
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

    const-string v2, "google.firestore.v1.Firestore"

    const-string v3, "BatchGetDocuments"

    .line 213
    invoke-static {v2, v3}, Lo/reverseIterator;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1513
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1569
    iput-boolean v2, v1, Lo/reverseIterator$extraCallback;->ICustomTabsCallback:Z

    .line 216
    invoke-static {}, Lo/ByteString$Output;->onNavigationEvent()Lo/ByteString$Output;

    move-result-object v2

    .line 215
    invoke-static {v2}, Lo/extractFrameCount;->onNavigationEvent(Lo/WireFormat$FieldType$2;)Lo/reverseIterator$onMessageChannelReady;

    move-result-object v2

    .line 2480
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->onPostMessage:Lo/reverseIterator$onMessageChannelReady;

    .line 218
    invoke-static {}, Lo/closeInProgressStream;->onNavigationEvent()Lo/closeInProgressStream;

    move-result-object v2

    .line 217
    invoke-static {v2}, Lo/extractFrameCount;->onNavigationEvent(Lo/WireFormat$FieldType$2;)Lo/reverseIterator$onMessageChannelReady;

    move-result-object v2

    .line 2491
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->onNavigationEvent:Lo/reverseIterator$onMessageChannelReady;

    .line 2580
    new-instance v2, Lo/reverseIterator;

    iget-object v4, v1, Lo/reverseIterator$extraCallback;->onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

    iget-object v5, v1, Lo/reverseIterator$extraCallback;->extraCallback:Ljava/lang/String;

    iget-object v6, v1, Lo/reverseIterator$extraCallback;->onPostMessage:Lo/reverseIterator$onMessageChannelReady;

    iget-object v7, v1, Lo/reverseIterator$extraCallback;->onNavigationEvent:Lo/reverseIterator$onMessageChannelReady;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-boolean v11, v1, Lo/reverseIterator$extraCallback;->ICustomTabsCallback:Z

    const/4 v12, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lo/reverseIterator;-><init>(Lo/reverseIterator$ICustomTabsCallback;Ljava/lang/String;Lo/reverseIterator$onMessageChannelReady;Lo/reverseIterator$onMessageChannelReady;Ljava/lang/Object;ZZZB)V

    .line 219
    sput-object v2, Lo/writeInt32;->onPostMessage:Lo/reverseIterator;

    move-object v1, v2

    .line 221
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static onMessageChannelReady()Lo/reverseIterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/reverseIterator<",
            "Lo/ClsFileOutputStream;",
            "Lo/getCompleteFile;",
            ">;"
        }
    .end annotation

    .line 267
    sget-object v0, Lo/writeInt32;->ICustomTabsCallback:Lo/reverseIterator;

    if-nez v0, :cond_1

    .line 268
    const-class v0, Lo/writeInt32;

    monitor-enter v0

    .line 269
    :try_start_0
    sget-object v1, Lo/writeInt32;->ICustomTabsCallback:Lo/reverseIterator;

    if-nez v1, :cond_0

    .line 271
    invoke-static {}, Lo/reverseIterator;->onPostMessage()Lo/reverseIterator$extraCallback;

    move-result-object v1

    sget-object v2, Lo/reverseIterator$ICustomTabsCallback;->onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

    .line 3502
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

    const-string v2, "google.firestore.v1.Firestore"

    const-string v3, "Commit"

    .line 273
    invoke-static {v2, v3}, Lo/reverseIterator;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3513
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x1

    .line 3569
    iput-boolean v2, v1, Lo/reverseIterator$extraCallback;->ICustomTabsCallback:Z

    .line 276
    invoke-static {}, Lo/ClsFileOutputStream;->onNavigationEvent()Lo/ClsFileOutputStream;

    move-result-object v2

    .line 275
    invoke-static {v2}, Lo/extractFrameCount;->onNavigationEvent(Lo/WireFormat$FieldType$2;)Lo/reverseIterator$onMessageChannelReady;

    move-result-object v2

    .line 4480
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->onPostMessage:Lo/reverseIterator$onMessageChannelReady;

    .line 278
    invoke-static {}, Lo/getCompleteFile;->onNavigationEvent()Lo/getCompleteFile;

    move-result-object v2

    .line 277
    invoke-static {v2}, Lo/extractFrameCount;->onNavigationEvent(Lo/WireFormat$FieldType$2;)Lo/reverseIterator$onMessageChannelReady;

    move-result-object v2

    .line 4491
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->onNavigationEvent:Lo/reverseIterator$onMessageChannelReady;

    .line 4580
    new-instance v2, Lo/reverseIterator;

    iget-object v4, v1, Lo/reverseIterator$extraCallback;->onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

    iget-object v5, v1, Lo/reverseIterator$extraCallback;->extraCallback:Ljava/lang/String;

    iget-object v6, v1, Lo/reverseIterator$extraCallback;->onPostMessage:Lo/reverseIterator$onMessageChannelReady;

    iget-object v7, v1, Lo/reverseIterator$extraCallback;->onNavigationEvent:Lo/reverseIterator$onMessageChannelReady;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-boolean v11, v1, Lo/reverseIterator$extraCallback;->ICustomTabsCallback:Z

    const/4 v12, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lo/reverseIterator;-><init>(Lo/reverseIterator$ICustomTabsCallback;Ljava/lang/String;Lo/reverseIterator$onMessageChannelReady;Lo/reverseIterator$onMessageChannelReady;Ljava/lang/Object;ZZZB)V

    .line 279
    sput-object v2, Lo/writeInt32;->ICustomTabsCallback:Lo/reverseIterator;

    move-object v1, v2

    .line 281
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static onMessageChannelReady(Lo/pruneCache;)Lo/writeInt32$ICustomTabsCallback;
    .locals 1

    .line 440
    new-instance v0, Lo/writeInt32$1;

    invoke-direct {v0}, Lo/writeInt32$1;-><init>()V

    .line 447
    invoke-static {v0, p0}, Lo/writeInt32$ICustomTabsCallback;->onPostMessage(Lo/resetKeepAlive$onPostMessage;Lo/pruneCache;)Lo/resetKeepAlive;

    move-result-object p0

    check-cast p0, Lo/writeInt32$ICustomTabsCallback;

    return-object p0
.end method

.method public static onNavigationEvent()Lo/reverseIterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/reverseIterator<",
            "Lo/writeSFixed64;",
            "Lo/writeInt64NoTag;",
            ">;"
        }
    .end annotation

    .line 357
    sget-object v0, Lo/writeInt32;->onMessageChannelReady:Lo/reverseIterator;

    if-nez v0, :cond_1

    .line 358
    const-class v0, Lo/writeInt32;

    monitor-enter v0

    .line 359
    :try_start_0
    sget-object v1, Lo/writeInt32;->onMessageChannelReady:Lo/reverseIterator;

    if-nez v1, :cond_0

    .line 361
    invoke-static {}, Lo/reverseIterator;->onPostMessage()Lo/reverseIterator$extraCallback;

    move-result-object v1

    sget-object v2, Lo/reverseIterator$ICustomTabsCallback;->onPostMessage:Lo/reverseIterator$ICustomTabsCallback;

    .line 5502
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

    const-string v2, "google.firestore.v1.Firestore"

    const-string v3, "Write"

    .line 363
    invoke-static {v2, v3}, Lo/reverseIterator;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5513
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x1

    .line 5569
    iput-boolean v2, v1, Lo/reverseIterator$extraCallback;->ICustomTabsCallback:Z

    .line 366
    invoke-static {}, Lo/writeSFixed64;->onNavigationEvent()Lo/writeSFixed64;

    move-result-object v2

    .line 365
    invoke-static {v2}, Lo/extractFrameCount;->onNavigationEvent(Lo/WireFormat$FieldType$2;)Lo/reverseIterator$onMessageChannelReady;

    move-result-object v2

    .line 6480
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->onPostMessage:Lo/reverseIterator$onMessageChannelReady;

    .line 368
    invoke-static {}, Lo/writeInt64NoTag;->onNavigationEvent()Lo/writeInt64NoTag;

    move-result-object v2

    .line 367
    invoke-static {v2}, Lo/extractFrameCount;->onNavigationEvent(Lo/WireFormat$FieldType$2;)Lo/reverseIterator$onMessageChannelReady;

    move-result-object v2

    .line 6491
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->onNavigationEvent:Lo/reverseIterator$onMessageChannelReady;

    .line 6580
    new-instance v2, Lo/reverseIterator;

    iget-object v4, v1, Lo/reverseIterator$extraCallback;->onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

    iget-object v5, v1, Lo/reverseIterator$extraCallback;->extraCallback:Ljava/lang/String;

    iget-object v6, v1, Lo/reverseIterator$extraCallback;->onPostMessage:Lo/reverseIterator$onMessageChannelReady;

    iget-object v7, v1, Lo/reverseIterator$extraCallback;->onNavigationEvent:Lo/reverseIterator$onMessageChannelReady;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-boolean v11, v1, Lo/reverseIterator$extraCallback;->ICustomTabsCallback:Z

    const/4 v12, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lo/reverseIterator;-><init>(Lo/reverseIterator$ICustomTabsCallback;Ljava/lang/String;Lo/reverseIterator$onMessageChannelReady;Lo/reverseIterator$onMessageChannelReady;Ljava/lang/Object;ZZZB)V

    .line 369
    sput-object v2, Lo/writeInt32;->onMessageChannelReady:Lo/reverseIterator;

    move-object v1, v2

    .line 371
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static onPostMessage()Lo/reverseIterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/reverseIterator<",
            "Lo/writeBool;",
            "Lo/writeFixed64;",
            ">;"
        }
    .end annotation

    .line 387
    sget-object v0, Lo/writeInt32;->onNavigationEvent:Lo/reverseIterator;

    if-nez v0, :cond_1

    .line 388
    const-class v0, Lo/writeInt32;

    monitor-enter v0

    .line 389
    :try_start_0
    sget-object v1, Lo/writeInt32;->onNavigationEvent:Lo/reverseIterator;

    if-nez v1, :cond_0

    .line 391
    invoke-static {}, Lo/reverseIterator;->onPostMessage()Lo/reverseIterator$extraCallback;

    move-result-object v1

    sget-object v2, Lo/reverseIterator$ICustomTabsCallback;->onPostMessage:Lo/reverseIterator$ICustomTabsCallback;

    .line 7502
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

    const-string v2, "google.firestore.v1.Firestore"

    const-string v3, "Listen"

    .line 393
    invoke-static {v2, v3}, Lo/reverseIterator;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7513
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x1

    .line 7569
    iput-boolean v2, v1, Lo/reverseIterator$extraCallback;->ICustomTabsCallback:Z

    .line 396
    invoke-static {}, Lo/writeBool;->ICustomTabsCallback()Lo/writeBool;

    move-result-object v2

    .line 395
    invoke-static {v2}, Lo/extractFrameCount;->onNavigationEvent(Lo/WireFormat$FieldType$2;)Lo/reverseIterator$onMessageChannelReady;

    move-result-object v2

    .line 8480
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->onPostMessage:Lo/reverseIterator$onMessageChannelReady;

    .line 398
    invoke-static {}, Lo/writeFixed64;->onNavigationEvent()Lo/writeFixed64;

    move-result-object v2

    .line 397
    invoke-static {v2}, Lo/extractFrameCount;->onNavigationEvent(Lo/WireFormat$FieldType$2;)Lo/reverseIterator$onMessageChannelReady;

    move-result-object v2

    .line 8491
    iput-object v2, v1, Lo/reverseIterator$extraCallback;->onNavigationEvent:Lo/reverseIterator$onMessageChannelReady;

    .line 8580
    new-instance v2, Lo/reverseIterator;

    iget-object v4, v1, Lo/reverseIterator$extraCallback;->onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

    iget-object v5, v1, Lo/reverseIterator$extraCallback;->extraCallback:Ljava/lang/String;

    iget-object v6, v1, Lo/reverseIterator$extraCallback;->onPostMessage:Lo/reverseIterator$onMessageChannelReady;

    iget-object v7, v1, Lo/reverseIterator$extraCallback;->onNavigationEvent:Lo/reverseIterator$onMessageChannelReady;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-boolean v11, v1, Lo/reverseIterator$extraCallback;->ICustomTabsCallback:Z

    const/4 v12, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lo/reverseIterator;-><init>(Lo/reverseIterator$ICustomTabsCallback;Ljava/lang/String;Lo/reverseIterator$onMessageChannelReady;Lo/reverseIterator$onMessageChannelReady;Ljava/lang/Object;ZZZB)V

    .line 399
    sput-object v2, Lo/writeInt32;->onNavigationEvent:Lo/reverseIterator;

    move-object v1, v2

    .line 401
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method
