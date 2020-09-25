.class public final Lo/SettingsCacheBehavior;
.super Lo/buildSessionDataFrom;
.source ""


# static fields
.field private static final asBinder:[B


# instance fields
.field private final asInterface:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 33
    fill-array-data v0, :array_0

    sput-object v0, Lo/SettingsCacheBehavior;->asBinder:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lo/buildSessionDataFrom;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lo/SettingsCacheBehavior;->asInterface:Ljava/util/Random;

    return-void
.end method

.method private static extraCallback()Ljava/lang/String;
    .locals 10

    .line 68
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xc

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    .line 71
    new-instance v4, Ljava/lang/Long;

    const-wide v5, 0xffffffffL

    div-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 72
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 73
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    mul-long v4, v4, v2

    .line 75
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    .line 79
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 80
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v8, 0x5f

    .line 81
    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x21

    int-to-char v8, v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_0

    const/16 v9, 0x39

    if-gt v8, v9, :cond_0

    add-int/lit8 v8, v8, -0xf

    int-to-char v8, v8

    .line 86
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    int-to-long v6, v5

    cmp-long v1, v6, v2

    if-gez v1, :cond_2

    .line 89
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 90
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v6, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-object v4
.end method

.method private static onNavigationEvent(Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    :try_start_0
    const-string v0, "[^0-9]"

    const-string v1, ""

    .line 98
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, " "

    .line 99
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    int-to-long v3, p0

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-eqz p0, :cond_0

    .line 103
    new-instance p0, Ljava/lang/Long;

    div-long/2addr v0, v3

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/4 p0, 0x4

    new-array p0, p0, [B

    const/4 v3, 0x0

    const/16 v4, 0x18

    shr-long v5, v0, v4

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, p0, v3

    const/16 v3, 0x8

    shl-long v5, v0, v3

    shr-long/2addr v5, v4

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    const/4 v2, 0x2

    const/16 v3, 0x10

    shl-long v5, v0, v3

    shr-long/2addr v5, v4

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    const/4 v2, 0x3

    shl-long/2addr v0, v4

    shr-long/2addr v0, v4

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, p0, v2

    return-object p0

    .line 101
    :cond_0
    new-instance p0, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;

    const-string v0, "invalid Sec-WebSocket-Key (/key2/)"

    invoke-direct {p0, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    new-instance p0, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;

    const-string v0, "invalid Sec-WebSocket-Key (/key1/ or /key2/)"

    invoke-direct {p0, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lo/SettingsCacheBehavior;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object p0

    .line 40
    invoke-static {p1}, Lo/SettingsCacheBehavior;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 42
    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    const/4 v2, 0x1

    .line 43
    aget-byte v3, p0, v2

    aput-byte v3, v0, v2

    const/4 v3, 0x2

    .line 44
    aget-byte v4, p0, v3

    aput-byte v4, v0, v3

    const/4 v4, 0x3

    .line 45
    aget-byte p0, p0, v4

    aput-byte p0, v0, v4

    .line 46
    aget-byte p0, p1, v1

    const/4 v5, 0x4

    aput-byte p0, v0, v5

    .line 47
    aget-byte p0, p1, v2

    const/4 v6, 0x5

    aput-byte p0, v0, v6

    .line 48
    aget-byte p0, p1, v3

    const/4 v7, 0x6

    aput-byte p0, v0, v7

    .line 49
    aget-byte p0, p1, v4

    const/4 p1, 0x7

    aput-byte p0, v0, p1

    .line 50
    aget-byte p0, p2, v1

    const/16 v1, 0x8

    aput-byte p0, v0, v1

    .line 51
    aget-byte p0, p2, v2

    const/16 v1, 0x9

    aput-byte p0, v0, v1

    .line 52
    aget-byte p0, p2, v3

    const/16 v1, 0xa

    aput-byte p0, v0, v1

    .line 53
    aget-byte p0, p2, v4

    const/16 v1, 0xb

    aput-byte p0, v0, v1

    .line 54
    aget-byte p0, p2, v5

    const/16 v1, 0xc

    aput-byte p0, v0, v1

    .line 55
    aget-byte p0, p2, v6

    const/16 v1, 0xd

    aput-byte p0, v0, v1

    .line 56
    aget-byte p0, p2, v7

    const/16 v1, 0xe

    aput-byte p0, v0, v1

    .line 57
    aget-byte p0, p2, p1

    const/16 p1, 0xf

    aput-byte p0, v0, p1

    :try_start_0
    const-string p0, "MD5"

    .line 60
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 62
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toFeaturesJson;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 231
    invoke-interface {p1}, Lo/toFeaturesJson;->onTransact()Lo/toFeaturesJson$onMessageChannelReady;

    move-result-object v0

    sget-object v1, Lo/toFeaturesJson$onMessageChannelReady;->onRelationshipValidationResult:Lo/toFeaturesJson$onMessageChannelReady;

    if-ne v0, v1, :cond_0

    .line 232
    sget-object p1, Lo/SettingsCacheBehavior;->asBinder:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 233
    :cond_0
    invoke-super {p0, p1}, Lo/buildSessionDataFrom;->ICustomTabsCallback(Lo/toFeaturesJson;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback()Lo/getExpiresAtFrom;
    .locals 1

    .line 243
    new-instance v0, Lo/SettingsCacheBehavior;

    invoke-direct {v0}, Lo/SettingsCacheBehavior;-><init>()V

    return-object v0
.end method

.method public final extraCallback(Ljava/nio/ByteBuffer;)Lo/getAppSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lo/getExpiresAtFrom;->onPostMessage:Lo/readCachedSettings$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/SettingsCacheBehavior;->extraCallback(Ljava/nio/ByteBuffer;Lo/readCachedSettings$onMessageChannelReady;)Lo/getAppSettings;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key1"

    .line 182
    invoke-interface {v0, v1}, Lo/getAppSettings;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/getExpiresAtFrom;->onPostMessage:Lo/readCachedSettings$onMessageChannelReady;

    sget-object v2, Lo/readCachedSettings$onMessageChannelReady;->extraCallback:Lo/readCachedSettings$onMessageChannelReady;

    if-ne v1, v2, :cond_2

    :cond_0
    const-string v1, "Sec-WebSocket-Version"

    invoke-interface {v0, v1}, Lo/getAppSettings;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 183
    iget-object v1, p0, Lo/getExpiresAtFrom;->onPostMessage:Lo/readCachedSettings$onMessageChannelReady;

    sget-object v2, Lo/readCachedSettings$onMessageChannelReady;->onNavigationEvent:Lo/readCachedSettings$onMessageChannelReady;

    const/16 v3, 0x10

    if-ne v1, v2, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    :goto_0
    new-array v1, v1, [B

    .line 185
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    invoke-interface {v0, v1}, Lo/getAppSettings;->onMessageChannelReady([B)V

    goto :goto_1

    .line 187
    :catch_0
    new-instance v0, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    add-int/2addr p1, v3

    invoke-direct {v0, p1}, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;-><init>(I)V

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final onMessageChannelReady(Lo/getSettings;)Lo/getExpiresAtFrom$onMessageChannelReady;
    .locals 3

    const-string v0, "Upgrade"

    .line 136
    invoke-interface {p1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebSocket"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Connection"

    invoke-interface {p1, v1}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sec-WebSocket-Key1"

    invoke-interface {p1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Sec-WebSocket-Key2"

    invoke-interface {p1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Origin"

    invoke-interface {p1, v0}, Lo/getSettings;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onPostMessage:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1

    .line 138
    :cond_0
    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onNavigationEvent:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lo/toFeaturesJson;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 197
    invoke-virtual {p1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 198
    invoke-super {p0, p1}, Lo/buildSessionDataFrom;->onPostMessage(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    .line 200
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 201
    iget-object v0, p0, Lo/buildSessionDataFrom;->onMessageChannelReady:Ljava/util/List;

    const/4 v1, 0x1

    .line 202
    iput-boolean v1, p0, Lo/buildSessionDataFrom;->onNavigationEvent:Z

    .line 203
    iget-object v1, p0, Lo/buildSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_3

    const/4 v1, 0x2

    .line 204
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lo/buildSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

    .line 208
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lo/buildSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 211
    iget-object v1, p0, Lo/buildSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 213
    iget-object p1, p0, Lo/buildSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_1

    .line 214
    iget-object p1, p0, Lo/buildSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    sget-object v1, Lo/SettingsCacheBehavior;->asBinder:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 215
    new-instance p1, Lo/toAppJson;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lo/toAppJson;-><init>(B)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 219
    :cond_0
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;

    invoke-direct {p1}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;-><init>()V

    throw p1

    .line 222
    :cond_1
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lo/buildSessionDataFrom;->onMessageChannelReady:Ljava/util/List;

    return-object v0

    .line 209
    :cond_2
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;

    invoke-direct {p1}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;-><init>()V

    throw p1

    .line 206
    :cond_3
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;

    invoke-direct {p1}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;-><init>()V

    throw p1

    :cond_4
    return-object v0
.end method

.method public final onNavigationEvent()Lo/getExpiresAtFrom$ICustomTabsCallback;
    .locals 1

    .line 238
    sget-object v0, Lo/getExpiresAtFrom$ICustomTabsCallback;->extraCallback:Lo/getExpiresAtFrom$ICustomTabsCallback;

    return-object v0
.end method

.method public final onNavigationEvent(Lo/getSettings;Lo/getStoredBuildInstanceIdentifier;)Lo/getExpiresAtFrom$onMessageChannelReady;
    .locals 2

    :try_start_0
    const-string v0, "Sec-WebSocket-Origin"

    .line 117
    invoke-interface {p2, v0}, Lo/getStoredBuildInstanceIdentifier;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Origin"

    invoke-interface {p1, v1}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lo/SettingsCacheBehavior;->extraCallback(Lo/getAppSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-interface {p2}, Lo/getStoredBuildInstanceIdentifier;->ICustomTabsCallback()[B

    move-result-object p2

    if-eqz p2, :cond_2

    .line 121
    array-length v0, p2

    if-eqz v0, :cond_2

    const-string v0, "Sec-WebSocket-Key1"

    .line 124
    invoke-interface {p1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key2"

    invoke-interface {p1, v1}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lo/getSettings;->ICustomTabsCallback()[B

    move-result-object p1

    invoke-static {v0, v1, p1}, Lo/SettingsCacheBehavior;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onPostMessage:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1

    .line 127
    :cond_1
    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onNavigationEvent:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1

    .line 122
    :cond_2
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;

    invoke-direct {p1}, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;-><init>()V

    throw p1

    .line 118
    :cond_3
    :goto_0
    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onNavigationEvent:Lo/getExpiresAtFrom$onMessageChannelReady;
    :try_end_0
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 130
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "bad handshakerequest"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final onPostMessage(Lo/getSettings;Lo/getStoredBuildInstanceIdentifier;)Lo/getAppSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    const-string v0, "WebSocket Protocol Handshake"

    .line 161
    invoke-interface {p2, v0}, Lo/getStoredBuildInstanceIdentifier;->extraCallback(Ljava/lang/String;)V

    const-string v0, "Upgrade"

    const-string v1, "WebSocket"

    .line 162
    invoke-interface {p2, v0, v1}, Lo/getStoredBuildInstanceIdentifier;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    .line 163
    invoke-interface {p1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lo/getStoredBuildInstanceIdentifier;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Origin"

    .line 164
    invoke-interface {p1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Origin"

    invoke-interface {p2, v1, v0}, Lo/getStoredBuildInstanceIdentifier;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ws://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Host"

    invoke-interface {p1, v1}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/getSettings;->extraCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Location"

    .line 166
    invoke-interface {p2, v1, v0}, Lo/getStoredBuildInstanceIdentifier;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sec-WebSocket-Key1"

    .line 167
    invoke-interface {p1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key2"

    .line 168
    invoke-interface {p1, v1}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-interface {p1}, Lo/getSettings;->ICustomTabsCallback()[B

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 170
    array-length v2, p1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 173
    invoke-static {v0, v1, p1}, Lo/SettingsCacheBehavior;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    invoke-interface {p2, p1}, Lo/getStoredBuildInstanceIdentifier;->onMessageChannelReady([B)V

    return-object p2

    .line 171
    :cond_0
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;

    const-string p2, "Bad keys"

    invoke-direct {p1, p2}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/getSettings;)Lo/getSettings;
    .locals 3

    const-string v0, "Upgrade"

    const-string v1, "WebSocket"

    .line 143
    invoke-interface {p1, v0, v1}, Lo/getSettings;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    .line 144
    invoke-interface {p1, v1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lo/SettingsCacheBehavior;->extraCallback()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key1"

    invoke-interface {p1, v1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lo/SettingsCacheBehavior;->extraCallback()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key2"

    invoke-interface {p1, v1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Origin"

    .line 148
    invoke-interface {p1, v0}, Lo/getSettings;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "random"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/SettingsCacheBehavior;->asInterface:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/getSettings;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 153
    iget-object v1, p0, Lo/SettingsCacheBehavior;->asInterface:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 154
    invoke-interface {p1, v0}, Lo/getSettings;->onMessageChannelReady([B)V

    return-object p1
.end method
