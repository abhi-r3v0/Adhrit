.class final Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;
.super Lcom/google/android/gms/internal/firebase_auth/zzhq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzhq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private onMessageChannelReady:I

.field private final onNavigationEvent:I

.field private final onPostMessage:[B


# direct methods
.method constructor <init>([BII)V
    .locals 2

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;-><init>(Lo/setLanguage;)V

    if-eqz p1, :cond_1

    or-int/lit8 p2, p3, 0x0

    .line 4
    array-length v0, p1

    add-int/lit8 v1, p3, 0x0

    sub-int/2addr v0, v1

    or-int/2addr p2, v0

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    .line 11
    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onNavigationEvent:I

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    array-length p1, p1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 7
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final onNavigationEvent([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 151
    new-instance p2, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onNavigationEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final ICustomTabsCallback(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(II)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onMessageChannelReady(I)V

    return-void
.end method

.method public final ICustomTabsCallback(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onMessageChannelReady()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, v2, p1}, Lo/getPhoneCountry;->onMessageChannelReady([BJB)V

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v6, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lo/getPhoneCountry;->onMessageChannelReady([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    return-void

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v6, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 133
    new-instance p2, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onNavigationEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    .line 156
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 157
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onRelationshipValidationResult(I)I

    move-result v1

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onRelationshipValidationResult(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    .line 160
    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    .line 161
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lo/User;->extraCallback(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 162
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 164
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(I)V

    .line 165
    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    return-void

    .line 167
    :cond_0
    invoke-static {p1}, Lo/User;->extraCallback(Ljava/lang/CharSequence;)I

    move-result v1

    .line 168
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(I)V

    .line 169
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lo/User;->extraCallback(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I
    :try_end_0
    .catch Lo/getLocale; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 176
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    .line 172
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    .line 173
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(Ljava/lang/String;Lo/getLocale;)V

    return-void
.end method

.method public final ICustomTabsCallback([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onNavigationEvent([BII)V

    return-void
.end method

.method public final extraCallback(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    invoke-static {}, Lo/Csat$CSatStatus;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_4

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lo/getPhoneCountry;->onMessageChannelReady([BJB)V

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lo/getPhoneCountry;->onMessageChannelReady([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lo/getPhoneCountry;->onMessageChannelReady([BJB)V

    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lo/getPhoneCountry;->onMessageChannelReady([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lo/getPhoneCountry;->onMessageChannelReady([BJB)V

    return-void

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lo/getPhoneCountry;->onMessageChannelReady([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lo/getPhoneCountry;->onMessageChannelReady([BJB)V

    return-void

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lo/getPhoneCountry;->onMessageChannelReady([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lo/getPhoneCountry;->onMessageChannelReady([BJB)V

    return-void

    :cond_4
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_5

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onNavigationEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final extraCallback(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(II)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(I)V

    return-void
.end method

.method public final extraCallback(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(II)V

    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onNavigationEvent(J)V

    return-void
.end method

.method public final extraCallback(ILo/access$502;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 57
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(II)V

    const/4 v2, 0x2

    .line 58
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(II)V

    .line 60
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(II)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(Lo/access$502;)V

    const/4 p1, 0x4

    .line 62
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(II)V

    return-void
.end method

.method public final extraCallback(Lo/access$502;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-interface {p1}, Lo/access$502;->onMessageChannelReady()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(I)V

    .line 70
    invoke-interface {p1, p0}, Lo/access$502;->onNavigationEvent(Lcom/google/android/gms/internal/firebase_auth/zzhq;)V

    return-void
.end method

.method public final onMessageChannelReady(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 75
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onNavigationEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onMessageChannelReady(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(J)V

    return-void
.end method

.method public final onMessageChannelReady(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(II)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onNavigationEvent(I)V

    return-void
.end method

.method public final onMessageChannelReady(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(II)V

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(J)V

    return-void
.end method

.method public final onMessageChannelReady(ILo/setMandatory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 64
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(II)V

    const/4 v2, 0x2

    .line 65
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(II)V

    .line 66
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(ILo/setMandatory;)V

    const/4 p1, 0x4

    .line 67
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(II)V

    return-void
.end method

.method public final onMessageChannelReady(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(II)V

    int-to-byte p1, p2

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onMessageChannelReady(B)V

    return-void
.end method

.method public final onMessageChannelReady([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(I)V

    const/4 p2, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onNavigationEvent([BII)V

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 119
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onNavigationEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onNavigationEvent(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onPostMessage:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 145
    new-instance p2, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onNavigationEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final onNavigationEvent(Lo/setMandatory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lo/setMandatory;->onPostMessage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(I)V

    .line 42
    invoke-virtual {p1, p0}, Lo/setMandatory;->extraCallback(Lo/CsatResponse;)V

    return-void
.end method

.method public final onPostMessage()I
    .locals 2

    .line 177
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onNavigationEvent:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->onMessageChannelReady:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final onPostMessage(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(I)V

    return-void
.end method

.method public final onPostMessage(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(II)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method final onPostMessage(ILo/access$502;Lo/setReplacementStr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(II)V

    .line 48
    move-object p1, p2

    check-cast p1, Lo/Csat;

    .line 49
    invoke-virtual {p1}, Lo/Csat;->onPostMessage()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 51
    invoke-interface {p3, p1}, Lo/setReplacementStr;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v0

    .line 52
    invoke-virtual {p1, v0}, Lo/Csat;->onNavigationEvent(I)V

    .line 54
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(I)V

    .line 55
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;->extraCallback:Lo/setScript;

    invoke-interface {p3, p2, p1}, Lo/setReplacementStr;->onNavigationEvent(Ljava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V

    return-void
.end method

.method public final onPostMessage(ILo/setMandatory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(II)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onNavigationEvent(Lo/setMandatory;)V

    return-void
.end method
