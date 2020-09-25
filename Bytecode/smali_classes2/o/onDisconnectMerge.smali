.class public final Lo/onDisconnectMerge;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isPersistenceEnabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onDisconnectMerge$onNavigationEvent;,
        Lo/onDisconnectMerge$onMessageChannelReady;,
        Lo/onDisconnectMerge$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private final ICustomTabsCallback$Stub:[B

.field private ICustomTabsCallback$Stub$Proxy:J

.field private ICustomTabsService:I

.field private asBinder:Z

.field private final asInterface:Lo/onDisconnectMerge$onMessageChannelReady;

.field private extraCallback:Lo/sendPut;

.field final onMessageChannelReady:Lo/restoreState;

.field private final onNavigationEvent:Lo/onDisconnectMerge$ICustomTabsCallback;

.field private onPostMessage:Lo/pruneTreeRecursive;

.field private final onRelationshipValidationResult:Lo/restoreAuth;

.field private onTransact:Z

.field private warmup:I


# direct methods
.method public constructor <init>(Lo/onDisconnectMerge$ICustomTabsCallback;Lo/restoreState;Lo/restoreAuth;)V
    .locals 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lo/onDisconnectMerge;->ICustomTabsCallback:I

    .line 76
    sget-object v1, Lo/purgeCache$onNavigationEvent;->onMessageChannelReady:Lo/purgeCache;

    iput-object v1, p0, Lo/onDisconnectMerge;->onPostMessage:Lo/pruneTreeRecursive;

    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Lo/onDisconnectMerge;->asBinder:Z

    .line 78
    new-instance v1, Lo/onDisconnectMerge$onMessageChannelReady;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/onDisconnectMerge$onMessageChannelReady;-><init>(Lo/onDisconnectMerge;B)V

    iput-object v1, p0, Lo/onDisconnectMerge;->asInterface:Lo/onDisconnectMerge$onMessageChannelReady;

    const/4 v1, 0x5

    new-array v1, v1, [B

    .line 79
    iput-object v1, p0, Lo/onDisconnectMerge;->ICustomTabsCallback$Stub:[B

    .line 87
    iput v0, p0, Lo/onDisconnectMerge;->ICustomTabsService:I

    .line 98
    check-cast p1, Lo/onDisconnectMerge$ICustomTabsCallback;

    iput-object p1, p0, Lo/onDisconnectMerge;->onNavigationEvent:Lo/onDisconnectMerge$ICustomTabsCallback;

    if-eqz p2, :cond_1

    .line 99
    check-cast p2, Lo/restoreState;

    iput-object p2, p0, Lo/onDisconnectMerge;->onMessageChannelReady:Lo/restoreState;

    if-eqz p3, :cond_0

    .line 100
    check-cast p3, Lo/restoreAuth;

    iput-object p3, p0, Lo/onDisconnectMerge;->onRelationshipValidationResult:Lo/restoreAuth;

    return-void

    .line 3910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "statsTraceCtx"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bufferAllocator"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onNavigationEvent(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Lo/onDisconnectMerge$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/onDisconnectMerge$onNavigationEvent;-><init>(Lo/onDisconnectMerge;B)V

    .line 185
    iget-object v2, p0, Lo/onDisconnectMerge;->onPostMessage:Lo/pruneTreeRecursive;

    invoke-interface {v2, v0}, Lo/pruneTreeRecursive;->onNavigationEvent(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    .line 188
    :try_start_0
    invoke-static {p1, v2}, Lo/onDisconnectMerge;->onNavigationEvent(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 192
    iget v2, p0, Lo/onDisconnectMerge;->ICustomTabsCallback:I

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    if-gt p1, v2, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    sget-object v0, Lo/emptyMap;->onRelationshipValidationResult:Lo/emptyMap;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    iget p1, p0, Lo/onDisconnectMerge;->ICustomTabsCallback:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "message too large %d > %d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {v0, p1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    .line 13524
    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p1}, Lio/grpc/StatusRuntimeException;-><init>(Lo/emptyMap;)V

    .line 196
    throw v0

    .line 199
    :cond_1
    :goto_0
    invoke-direct {p0, v0, v3}, Lo/onDisconnectMerge;->onPostMessage(Lo/onDisconnectMerge$onNavigationEvent;Z)V

    return p1

    :catchall_0
    move-exception p1

    .line 190
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw p1
.end method

.method private static onNavigationEvent(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    instance-of v0, p0, Lo/pathToKey;

    if-eqz v0, :cond_0

    .line 269
    check-cast p0, Lo/pathToKey;

    invoke-interface {p0, p1}, Lo/pathToKey;->ICustomTabsCallback(Ljava/io/OutputStream;)I

    move-result p0

    return p0

    .line 274
    :cond_0
    invoke-static {p0, p1}, Lo/getReport;->onPostMessage(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, p0, v0

    if-gtz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    long-to-int p1, p0

    return p1

    .line 16203
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "Message size overflow: %s"

    invoke-static {p0, v1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onPostMessage(Lo/onDisconnectMerge$onNavigationEvent;Z)V
    .locals 5

    .line 237
    iget-object v0, p0, Lo/onDisconnectMerge;->ICustomTabsCallback$Stub:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 238
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 14385
    invoke-virtual {p1}, Lo/onDisconnectMerge$onNavigationEvent;->extraCallback()I

    move-result p2

    .line 240
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 241
    iget-object v1, p0, Lo/onDisconnectMerge;->onMessageChannelReady:Lo/restoreState;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lo/restoreState;->onMessageChannelReady(I)Lo/sendPut;

    move-result-object v1

    .line 242
    iget-object v2, p0, Lo/onDisconnectMerge;->ICustomTabsCallback$Stub:[B

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lo/sendPut;->onNavigationEvent([BII)V

    if-nez p2, :cond_0

    .line 245
    iput-object v1, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lo/onDisconnectMerge;->onNavigationEvent:Lo/onDisconnectMerge$ICustomTabsCallback;

    iget v2, p0, Lo/onDisconnectMerge;->warmup:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-interface {v0, v1, v3, v3, v2}, Lo/onDisconnectMerge$ICustomTabsCallback;->onMessageChannelReady(Lo/sendPut;ZZI)V

    .line 254
    iput v4, p0, Lo/onDisconnectMerge;->warmup:I

    .line 15385
    iget-object p1, p1, Lo/onDisconnectMerge$onNavigationEvent;->onPostMessage:Ljava/util/List;

    const/4 v0, 0x0

    .line 257
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_1

    .line 258
    iget-object v1, p0, Lo/onDisconnectMerge;->onNavigationEvent:Lo/onDisconnectMerge$ICustomTabsCallback;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sendPut;

    invoke-interface {v1, v2, v3, v3, v3}, Lo/onDisconnectMerge$ICustomTabsCallback;->onMessageChannelReady(Lo/sendPut;ZZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/sendPut;

    iput-object p1, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    int-to-long p1, p2

    .line 263
    iput-wide p1, p0, Lo/onDisconnectMerge;->ICustomTabsCallback$Stub$Proxy:J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 4

    .line 18312
    iget-boolean v0, p0, Lo/onDisconnectMerge;->onTransact:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lo/onDisconnectMerge;->onTransact:Z

    .line 325
    iget-object v1, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lo/sendPut;->onPostMessage()I

    move-result v1

    if-nez v1, :cond_0

    .line 18343
    iget-object v1, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    if-eqz v1, :cond_0

    .line 18345
    iput-object v2, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    .line 18350
    :cond_0
    iget-object v1, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    .line 18351
    iput-object v2, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    .line 18352
    iget-object v2, p0, Lo/onDisconnectMerge;->onNavigationEvent:Lo/onDisconnectMerge$ICustomTabsCallback;

    iget v3, p0, Lo/onDisconnectMerge;->warmup:I

    invoke-interface {v2, v1, v0, v0, v3}, Lo/onDisconnectMerge$ICustomTabsCallback;->onMessageChannelReady(Lo/sendPut;ZZI)V

    const/4 v0, 0x0

    .line 18353
    iput v0, p0, Lo/onDisconnectMerge;->warmup:I

    :cond_1
    return-void
.end method

.method public final synthetic extraCallback(Lo/pruneTreeRecursive;)Lo/isPersistenceEnabled;
    .locals 1

    if-eqz p1, :cond_0

    .line 19105
    check-cast p1, Lo/pruneTreeRecursive;

    iput-object p1, p0, Lo/onDisconnectMerge;->onPostMessage:Lo/pruneTreeRecursive;

    return-object p0

    .line 19910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can\'t pass an empty compressor"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady()V
    .locals 5

    .line 301
    iget-object v0, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/sendPut;->onPostMessage()I

    move-result v0

    if-lez v0, :cond_0

    .line 17350
    iget-object v0, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    const/4 v1, 0x0

    .line 17351
    iput-object v1, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    .line 17352
    iget-object v1, p0, Lo/onDisconnectMerge;->onNavigationEvent:Lo/onDisconnectMerge$ICustomTabsCallback;

    const/4 v2, 0x1

    iget v3, p0, Lo/onDisconnectMerge;->warmup:I

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4, v2, v3}, Lo/onDisconnectMerge$ICustomTabsCallback;->onMessageChannelReady(Lo/sendPut;ZZI)V

    .line 17353
    iput v4, p0, Lo/onDisconnectMerge;->warmup:I

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Ljava/io/InputStream;)V
    .locals 9

    const-string v0, "Failed to frame message"

    .line 6312
    iget-boolean v1, p0, Lo/onDisconnectMerge;->onTransact:Z

    if-nez v1, :cond_c

    .line 129
    iget v1, p0, Lo/onDisconnectMerge;->warmup:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lo/onDisconnectMerge;->warmup:I

    .line 130
    iget v1, p0, Lo/onDisconnectMerge;->ICustomTabsService:I

    add-int/2addr v1, v2

    iput v1, p0, Lo/onDisconnectMerge;->ICustomTabsService:I

    const-wide/16 v3, 0x0

    .line 131
    iput-wide v3, p0, Lo/onDisconnectMerge;->ICustomTabsCallback$Stub$Proxy:J

    .line 133
    iget-boolean v1, p0, Lo/onDisconnectMerge;->asBinder:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/onDisconnectMerge;->onPostMessage:Lo/pruneTreeRecursive;

    sget-object v4, Lo/purgeCache$onNavigationEvent;->onMessageChannelReady:Lo/purgeCache;

    if-eq v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7204
    :goto_0
    :try_start_0
    instance-of v4, p1, Lo/commaSeparatedList;

    const/4 v5, -0x1

    if-nez v4, :cond_2

    instance-of v4, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    goto :goto_2

    .line 7205
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    :goto_2
    const/4 v6, 0x2

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 139
    invoke-direct {p0, p1}, Lo/onDisconnectMerge;->onNavigationEvent(Ljava/io/InputStream;)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :cond_3
    const-string v1, "message too large %d > %d"

    if-eq v4, v5, :cond_7

    int-to-long v7, v4

    .line 8167
    :try_start_1
    iput-wide v7, p0, Lo/onDisconnectMerge;->ICustomTabsCallback$Stub$Proxy:J

    .line 8215
    iget v7, p0, Lo/onDisconnectMerge;->ICustomTabsCallback:I

    if-ltz v7, :cond_5

    iget v7, p0, Lo/onDisconnectMerge;->ICustomTabsCallback:I

    if-gt v4, v7, :cond_4

    goto :goto_3

    .line 8216
    :cond_4
    sget-object p1, Lo/emptyMap;->onRelationshipValidationResult:Lo/emptyMap;

    new-array v5, v6, [Ljava/lang/Object;

    .line 8218
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    iget v3, p0, Lo/onDisconnectMerge;->ICustomTabsCallback:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8217
    invoke-virtual {p1, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    .line 8524
    new-instance v1, Lio/grpc/StatusRuntimeException;

    invoke-direct {v1, p1}, Lio/grpc/StatusRuntimeException;-><init>(Lo/emptyMap;)V

    .line 8219
    throw v1

    .line 8221
    :cond_5
    :goto_3
    iget-object v1, p0, Lo/onDisconnectMerge;->ICustomTabsCallback$Stub:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 8222
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 8223
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 8226
    iget-object v7, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    if-nez v7, :cond_6

    .line 8227
    iget-object v7, p0, Lo/onDisconnectMerge;->onMessageChannelReady:Lo/restoreState;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v4

    invoke-interface {v7, v8}, Lo/restoreState;->onMessageChannelReady(I)Lo/sendPut;

    move-result-object v7

    iput-object v7, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    .line 8229
    :cond_6
    iget-object v7, p0, Lo/onDisconnectMerge;->ICustomTabsCallback$Stub:[B

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0, v7, v3, v1}, Lo/onDisconnectMerge;->onMessageChannelReady([BII)V

    .line 8230
    iget-object v1, p0, Lo/onDisconnectMerge;->asInterface:Lo/onDisconnectMerge$onMessageChannelReady;

    invoke-static {p1, v1}, Lo/onDisconnectMerge;->onNavigationEvent(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p1

    goto :goto_5

    .line 8170
    :cond_7
    new-instance v7, Lo/onDisconnectMerge$onNavigationEvent;

    invoke-direct {v7, p0, v3}, Lo/onDisconnectMerge$onNavigationEvent;-><init>(Lo/onDisconnectMerge;B)V

    .line 8171
    invoke-static {p1, v7}, Lo/onDisconnectMerge;->onNavigationEvent(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p1

    .line 8172
    iget v8, p0, Lo/onDisconnectMerge;->ICustomTabsCallback:I

    if-ltz v8, :cond_9

    iget v8, p0, Lo/onDisconnectMerge;->ICustomTabsCallback:I

    if-gt p1, v8, :cond_8

    goto :goto_4

    .line 8173
    :cond_8
    sget-object v4, Lo/emptyMap;->onRelationshipValidationResult:Lo/emptyMap;

    new-array v5, v6, [Ljava/lang/Object;

    .line 8175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    iget p1, p0, Lo/onDisconnectMerge;->ICustomTabsCallback:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8174
    invoke-virtual {v4, p1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    .line 9524
    new-instance v1, Lio/grpc/StatusRuntimeException;

    invoke-direct {v1, p1}, Lio/grpc/StatusRuntimeException;-><init>(Lo/emptyMap;)V

    .line 8176
    throw v1

    .line 8178
    :cond_9
    :goto_4
    invoke-direct {p0, v7, v3}, Lo/onDisconnectMerge;->onPostMessage(Lo/onDisconnectMerge$onNavigationEvent;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    if-eq v4, v5, :cond_b

    if-ne p1, v4, :cond_a

    goto :goto_6

    :cond_a
    new-array v0, v6, [Ljava/lang/Object;

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Message length inaccurate %s != %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 158
    sget-object v0, Lo/emptyMap;->asBinder:Lo/emptyMap;

    invoke-virtual {v0, p1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    .line 12524
    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p1}, Lio/grpc/StatusRuntimeException;-><init>(Lo/emptyMap;)V

    .line 158
    throw v0

    .line 161
    :cond_b
    :goto_6
    iget-object p1, p0, Lo/onDisconnectMerge;->onRelationshipValidationResult:Lo/restoreAuth;

    iget-wide v0, p0, Lo/onDisconnectMerge;->ICustomTabsCallback$Stub$Proxy:J

    invoke-virtual {p1, v0, v1}, Lo/restoreAuth;->onPostMessage(J)V

    return-void

    :catch_0
    move-exception p1

    .line 150
    sget-object v1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    .line 151
    invoke-virtual {v1, v0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p1}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object p1

    .line 11524
    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p1}, Lio/grpc/StatusRuntimeException;-><init>(Lo/emptyMap;)V

    .line 153
    throw v0

    :catch_1
    move-exception p1

    .line 145
    sget-object v1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    .line 146
    invoke-virtual {v1, v0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p1}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object p1

    .line 10524
    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p1}, Lio/grpc/StatusRuntimeException;-><init>(Lo/emptyMap;)V

    .line 148
    throw v0

    .line 5358
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Framer already closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onMessageChannelReady([BII)V
    .locals 4

    :goto_0
    if-lez p3, :cond_2

    .line 282
    iget-object v0, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/sendPut;->extraCallback()I

    move-result v0

    if-nez v0, :cond_0

    .line 16350
    iget-object v0, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    const/4 v1, 0x0

    .line 16351
    iput-object v1, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    .line 16352
    iget-object v1, p0, Lo/onDisconnectMerge;->onNavigationEvent:Lo/onDisconnectMerge$ICustomTabsCallback;

    iget v2, p0, Lo/onDisconnectMerge;->warmup:I

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v3, v2}, Lo/onDisconnectMerge$ICustomTabsCallback;->onMessageChannelReady(Lo/sendPut;ZZI)V

    .line 16353
    iput v3, p0, Lo/onDisconnectMerge;->warmup:I

    .line 285
    :cond_0
    iget-object v0, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lo/onDisconnectMerge;->onMessageChannelReady:Lo/restoreState;

    invoke-interface {v0, p3}, Lo/restoreState;->onMessageChannelReady(I)Lo/sendPut;

    move-result-object v0

    iput-object v0, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    .line 289
    :cond_1
    iget-object v0, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    invoke-interface {v0}, Lo/sendPut;->extraCallback()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 290
    iget-object v1, p0, Lo/onDisconnectMerge;->extraCallback:Lo/sendPut;

    invoke-interface {v1, p1, p2, v0}, Lo/sendPut;->onNavigationEvent([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 2

    .line 117
    iget v0, p0, Lo/onDisconnectMerge;->ICustomTabsCallback:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 118
    iput p1, p0, Lo/onDisconnectMerge;->ICustomTabsCallback:I

    return-void

    .line 4511
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "max size already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic onPostMessage(Z)Lo/isPersistenceEnabled;
    .locals 0

    .line 20111
    iput-boolean p1, p0, Lo/onDisconnectMerge;->asBinder:Z

    return-object p0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lo/onDisconnectMerge;->onTransact:Z

    return v0
.end method
