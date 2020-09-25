.class final Lo/getExecutorService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getExecutorService$onMessageChannelReady;,
        Lo/getExecutorService$extraCallback;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/buildPennant;

.field ICustomTabsCallback$Stub:I

.field ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:J

.field asBinder:I

.field asInterface:Ljava/util/zip/Inflater;

.field final extraCallback:Ljava/util/zip/CRC32;

.field getInterfaceDescriptor:I

.field newSession:I

.field onMessageChannelReady:I

.field final onNavigationEvent:[B

.field final onPostMessage:Lo/getExecutorService$extraCallback;

.field onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

.field onTransact:Z

.field warmup:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Lo/buildPennant;

    invoke-direct {v0}, Lo/buildPennant;-><init>()V

    iput-object v0, p0, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    .line 158
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lo/getExecutorService;->extraCallback:Ljava/util/zip/CRC32;

    .line 160
    new-instance v0, Lo/getExecutorService$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getExecutorService$extraCallback;-><init>(Lo/getExecutorService;B)V

    iput-object v0, p0, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 161
    iput-object v0, p0, Lo/getExecutorService;->onNavigationEvent:[B

    .line 165
    sget-object v0, Lo/getExecutorService$onMessageChannelReady;->onPostMessage:Lo/getExecutorService$onMessageChannelReady;

    iput-object v0, p0, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    .line 166
    iput-boolean v1, p0, Lo/getExecutorService;->onTransact:Z

    .line 179
    iput v1, p0, Lo/getExecutorService;->getInterfaceDescriptor:I

    .line 182
    iput v1, p0, Lo/getExecutorService;->warmup:I

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lo/getExecutorService;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 217
    iget-boolean v0, p0, Lo/getExecutorService;->onTransact:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lo/getExecutorService;->onTransact:Z

    .line 219
    iget-object v0, p0, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    invoke-virtual {v0}, Lo/setLeft;->close()V

    .line 220
    iget-object v0, p0, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    :cond_0
    return-void
.end method

.method final extraCallback(Lo/onServerInfoUpdate;)V
    .locals 1

    .line 210
    iget-boolean v0, p0, Lo/getExecutorService;->onTransact:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    invoke-virtual {v0, p1}, Lo/buildPennant;->onPostMessage(Lo/onServerInfoUpdate;)V

    const/4 p1, 0x0

    .line 212
    iput-boolean p1, p0, Lo/getExecutorService;->ICustomTabsCallback$Stub$Proxy:Z

    return-void

    .line 2511
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GzipInflatingBuffer is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final extraCallback()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    .line 4113
    iget-object v1, v0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 5038
    iget v1, v1, Lo/getExecutorService;->ICustomTabsCallback$Stub:I

    .line 4113
    iget-object v2, v0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 6038
    iget v2, v2, Lo/getExecutorService;->onMessageChannelReady:I

    sub-int/2addr v1, v2

    .line 4113
    iget-object v0, v0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 7038
    iget-object v0, v0, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    .line 7063
    iget v0, v0, Lo/buildPennant;->onPostMessage:I

    add-int/2addr v1, v0

    const/16 v0, 0x12

    if-gt v1, v0, :cond_0

    .line 460
    iget-object v0, p0, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x0

    .line 461
    iput-object v0, p0, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    .line 463
    :cond_0
    iget-object v0, p0, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    .line 8113
    iget-object v1, v0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 9038
    iget v1, v1, Lo/getExecutorService;->ICustomTabsCallback$Stub:I

    .line 8113
    iget-object v2, v0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 10038
    iget v2, v2, Lo/getExecutorService;->onMessageChannelReady:I

    sub-int/2addr v1, v2

    .line 8113
    iget-object v0, v0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 11038
    iget-object v0, v0, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    .line 11063
    iget v0, v0, Lo/buildPennant;->onPostMessage:I

    add-int/2addr v1, v0

    const/16 v0, 0x8

    if-ge v1, v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 466
    :cond_1
    iget-object v1, p0, Lo/getExecutorService;->extraCallback:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    iget-object v3, p0, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    .line 13128
    invoke-virtual {v3}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v4

    invoke-virtual {v3}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v5

    shl-int/2addr v5, v0

    or-int/2addr v4, v5

    int-to-long v4, v4

    .line 14128
    invoke-virtual {v3}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v6

    invoke-virtual {v3}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v3

    shl-int/2addr v3, v0

    or-int/2addr v3, v6

    int-to-long v6, v3

    const/16 v3, 0x10

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    cmp-long v6, v1, v4

    if-nez v6, :cond_2

    .line 466
    iget-wide v1, p0, Lo/getExecutorService;->ICustomTabsService:J

    iget-object v4, p0, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    .line 16128
    invoke-virtual {v4}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v5

    invoke-virtual {v4}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v6

    shl-int/2addr v6, v0

    or-int/2addr v5, v6

    int-to-long v5, v5

    .line 17128
    invoke-virtual {v4}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v7

    invoke-virtual {v4}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v4

    shl-int/lit8 v0, v4, 0x8

    or-int/2addr v0, v7

    int-to-long v7, v0

    shl-long v3, v7, v3

    or-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    .line 470
    iget-object v0, p0, Lo/getExecutorService;->extraCallback:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 471
    sget-object v0, Lo/getExecutorService$onMessageChannelReady;->onPostMessage:Lo/getExecutorService$onMessageChannelReady;

    iput-object v0, p0, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    const/4 v0, 0x1

    return v0

    .line 468
    :cond_2
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Corrupt GZIP trailer"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final onMessageChannelReady([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 417
    :try_start_0
    iget-object v0, p0, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getTotalIn()I

    move-result v0

    .line 418
    iget-object v1, p0, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result p3

    .line 419
    iget-object v1, p0, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getTotalIn()I

    move-result v1

    sub-int/2addr v1, v0

    .line 420
    iget v0, p0, Lo/getExecutorService;->getInterfaceDescriptor:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/getExecutorService;->getInterfaceDescriptor:I

    .line 421
    iget v0, p0, Lo/getExecutorService;->warmup:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/getExecutorService;->warmup:I

    .line 422
    iget v0, p0, Lo/getExecutorService;->onMessageChannelReady:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/getExecutorService;->onMessageChannelReady:I

    .line 423
    iget-object v0, p0, Lo/getExecutorService;->extraCallback:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 425
    iget-object p1, p0, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->finished()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 427
    iget-object p1, p0, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide p1

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    iput-wide p1, p0, Lo/getExecutorService;->ICustomTabsService:J

    .line 429
    sget-object p1, Lo/getExecutorService$onMessageChannelReady;->asBinder:Lo/getExecutorService$onMessageChannelReady;

    iput-object p1, p0, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    goto :goto_1

    .line 430
    :cond_1
    iget-object p1, p0, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 431
    sget-object p1, Lo/getExecutorService$onMessageChannelReady;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    iput-object p1, p0, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return p3

    :catch_0
    move-exception p1

    .line 437
    new-instance p2, Ljava/util/zip/DataFormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Inflater data format exception: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3511
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "inflater is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onNavigationEvent()Z
    .locals 2

    .line 191
    iget-boolean v0, p0, Lo/getExecutorService;->onTransact:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 192
    iget-boolean v0, p0, Lo/getExecutorService;->ICustomTabsCallback$Stub$Proxy:Z

    return v0

    .line 1511
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GzipInflatingBuffer is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
