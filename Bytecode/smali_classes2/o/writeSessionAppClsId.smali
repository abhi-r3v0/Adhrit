.class public abstract Lo/writeSessionAppClsId;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeSessionAppClsId$onMessageChannelReady;,
        Lo/writeSessionAppClsId$onPostMessage;,
        Lo/writeSessionAppClsId$extraCallback;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field onMessageChannelReady:Lo/writeSessionEventAppExecutionException;

.field public onNavigationEvent:I

.field onPostMessage:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 70
    iput v0, p0, Lo/writeSessionAppClsId;->ICustomTabsCallback:I

    const v0, 0x7fffffff

    .line 73
    iput v0, p0, Lo/writeSessionAppClsId;->onNavigationEvent:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lo/writeSessionAppClsId;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(ILjava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    return p0

    :cond_0
    and-int/lit8 p0, p0, 0x7f

    const/4 v0, 0x7

    :goto_0
    const/16 v1, 0x20

    const/4 v2, -0x1

    if-ge v0, v1, :cond_3

    .line 558
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_2

    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 560
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_6

    .line 569
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_5

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_4

    return p0

    :cond_4
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 571
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 577
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static ICustomTabsCallback(Ljava/nio/ByteBuffer;)Lo/writeSessionAppClsId;
    .locals 4

    .line 3180
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3182
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    .line 3181
    invoke-static {v0, v2, p0, v1}, Lo/writeSessionAppClsId;->ICustomTabsCallback([BIIZ)Lo/writeSessionAppClsId;

    move-result-object p0

    return-object p0

    .line 3185
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3318
    invoke-static {}, Lo/CreateReportSpiCall;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3186
    new-instance v0, Lo/writeSessionAppClsId$onPostMessage;

    invoke-direct {v0, p0, v1, v1}, Lo/writeSessionAppClsId$onPostMessage;-><init>(Ljava/nio/ByteBuffer;ZB)V

    return-object v0

    .line 3192
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v2, v0, [B

    .line 3193
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x1

    .line 3194
    invoke-static {v2, v1, v0, p0}, Lo/writeSessionAppClsId;->ICustomTabsCallback([BIIZ)Lo/writeSessionAppClsId;

    move-result-object p0

    return-object p0
.end method

.method static ICustomTabsCallback([BIIZ)Lo/writeSessionAppClsId;
    .locals 7

    .line 145
    new-instance v6, Lo/writeSessionAppClsId$extraCallback;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lo/writeSessionAppClsId$extraCallback;-><init>([BIIZB)V

    .line 152
    :try_start_0
    invoke-virtual {v6, p2}, Lo/writeSessionAppClsId;->ICustomTabsCallback(I)I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    .line 161
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static onMessageChannelReady(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static onMessageChannelReady(Ljava/io/InputStream;)Lo/writeSessionAppClsId;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2090
    sget-object p0, Lo/getEventLogSize;->ICustomTabsCallback:[B

    .line 2134
    array-length v1, p0

    .line 2139
    invoke-static {p0, v0, v1, v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback([BIIZ)Lo/writeSessionAppClsId;

    move-result-object p0

    return-object p0

    .line 2092
    :cond_0
    new-instance v1, Lo/writeSessionAppClsId$onMessageChannelReady;

    const/16 v2, 0x1000

    invoke-direct {v1, p0, v2, v0}, Lo/writeSessionAppClsId$onMessageChannelReady;-><init>(Ljava/io/InputStream;IB)V

    return-object v1
.end method

.method public static onMessageChannelReady([B)Lo/writeSessionAppClsId;
    .locals 2

    .line 134
    array-length v0, p0

    const/4 v1, 0x0

    .line 3139
    invoke-static {p0, v1, v0, v1}, Lo/writeSessionAppClsId;->ICustomTabsCallback([BIIZ)Lo/writeSessionAppClsId;

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady([BII)Lo/writeSessionAppClsId;
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-static {p0, p1, p2, v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback([BIIZ)Lo/writeSessionAppClsId;

    move-result-object p0

    return-object p0
.end method

.method public static onPostMessage(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public abstract ICustomTabsCallback()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback$Stub()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback$Stub$Proxy()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsService()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsService$Stub$Proxy()I
.end method

.method public abstract asBinder()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract asInterface()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCommand()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInterfaceDescriptor()Lo/SessionProtobufHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract mayLaunchUrl()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract newSession()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public abstract onPostMessage()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(I)V
.end method

.method public abstract onRelationshipValidationResult()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onTransact()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract postMessage()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract requestPostMessageChannel()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract updateVisuals()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract warmup()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
