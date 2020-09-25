.class public final Lo/getPredecessorKey;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPredecessorKey$onTransact;,
        Lo/getPredecessorKey$ICustomTabsCallback$Stub;,
        Lo/getPredecessorKey$onPostMessage;,
        Lo/getPredecessorKey$onMessageChannelReady;,
        Lo/getPredecessorKey$ICustomTabsCallback;,
        Lo/getPredecessorKey$extraCallback;,
        Lo/getPredecessorKey$onNavigationEvent;
    }
.end annotation


# static fields
.field private static synthetic ICustomTabsCallback:Z

.field static final onMessageChannelReady:Lcom/google/common/io/BaseEncoding;

.field public static final onNavigationEvent:Lo/getPredecessorKey$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$onNavigationEvent<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field extraCallback:[Ljava/lang/Object;

.field onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lo/getPredecessorKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/getPredecessorKey;->ICustomTabsCallback:Z

    .line 97
    new-instance v0, Lo/getPredecessorKey$4;

    invoke-direct {v0}, Lo/getPredecessorKey$4;-><init>()V

    sput-object v0, Lo/getPredecessorKey;->onNavigationEvent:Lo/getPredecessorKey$onNavigationEvent;

    .line 111
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->onNavigationEvent()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->ICustomTabsCallback()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    sput-object v0, Lo/getPredecessorKey;->onMessageChannelReady:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(I[Ljava/lang/Object;)V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget-boolean v0, Lo/getPredecessorKey;->ICustomTabsCallback:Z

    if-nez v0, :cond_1

    array-length v0, p2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Odd number of key-value pairs "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 143
    :cond_1
    :goto_0
    iput p1, p0, Lo/getPredecessorKey;->onPostMessage:I

    .line 144
    iput-object p2, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    return-void
.end method

.method private varargs constructor <init>(I[[B)V
    .locals 0

    .line 128
    check-cast p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lo/getPredecessorKey;-><init>(I[Ljava/lang/Object;)V

    return-void
.end method

.method varargs constructor <init>([[B)V
    .locals 1

    .line 118
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0, p1}, Lo/getPredecessorKey;-><init>(I[[B)V

    return-void
.end method

.method private ICustomTabsCallback(I)[B
    .locals 1

    .line 1160
    iget-object v0, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    .line 177
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 178
    check-cast p1, [B

    return-object p1

    .line 180
    :cond_0
    check-cast p1, Lo/getPredecessorKey$onMessageChannelReady;

    invoke-virtual {p1}, Lo/getPredecessorKey$onMessageChannelReady;->onNavigationEvent()[B

    move-result-object p1

    return-object p1
.end method

.method private static ICustomTabsCallback(Ljava/io/InputStream;)[B
    .locals 2

    .line 1031
    :try_start_0
    invoke-static {p0}, Lo/getReport;->onNavigationEvent(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1033
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failure reading serialized stream"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic onNavigationEvent(Ljava/io/InputStream;)[B
    .locals 0

    .line 56
    invoke-static {p0}, Lo/getPredecessorKey;->ICustomTabsCallback(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private onPostMessage()V
    .locals 5

    .line 9208
    iget v0, p0, Lo/getPredecessorKey;->onPostMessage:I

    shl-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    shl-int/2addr v0, v3

    .line 11203
    iget-object v1, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v0, v1, :cond_4

    .line 11208
    :cond_1
    iget v0, p0, Lo/getPredecessorKey;->onPostMessage:I

    shl-int/2addr v0, v3

    shl-int/2addr v0, v3

    const/16 v1, 0x8

    .line 354
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 11360
    new-array v0, v0, [Ljava/lang/Object;

    .line 12213
    iget v1, p0, Lo/getPredecessorKey;->onPostMessage:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 11362
    iget-object v1, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    .line 13208
    iget v4, p0, Lo/getPredecessorKey;->onPostMessage:I

    shl-int/lit8 v3, v4, 0x1

    .line 11362
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11364
    :cond_3
    iput-object v0, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private onPostMessage(I)V
    .locals 4

    .line 360
    new-array p1, p1, [Ljava/lang/Object;

    .line 13213
    iget v0, p0, Lo/getPredecessorKey;->onPostMessage:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    .line 14208
    iget v3, p0, Lo/getPredecessorKey;->onPostMessage:I

    shl-int/lit8 v1, v3, 0x1

    .line 362
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    :cond_1
    iput-object p1, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5213
    iget v0, p0, Lo/getPredecessorKey;->onPostMessage:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 323
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 325
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget v2, p0, Lo/getPredecessorKey;->onPostMessage:I

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v2, 0x0

    .line 326
    :goto_1
    iget v3, p0, Lo/getPredecessorKey;->onPostMessage:I

    if-ge v2, v3, :cond_2

    .line 327
    new-instance v3, Ljava/lang/String;

    .line 6152
    iget-object v4, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    check-cast v4, [B

    .line 327
    invoke-direct {v3, v4, v1}, Ljava/lang/String;-><init>([BI)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 330
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Lo/getPredecessorKey$ICustomTabsCallback;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 246
    iget v0, p0, Lo/getPredecessorKey;->onPostMessage:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1779
    iget-object v1, p1, Lo/getPredecessorKey$ICustomTabsCallback;->extraCallback:[B

    .line 2152
    iget-object v2, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    check-cast v2, [B

    .line 2561
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4160
    iget-object v0, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    aget-object v0, v0, v3

    .line 3195
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 3196
    check-cast v0, [B

    invoke-virtual {p1, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->onNavigationEvent([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3198
    :cond_0
    check-cast v0, Lo/getPredecessorKey$onMessageChannelReady;

    .line 4944
    invoke-virtual {v0}, Lo/getPredecessorKey$onMessageChannelReady;->onNavigationEvent()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->onNavigationEvent([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onNavigationEvent(Lo/getPredecessorKey;)V
    .locals 6

    .line 16213
    iget v0, p1, Lo/getPredecessorKey;->onPostMessage:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 17203
    :cond_1
    iget-object v0, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    array-length v0, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 17208
    :goto_1
    iget v3, p0, Lo/getPredecessorKey;->onPostMessage:I

    shl-int/lit8 v4, v3, 0x1

    sub-int/2addr v0, v4

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_4

    .line 18208
    iget v3, p1, Lo/getPredecessorKey;->onPostMessage:I

    shl-int/2addr v3, v2

    if-ge v0, v3, :cond_5

    .line 19208
    :cond_4
    iget v0, p0, Lo/getPredecessorKey;->onPostMessage:I

    shl-int/2addr v0, v2

    .line 20208
    iget v3, p1, Lo/getPredecessorKey;->onPostMessage:I

    shl-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 510
    invoke-direct {p0, v0}, Lo/getPredecessorKey;->onPostMessage(I)V

    .line 512
    :cond_5
    iget-object v0, p1, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    iget-object v3, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    .line 21208
    iget v4, p0, Lo/getPredecessorKey;->onPostMessage:I

    shl-int/2addr v4, v2

    .line 22208
    iget v5, p1, Lo/getPredecessorKey;->onPostMessage:I

    shl-int/lit8 v2, v5, 0x1

    .line 512
    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    iget v0, p0, Lo/getPredecessorKey;->onPostMessage:I

    iget p1, p1, Lo/getPredecessorKey;->onPostMessage:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/getPredecessorKey;->onPostMessage:I

    return-void
.end method

.method public final onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 14213
    iget v0, p0, Lo/getPredecessorKey;->onPostMessage:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 434
    :goto_1
    iget v4, p0, Lo/getPredecessorKey;->onPostMessage:I

    if-ge v0, v4, :cond_5

    .line 14779
    iget-object v4, p1, Lo/getPredecessorKey$ICustomTabsCallback;->extraCallback:[B

    .line 15152
    iget-object v5, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    check-cast v5, [B

    .line 15561
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4

    .line 16152
    iget-object v4, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    aget-object v5, v4, v6

    check-cast v5, [B

    shl-int/lit8 v7, v3, 0x1

    .line 16156
    aput-object v5, v4, v7

    add-int/lit8 v6, v6, 0x1

    .line 16160
    aget-object v5, v4, v6

    .line 16168
    instance-of v6, v4, [[B

    if-eqz v6, :cond_3

    if-eqz v4, :cond_2

    .line 16203
    array-length v4, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 16170
    :goto_2
    invoke-direct {p0, v4}, Lo/getPredecessorKey;->onPostMessage(I)V

    .line 16172
    :cond_3
    iget-object v4, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    aput-object v5, v4, v7

    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 444
    :cond_5
    iget-object p1, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    shl-int/lit8 v1, v4, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 445
    iput v3, p0, Lo/getPredecessorKey;->onPostMessage:I

    return-void
.end method

.method public final onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 342
    invoke-direct {p0}, Lo/getPredecessorKey;->onPostMessage()V

    .line 343
    iget v0, p0, Lo/getPredecessorKey;->onPostMessage:I

    .line 8779
    iget-object v1, p1, Lo/getPredecessorKey$ICustomTabsCallback;->extraCallback:[B

    .line 9156
    iget-object v2, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    aput-object v1, v2, v0

    .line 347
    iget v0, p0, Lo/getPredecessorKey;->onPostMessage:I

    invoke-virtual {p1, p2}, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/Object;)[B

    move-result-object p1

    .line 9164
    iget-object p2, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aput-object p1, p2, v0

    .line 349
    iget p1, p0, Lo/getPredecessorKey;->onPostMessage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/getPredecessorKey;->onPostMessage:I

    return-void

    .line 7910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metadata("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 544
    :goto_0
    iget v2, p0, Lo/getPredecessorKey;->onPostMessage:I

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_0

    const/16 v2, 0x2c

    .line 546
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 23152
    iget-object v3, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    check-cast v3, [B

    .line 548
    sget-object v4, Lo/performAutoConfigure;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 549
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "-bin"

    .line 550
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    sget-object v2, Lo/getPredecessorKey;->onMessageChannelReady:Lcom/google/common/io/BaseEncoding;

    invoke-direct {p0, v1}, Lo/getPredecessorKey;->ICustomTabsCallback(I)[B

    move-result-object v3

    .line 24148
    array-length v4, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/BaseEncoding;->onMessageChannelReady([BI)Ljava/lang/String;

    move-result-object v2

    .line 551
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 553
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, v1}, Lo/getPredecessorKey;->ICustomTabsCallback(I)[B

    move-result-object v3

    sget-object v4, Lo/performAutoConfigure;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 554
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x29

    .line 557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
