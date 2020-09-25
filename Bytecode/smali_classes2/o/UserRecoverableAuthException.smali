.class final Lo/UserRecoverableAuthException;
.super Lo/GoogleSignInOptions;
.source ""


# instance fields
.field private ICustomTabsCallback$Stub:I

.field private asBinder:I

.field private asInterface:I

.field private final extraCallback:Z

.field private final onMessageChannelReady:[B

.field private onRelationshipValidationResult:I

.field private onTransact:I

.field private warmup:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lo/GoogleSignInOptions;-><init>(Lo/SignInHubActivity;)V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lo/UserRecoverableAuthException;->warmup:I

    .line 3
    iput-object p1, p0, Lo/UserRecoverableAuthException;->onMessageChannelReady:[B

    add-int/2addr p3, p2

    .line 4
    iput p3, p0, Lo/UserRecoverableAuthException;->asInterface:I

    .line 5
    iput p2, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    .line 6
    iput p2, p0, Lo/UserRecoverableAuthException;->asBinder:I

    .line 7
    iput-boolean p4, p0, Lo/UserRecoverableAuthException;->extraCallback:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLo/SignInHubActivity;)V
    .locals 0

    const/4 p2, 0x0

    .line 206
    invoke-direct {p0, p1, p2, p3, p2}, Lo/UserRecoverableAuthException;-><init>([BIIZ)V

    return-void
.end method

.method private final ICustomTabsService$Stub()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget v0, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    .line 171
    iget v1, p0, Lo/UserRecoverableAuthException;->asInterface:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 173
    iget-object v1, p0, Lo/UserRecoverableAuthException;->onMessageChannelReady:[B

    add-int/lit8 v3, v0, 0x8

    .line 174
    iput v3, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    .line 175
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 172
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->onPostMessage()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    throw v0
.end method

.method private final ICustomTabsService$Stub$Proxy()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget v0, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    .line 165
    iget v1, p0, Lo/UserRecoverableAuthException;->asInterface:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 167
    iget-object v1, p0, Lo/UserRecoverableAuthException;->onMessageChannelReady:[B

    add-int/lit8 v2, v0, 0x4

    .line 168
    iput v2, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    .line 169
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 166
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->onPostMessage()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    throw v0
.end method

.method private final IPostMessageService()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget v0, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    .line 109
    iget v1, p0, Lo/UserRecoverableAuthException;->asInterface:I

    if-eq v1, v0, :cond_6

    .line 110
    iget-object v2, p0, Lo/UserRecoverableAuthException;->onMessageChannelReady:[B

    add-int/lit8 v3, v0, 0x1

    .line 111
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 112
    iput v3, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    return v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6

    add-int/lit8 v1, v3, 0x1

    .line 115
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 117
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 119
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 121
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    .line 124
    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6

    .line 125
    :cond_5
    :goto_0
    iput v1, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    return v0

    .line 127
    :cond_6
    invoke-virtual {p0}, Lo/GoogleSignInOptions;->extraCommand()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method private final IPostMessageService$Stub()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget v0, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    .line 129
    iget v1, p0, Lo/UserRecoverableAuthException;->asInterface:I

    if-eq v1, v0, :cond_9

    .line 130
    iget-object v2, p0, Lo/UserRecoverableAuthException;->onMessageChannelReady:[B

    add-int/lit8 v3, v0, 0x1

    .line 131
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 132
    iput v3, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_9

    add-int/lit8 v1, v3, 0x1

    .line 135
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v2, v0

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 137
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 139
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_3
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    .line 141
    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    const-wide/32 v1, 0xfe03f80

    :goto_1
    xor-long v2, v3, v1

    move v1, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v0, 0x1

    .line 143
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    const-wide v5, -0x7f01fc080L

    :goto_2
    xor-long v2, v3, v5

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v1, 0x1

    .line 145
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v0, 0x1

    .line 147
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v1, 0x1

    .line 149
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    .line 152
    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    goto :goto_3

    :cond_8
    move v1, v0

    :goto_3
    move-wide v2, v3

    .line 153
    :goto_4
    iput v1, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    return-wide v2

    .line 155
    :cond_9
    invoke-virtual {p0}, Lo/GoogleSignInOptions;->extraCommand()J

    move-result-wide v0

    return-wide v0
.end method

.method private final IPostMessageService$Stub$Proxy()V
    .locals 3

    .line 185
    iget v0, p0, Lo/UserRecoverableAuthException;->asInterface:I

    iget v1, p0, Lo/UserRecoverableAuthException;->onTransact:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/UserRecoverableAuthException;->asInterface:I

    .line 186
    iget v1, p0, Lo/UserRecoverableAuthException;->asBinder:I

    sub-int v1, v0, v1

    .line 187
    iget v2, p0, Lo/UserRecoverableAuthException;->warmup:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 188
    iput v1, p0, Lo/UserRecoverableAuthException;->onTransact:I

    sub-int/2addr v0, v1

    .line 189
    iput v0, p0, Lo/UserRecoverableAuthException;->asInterface:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lo/UserRecoverableAuthException;->onTransact:I

    return-void
.end method

.method private final asBinder(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 200
    iget v0, p0, Lo/UserRecoverableAuthException;->asInterface:I

    iget v1, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr v1, p1

    .line 201
    iput v1, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 204
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->ICustomTabsCallback()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p1

    throw p1

    .line 205
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->onPostMessage()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p1

    throw p1
.end method

.method private final cancel()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget v0, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    iget v1, p0, Lo/UserRecoverableAuthException;->asInterface:I

    if-eq v0, v1, :cond_0

    .line 199
    iget-object v1, p0, Lo/UserRecoverableAuthException;->onMessageChannelReady:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    aget-byte v0, v1, v0

    return v0

    .line 198
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->onPostMessage()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->ICustomTabsService$Stub()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->IPostMessageService$Stub()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->IPostMessageService()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    iget v1, p0, Lo/UserRecoverableAuthException;->asInterface:I

    iget v2, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Lo/UserRecoverableAuthException;->onMessageChannelReady:[B

    invoke-static {v1, v2, v0}, Lo/SafeParcelable;->extraCallback([BII)Ljava/lang/String;

    move-result-object v1

    .line 77
    iget v2, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    .line 82
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->ICustomTabsCallback()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    throw v0

    .line 83
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->onPostMessage()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    throw v0
.end method

.method public final ICustomTabsService()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->IPostMessageService()I

    move-result v0

    return v0
.end method

.method public final asBinder()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->ICustomTabsService$Stub()J

    move-result-wide v0

    return-wide v0
.end method

.method public final asInterface()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->IPostMessageService()I

    move-result v0

    return v0
.end method

.method public final extraCallback()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final extraCallback(I)V
    .locals 0

    .line 192
    iput p1, p0, Lo/UserRecoverableAuthException;->warmup:I

    .line 193
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->IPostMessageService$Stub$Proxy()V

    return-void
.end method

.method final extraCommand()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 158
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->cancel()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 163
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->onMessageChannelReady()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    throw v0
.end method

.method public final getInterfaceDescriptor()Lo/getMobileAdsSettingsManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->IPostMessageService()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    iget v1, p0, Lo/UserRecoverableAuthException;->asInterface:I

    iget v2, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 86
    iget-object v1, p0, Lo/UserRecoverableAuthException;->onMessageChannelReady:[B

    invoke-static {v1, v2, v0}, Lo/getMobileAdsSettingsManager;->ICustomTabsCallback([BII)Lo/getMobileAdsSettingsManager;

    move-result-object v1

    .line 87
    iget v2, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 90
    sget-object v0, Lo/getMobileAdsSettingsManager;->onNavigationEvent:Lo/getMobileAdsSettingsManager;

    return-object v0

    :cond_1
    if-lez v0, :cond_2

    .line 92
    iget v1, p0, Lo/UserRecoverableAuthException;->asInterface:I

    iget v2, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    add-int/2addr v0, v2

    .line 94
    iput v0, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    .line 95
    iget-object v1, p0, Lo/UserRecoverableAuthException;->onMessageChannelReady:[B

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    if-gtz v0, :cond_4

    if-nez v0, :cond_3

    .line 98
    sget-object v0, Lo/cancelAvailabilityErrorNotifications;->extraCallback:[B

    .line 101
    :goto_0
    invoke-static {v0}, Lo/getMobileAdsSettingsManager;->ICustomTabsCallback([B)Lo/getMobileAdsSettingsManager;

    move-result-object v0

    return-object v0

    .line 99
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->ICustomTabsCallback()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    throw v0

    .line 100
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->onPostMessage()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    throw v0
.end method

.method public final mayLaunchUrl()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget v0, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    iget v1, p0, Lo/UserRecoverableAuthException;->asInterface:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final newSession()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->IPostMessageService$Stub()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onMessageChannelReady(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 53
    invoke-direct {p0, v3}, Lo/UserRecoverableAuthException;->asBinder(I)V

    return v2

    .line 55
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->asBinder()Lcom/google/android/gms/internal/vision/zzim;

    move-result-object p1

    throw p1

    :cond_1
    return v1

    .line 43
    :cond_2
    invoke-virtual {p0}, Lo/GoogleSignInOptions;->onPostMessage()I

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p0, v0}, Lo/GoogleSignInOptions;->onMessageChannelReady(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    .line 50
    invoke-virtual {p0, p1}, Lo/GoogleSignInOptions;->onNavigationEvent(I)V

    return v2

    .line 40
    :cond_4
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->IPostMessageService()I

    move-result p1

    invoke-direct {p0, p1}, Lo/UserRecoverableAuthException;->asBinder(I)V

    return v2

    :cond_5
    const/16 p1, 0x8

    .line 38
    invoke-direct {p0, p1}, Lo/UserRecoverableAuthException;->asBinder(I)V

    return v2

    .line 25
    :cond_6
    iget p1, p0, Lo/UserRecoverableAuthException;->asInterface:I

    iget v0, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_8

    :goto_0
    if-ge v1, v0, :cond_7

    .line 28
    iget-object p1, p0, Lo/UserRecoverableAuthException;->onMessageChannelReady:[B

    iget v3, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    aget-byte p1, p1, v3

    if-gez p1, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->onMessageChannelReady()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p1

    throw p1

    :cond_8
    :goto_1
    if-ge v1, v0, :cond_a

    .line 34
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->cancel()B

    move-result p1

    if-gez p1, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    return v2

    .line 36
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->onMessageChannelReady()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p1

    throw p1
.end method

.method public final onNavigationEvent()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->IPostMessageService$Stub()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onNavigationEvent(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzin;
        }
    .end annotation

    .line 18
    iget v0, p0, Lo/UserRecoverableAuthException;->ICustomTabsCallback$Stub:I

    if-ne v0, p1, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->extraCallback()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p1

    throw p1
.end method

.method public final onPostMessage()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lo/GoogleSignInOptions;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lo/UserRecoverableAuthException;->ICustomTabsCallback$Stub:I

    return v0

    .line 12
    :cond_0
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->IPostMessageService()I

    move-result v0

    iput v0, p0, Lo/UserRecoverableAuthException;->ICustomTabsCallback$Stub:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    return v0

    .line 16
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->onNavigationEvent()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    throw v0
.end method

.method public final onPostMessage(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzin;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 178
    invoke-virtual {p0}, Lo/GoogleSignInOptions;->validateRelationship()I

    move-result v0

    add-int/2addr p1, v0

    .line 179
    iget v0, p0, Lo/UserRecoverableAuthException;->warmup:I

    if-gt p1, v0, :cond_0

    .line 182
    iput p1, p0, Lo/UserRecoverableAuthException;->warmup:I

    .line 183
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->IPostMessageService$Stub$Proxy()V

    return v0

    .line 181
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->onPostMessage()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p1

    throw p1

    .line 177
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->ICustomTabsCallback()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p1

    throw p1
.end method

.method public final onRelationshipValidationResult()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->IPostMessageService()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    iget v1, p0, Lo/UserRecoverableAuthException;->asInterface:I

    iget v2, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lo/UserRecoverableAuthException;->onMessageChannelReady:[B

    iget v3, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    sget-object v4, Lo/cancelAvailabilityErrorNotifications;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 67
    iget v2, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    .line 72
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->ICustomTabsCallback()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    throw v0

    .line 73
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->onPostMessage()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    throw v0
.end method

.method public final onTransact()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    return v0
.end method

.method public final postMessage()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->IPostMessageService()I

    move-result v0

    invoke-static {v0}, Lo/UserRecoverableAuthException;->ICustomTabsCallback(I)I

    move-result v0

    return v0
.end method

.method public final requestPostMessageChannel()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->ICustomTabsService$Stub()J

    move-result-wide v0

    return-wide v0
.end method

.method public final updateVisuals()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->IPostMessageService$Stub()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo/UserRecoverableAuthException;->onNavigationEvent(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final validateRelationship()I
    .locals 2

    .line 196
    iget v0, p0, Lo/UserRecoverableAuthException;->onRelationshipValidationResult:I

    iget v1, p0, Lo/UserRecoverableAuthException;->asBinder:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final warmup()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lo/UserRecoverableAuthException;->IPostMessageService()I

    move-result v0

    return v0
.end method
