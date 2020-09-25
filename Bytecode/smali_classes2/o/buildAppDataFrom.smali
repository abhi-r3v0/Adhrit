.class public Lo/buildAppDataFrom;
.super Lo/getExpiresAtFrom;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/buildAppDataFrom$onPostMessage;
    }
.end annotation


# static fields
.field private static synthetic onTransact:Z


# instance fields
.field private final onMessageChannelReady:Ljava/util/Random;

.field private onNavigationEvent:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lo/buildAppDataFrom;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/buildAppDataFrom;->onTransact:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lo/getExpiresAtFrom;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lo/buildAppDataFrom;->onMessageChannelReady:Ljava/util/Random;

    return-void
.end method

.method private static onMessageChannelReady(JI)[B
    .locals 5

    .line 216
    new-array v0, p2, [B

    shl-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, -0x8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    shl-int/lit8 v3, v2, 0x3

    sub-int v3, v1, v3

    ushr-long v3, p0, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 219
    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static onNavigationEvent(Lo/getAppSettings;)I
    .locals 2

    const-string v0, "Sec-WebSocket-Version"

    .line 53
    invoke-interface {p0, v0}, Lo/getAppSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_0

    .line 57
    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method private static onPostMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "SHA1"

    .line 183
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lo/SettingsController$1;->extraCallback([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private onPostMessage(Ljava/nio/ByteBuffer;)Lo/toFeaturesJson;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lo/buildAppDataFrom$onPostMessage;,
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 303
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_16

    .line 307
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    shr-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v6, v2, 0x7f

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    int-to-byte v6, v6

    if-nez v6, :cond_15

    .line 312
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit8 v8, v6, -0x80

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v1, :cond_2

    packed-switch v2, :pswitch_data_0

    .line 3241
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknow optcode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-short v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3238
    :pswitch_0
    sget-object v2, Lo/toFeaturesJson$onMessageChannelReady;->onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

    goto :goto_2

    .line 3236
    :pswitch_1
    sget-object v2, Lo/toFeaturesJson$onMessageChannelReady;->ICustomTabsCallback:Lo/toFeaturesJson$onMessageChannelReady;

    goto :goto_2

    .line 3234
    :pswitch_2
    sget-object v2, Lo/toFeaturesJson$onMessageChannelReady;->onRelationshipValidationResult:Lo/toFeaturesJson$onMessageChannelReady;

    goto :goto_2

    .line 3231
    :cond_2
    sget-object v2, Lo/toFeaturesJson$onMessageChannelReady;->onPostMessage:Lo/toFeaturesJson$onMessageChannelReady;

    goto :goto_2

    .line 3229
    :cond_3
    sget-object v2, Lo/toFeaturesJson$onMessageChannelReady;->extraCallback:Lo/toFeaturesJson$onMessageChannelReady;

    goto :goto_2

    .line 3227
    :cond_4
    sget-object v2, Lo/toFeaturesJson$onMessageChannelReady;->onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

    :goto_2
    if-nez v3, :cond_6

    .line 318
    sget-object v9, Lo/toFeaturesJson$onMessageChannelReady;->ICustomTabsCallback:Lo/toFeaturesJson$onMessageChannelReady;

    if-eq v2, v9, :cond_5

    sget-object v9, Lo/toFeaturesJson$onMessageChannelReady;->onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

    if-eq v2, v9, :cond_5

    sget-object v9, Lo/toFeaturesJson$onMessageChannelReady;->onRelationshipValidationResult:Lo/toFeaturesJson$onMessageChannelReady;

    if-eq v2, v9, :cond_5

    goto :goto_3

    .line 319
    :cond_5
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;

    const-string v0, "control frames may no be fragmented"

    invoke-direct {p1, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    const/16 v9, 0xa

    if-ltz v6, :cond_7

    const/16 v10, 0x7d

    if-le v6, v10, :cond_b

    .line 325
    :cond_7
    sget-object v10, Lo/toFeaturesJson$onMessageChannelReady;->ICustomTabsCallback:Lo/toFeaturesJson$onMessageChannelReady;

    if-eq v2, v10, :cond_14

    sget-object v10, Lo/toFeaturesJson$onMessageChannelReady;->onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

    if-eq v2, v10, :cond_14

    sget-object v10, Lo/toFeaturesJson$onMessageChannelReady;->onRelationshipValidationResult:Lo/toFeaturesJson$onMessageChannelReady;

    if-eq v2, v10, :cond_14

    const/16 v10, 0x7e

    if-ne v6, v10, :cond_9

    if-lt v0, v7, :cond_8

    const/4 v6, 0x3

    new-array v6, v6, [B

    .line 333
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    aput-byte v9, v6, v5

    .line 334
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput-byte v5, v6, v1

    .line 335
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v6}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/4 v1, 0x4

    goto :goto_5

    .line 331
    :cond_8
    new-instance p1, Lo/buildAppDataFrom$onPostMessage;

    invoke-direct {p1, v7}, Lo/buildAppDataFrom$onPostMessage;-><init>(I)V

    throw p1

    :cond_9
    if-lt v0, v9, :cond_13

    const/16 v1, 0x8

    new-array v5, v1, [B

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v1, :cond_a

    .line 342
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    aput-byte v10, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 344
    :cond_a
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const-wide/32 v10, 0x7fffffff

    cmp-long v1, v5, v10

    if-gtz v1, :cond_12

    long-to-int v6, v5

    const/16 v1, 0xa

    :cond_b
    :goto_5
    if-eqz v8, :cond_c

    const/4 v5, 0x4

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    :goto_6
    add-int/2addr v1, v5

    add-int/2addr v1, v6

    if-lt v0, v1, :cond_11

    if-ltz v6, :cond_10

    .line 361
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v8, :cond_d

    new-array v1, v7, [B

    .line 364
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_7
    if-ge v4, v6, :cond_e

    .line 366
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    rem-int/lit8 v7, v4, 0x4

    aget-byte v7, v1, v7

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 369
    :cond_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 370
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 374
    :cond_e
    sget-object p1, Lo/toFeaturesJson$onMessageChannelReady;->onRelationshipValidationResult:Lo/toFeaturesJson$onMessageChannelReady;

    if-ne v2, p1, :cond_f

    .line 375
    new-instance p1, Lo/toAppJson;

    invoke-direct {p1}, Lo/toAppJson;-><init>()V

    goto :goto_8

    .line 377
    :cond_f
    new-instance p1, Lo/loadSettingsData;

    invoke-direct {p1}, Lo/loadSettingsData;-><init>()V

    .line 378
    invoke-interface {p1, v3}, Lo/toSessionJson;->onPostMessage(Z)V

    .line 379
    invoke-interface {p1, v2}, Lo/toSessionJson;->onNavigationEvent(Lo/toFeaturesJson$onMessageChannelReady;)V

    .line 381
    :goto_8
    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 382
    invoke-interface {p1, v0}, Lo/toSessionJson;->onPostMessage(Ljava/nio/ByteBuffer;)V

    return-object p1

    .line 4216
    :cond_10
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    const/16 v0, 0x3ea

    const-string v1, "Negative count"

    invoke-direct {p1, v0, v1}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 359
    :cond_11
    new-instance p1, Lo/buildAppDataFrom$onPostMessage;

    invoke-direct {p1, v1}, Lo/buildAppDataFrom$onPostMessage;-><init>(I)V

    throw p1

    .line 346
    :cond_12
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/LimitExedeedException;

    const-string v0, "Payloadsize is to big..."

    invoke-direct {p1, v0}, Lcom/mixpanel/android/java_websocket/exceptions/LimitExedeedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 339
    :cond_13
    new-instance p1, Lo/buildAppDataFrom$onPostMessage;

    invoke-direct {p1, v9}, Lo/buildAppDataFrom$onPostMessage;-><init>(I)V

    throw p1

    .line 326
    :cond_14
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;

    const-string v0, "more than 125 octets"

    invoke-direct {p1, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 311
    :cond_15
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bad rsv "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 306
    :cond_16
    new-instance p1, Lo/buildAppDataFrom$onPostMessage;

    invoke-direct {p1, v1}, Lo/buildAppDataFrom$onPostMessage;-><init>(I)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toFeaturesJson;)Ljava/nio/ByteBuffer;
    .locals 13

    .line 96
    invoke-interface {p1}, Lo/toFeaturesJson;->onPostMessage()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lo/getExpiresAtFrom;->onPostMessage:Lo/readCachedSettings$onMessageChannelReady;

    sget-object v2, Lo/readCachedSettings$onMessageChannelReady;->extraCallback:Lo/readCachedSettings$onMessageChannelReady;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 98
    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/16 v5, 0x7d

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-gt v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const v5, 0xffff

    if-gt v2, v5, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    if-le v2, v3, :cond_3

    add-int/lit8 v5, v2, 0x1

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    add-int/2addr v5, v3

    const/4 v8, 0x4

    if-eqz v1, :cond_4

    const/4 v9, 0x4

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    add-int/2addr v5, v9

    .line 99
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v9

    add-int/2addr v5, v9

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 100
    invoke-interface {p1}, Lo/toFeaturesJson;->onTransact()Lo/toFeaturesJson$onMessageChannelReady;

    move-result-object v9

    .line 1163
    sget-object v10, Lo/toFeaturesJson$onMessageChannelReady;->onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

    if-ne v9, v10, :cond_5

    const/4 v9, 0x0

    goto :goto_4

    .line 1165
    :cond_5
    sget-object v10, Lo/toFeaturesJson$onMessageChannelReady;->extraCallback:Lo/toFeaturesJson$onMessageChannelReady;

    if-ne v9, v10, :cond_6

    const/4 v9, 0x1

    goto :goto_4

    .line 1167
    :cond_6
    sget-object v10, Lo/toFeaturesJson$onMessageChannelReady;->onPostMessage:Lo/toFeaturesJson$onMessageChannelReady;

    if-ne v9, v10, :cond_7

    const/4 v9, 0x2

    goto :goto_4

    .line 1169
    :cond_7
    sget-object v10, Lo/toFeaturesJson$onMessageChannelReady;->onRelationshipValidationResult:Lo/toFeaturesJson$onMessageChannelReady;

    if-ne v9, v10, :cond_8

    const/16 v9, 0x8

    goto :goto_4

    .line 1171
    :cond_8
    sget-object v10, Lo/toFeaturesJson$onMessageChannelReady;->ICustomTabsCallback:Lo/toFeaturesJson$onMessageChannelReady;

    if-ne v9, v10, :cond_9

    const/16 v9, 0x9

    goto :goto_4

    .line 1173
    :cond_9
    sget-object v10, Lo/toFeaturesJson$onMessageChannelReady;->onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

    if-ne v9, v10, :cond_17

    const/16 v9, 0xa

    .line 101
    :goto_4
    invoke-interface {p1}, Lo/toFeaturesJson;->onNavigationEvent()Z

    move-result p1

    const/16 v10, -0x80

    if-eqz p1, :cond_a

    const/16 p1, -0x80

    goto :goto_5

    :cond_a
    const/4 p1, 0x0

    :goto_5
    int-to-byte p1, p1

    or-int/2addr p1, v9

    int-to-byte p1, p1

    .line 103
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    int-to-long v11, p1

    invoke-static {v11, v12, v2}, Lo/buildAppDataFrom;->onMessageChannelReady(JI)[B

    move-result-object p1

    .line 105
    sget-boolean v9, Lo/buildAppDataFrom;->onTransact:Z

    if-nez v9, :cond_c

    array-length v9, p1

    if-ne v9, v2, :cond_b

    goto :goto_6

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_6
    if-ne v2, v3, :cond_e

    .line 108
    aget-byte p1, p1, v4

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    const/4 v10, 0x0

    :goto_7
    or-int/2addr p1, v10

    int-to-byte p1, p1

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_a

    :cond_e
    if-ne v2, v6, :cond_10

    if-eqz v1, :cond_f

    goto :goto_8

    :cond_f
    const/4 v10, 0x0

    :goto_8
    or-int/lit8 v2, v10, 0x7e

    int-to-byte v2, v2

    .line 110
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_a

    :cond_10
    if-ne v2, v7, :cond_16

    if-eqz v1, :cond_11

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    :goto_9
    or-int/lit8 v2, v10, 0x7f

    int-to-byte v2, v2

    .line 113
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_a
    if-eqz v1, :cond_12

    .line 119
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 120
    iget-object v1, p0, Lo/buildAppDataFrom;->onMessageChannelReady:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 122
    :goto_b
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 123
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    rem-int/lit8 v2, v4, 0x4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/2addr v4, v3

    goto :goto_b

    .line 126
    :cond_12
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 128
    :cond_13
    sget-boolean p1, Lo/buildAppDataFrom;->onTransact:Z

    if-nez p1, :cond_15

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    if-nez p1, :cond_14

    goto :goto_c

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw p1

    .line 129
    :cond_15
    :goto_c
    invoke-virtual {v5}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-object v5

    .line 116
    :cond_16
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Size representation not supported/specified"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1175
    :cond_17
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Don\'t know how to handle "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ICustomTabsCallback()Lo/getExpiresAtFrom;
    .locals 1

    .line 393
    new-instance v0, Lo/buildAppDataFrom;

    invoke-direct {v0}, Lo/buildAppDataFrom;-><init>()V

    return-object v0
.end method

.method public onMessageChannelReady(Lo/getSettings;)Lo/getExpiresAtFrom$onMessageChannelReady;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 88
    invoke-static {p1}, Lo/buildAppDataFrom;->onNavigationEvent(Lo/getAppSettings;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onNavigationEvent:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1

    .line 90
    :cond_1
    :goto_0
    invoke-static {p1}, Lo/buildAppDataFrom;->extraCallback(Lo/getAppSettings;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onPostMessage:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1

    :cond_2
    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onNavigationEvent:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1
.end method

.method public final onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lo/buildAppDataFrom;->onNavigationEvent:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final onNavigationEvent(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 7
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
            Lcom/mixpanel/android/java_websocket/exceptions/LimitExedeedException;,
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 247
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 250
    iget-object v1, p0, Lo/buildAppDataFrom;->onNavigationEvent:Ljava/nio/ByteBuffer;

    const-string v2, "Negative count"

    const/16 v3, 0x3ea

    if-eqz v1, :cond_4

    .line 254
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 255
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    .line 256
    iget-object v4, p0, Lo/buildAppDataFrom;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 260
    iget-object v0, p0, Lo/buildAppDataFrom;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v0, v4, v5, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 261
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 264
    :cond_0
    iget-object v1, p0, Lo/buildAppDataFrom;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    invoke-virtual {v1, v5, v6, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 265
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 267
    iget-object v1, p0, Lo/buildAppDataFrom;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lo/buildAppDataFrom;->onPostMessage(Ljava/nio/ByteBuffer;)Lo/toFeaturesJson;

    move-result-object v1

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 269
    iput-object v1, p0, Lo/buildAppDataFrom;->onNavigationEvent:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lo/buildAppDataFrom$onPostMessage; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 273
    iget-object v1, p0, Lo/buildAppDataFrom;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 2048
    iget v0, v0, Lo/buildAppDataFrom$onPostMessage;->onPostMessage:I

    if-ltz v0, :cond_3

    .line 274
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 275
    sget-boolean v1, Lo/buildAppDataFrom;->onTransact:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget-object v2, p0, Lo/buildAppDataFrom;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 276
    :cond_2
    :goto_1
    iget-object v1, p0, Lo/buildAppDataFrom;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 277
    iget-object v1, p0, Lo/buildAppDataFrom;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 278
    iput-object v0, p0, Lo/buildAppDataFrom;->onNavigationEvent:Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 2216
    :cond_3
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    invoke-direct {p1, v3, v2}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 285
    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 286
    invoke-virtual {p1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 288
    :try_start_1
    invoke-direct {p0, p1}, Lo/buildAppDataFrom;->onPostMessage(Ljava/nio/ByteBuffer;)Lo/toFeaturesJson;

    move-result-object v1

    .line 289
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lo/buildAppDataFrom$onPostMessage; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 292
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 3048
    iget v1, v1, Lo/buildAppDataFrom$onPostMessage;->onPostMessage:I

    if-ltz v1, :cond_5

    .line 294
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lo/buildAppDataFrom;->onNavigationEvent:Ljava/nio/ByteBuffer;

    .line 295
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 3216
    :cond_5
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    invoke-direct {p1, v3, v2}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method public final onNavigationEvent()Lo/getExpiresAtFrom$ICustomTabsCallback;
    .locals 1

    .line 398
    sget-object v0, Lo/getExpiresAtFrom$ICustomTabsCallback;->onPostMessage:Lo/getExpiresAtFrom$ICustomTabsCallback;

    return-object v0
.end method

.method public final onNavigationEvent(Lo/getSettings;Lo/getStoredBuildInstanceIdentifier;)Lo/getExpiresAtFrom$onMessageChannelReady;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    const-string v0, "Sec-WebSocket-Key"

    .line 73
    invoke-interface {p1, v0}, Lo/getSettings;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Sec-WebSocket-Accept"

    invoke-interface {p2, v1}, Lo/getStoredBuildInstanceIdentifier;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-interface {p2, v1}, Lo/getStoredBuildInstanceIdentifier;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 77
    invoke-interface {p1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-static {p1}, Lo/buildAppDataFrom;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 81
    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onPostMessage:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1

    .line 82
    :cond_1
    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onNavigationEvent:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1

    .line 74
    :cond_2
    :goto_0
    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onNavigationEvent:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1
.end method

.method public final onPostMessage(Lo/getSettings;Lo/getStoredBuildInstanceIdentifier;)Lo/getAppSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    const-string v0, "Upgrade"

    const-string v1, "websocket"

    .line 205
    invoke-interface {p2, v0, v1}, Lo/getStoredBuildInstanceIdentifier;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    .line 206
    invoke-interface {p1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lo/getStoredBuildInstanceIdentifier;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Switching Protocols"

    .line 207
    invoke-interface {p2, v0}, Lo/getStoredBuildInstanceIdentifier;->extraCallback(Ljava/lang/String;)V

    const-string v0, "Sec-WebSocket-Key"

    .line 208
    invoke-interface {p1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    invoke-static {p1}, Lo/buildAppDataFrom;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Sec-WebSocket-Accept"

    invoke-interface {p2, v0, p1}, Lo/getStoredBuildInstanceIdentifier;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 210
    :cond_0
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;

    const-string p2, "missing Sec-WebSocket-Key"

    invoke-direct {p1, p2}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPostMessage(Lo/getSettings;)Lo/getSettings;
    .locals 2

    const-string v0, "Upgrade"

    const-string v1, "websocket"

    .line 192
    invoke-interface {p1, v0, v1}, Lo/getSettings;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    .line 193
    invoke-interface {p1, v1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "8"

    .line 194
    invoke-interface {p1, v0, v1}, Lo/getSettings;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 197
    iget-object v1, p0, Lo/buildAppDataFrom;->onMessageChannelReady:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 198
    invoke-static {v0}, Lo/SettingsController$1;->extraCallback([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key"

    invoke-interface {p1, v1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
