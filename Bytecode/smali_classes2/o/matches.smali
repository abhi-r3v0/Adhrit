.class public Lo/matches;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lo/matches;",
        ">;"
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/matches;

.field private static onNavigationEvent:[C


# instance fields
.field private transient ICustomTabsCallback:Ljava/lang/String;

.field final onMessageChannelReady:[B

.field transient onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 53
    fill-array-data v0, :array_0

    sput-object v0, Lo/matches;->onNavigationEvent:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 4073
    new-instance v1, Lo/matches;

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lo/matches;-><init>([B)V

    .line 58
    sput-object v1, Lo/matches;->extraCallback:Lo/matches;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lo/matches;->onMessageChannelReady:[B

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)Lo/matches;
    .locals 5

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 223
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    shl-int/lit8 v3, v2, 0x1

    .line 225
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lo/matches;->onPostMessage(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    .line 226
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lo/matches;->onPostMessage(C)I

    move-result v3

    add-int/2addr v4, v3

    int-to-byte v3, v4

    .line 227
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2073
    :cond_0
    new-instance p0, Lo/matches;

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, v0}, Lo/matches;-><init>([B)V

    return-object p0

    .line 221
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected hex string: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs ICustomTabsCallback([B)Lo/matches;
    .locals 1

    if-eqz p0, :cond_0

    .line 73
    new-instance v0, Lo/matches;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-direct {v0, p0}, Lo/matches;-><init>([B)V

    return-object v0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extraCallback(Ljava/lang/String;)Lo/matches;
    .locals 1

    if-eqz p0, :cond_1

    .line 203
    invoke-static {p0}, Lo/getChanges;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 204
    new-instance v0, Lo/matches;

    invoke-direct {v0, p0}, Lo/matches;-><init>([B)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 202
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "base64 == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)Lo/matches;
    .locals 2

    if-eqz p0, :cond_0

    .line 100
    new-instance v0, Lo/matches;

    sget-object v1, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lo/matches;-><init>([B)V

    .line 101
    iput-object p0, v0, Lo/matches;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "s == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onPostMessage(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v1, 0x46

    if-gt p0, v1, :cond_2

    goto :goto_0

    .line 236
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected hex digit: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onPostMessage(Ljava/lang/String;)Lo/matches;
    .locals 1

    .line 156
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1073
    new-instance v0, Lo/matches;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lo/matches;-><init>([B)V

    return-object v0

    .line 1072
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 158
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-eqz p1, :cond_3

    if-ltz v0, :cond_2

    .line 3249
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    sub-int v3, v0, v2

    .line 3251
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v2, v3

    goto :goto_0

    .line 3252
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 3254
    :cond_1
    new-instance p1, Lo/matches;

    invoke-direct {p1, v1}, Lo/matches;-><init>([B)V

    .line 531
    :try_start_0
    const-class v0, Lo/matches;

    const-string v1, "onMessageChannelReady"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 533
    iget-object p1, p1, Lo/matches;->onMessageChannelReady:[B

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 537
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 535
    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3247
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "byteCount < 0: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3246
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "in == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 543
    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()Ljava/lang/String;
    .locals 3

    .line 114
    iget-object v0, p0, Lo/matches;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/matches;->onMessageChannelReady:[B

    sget-object v2, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lo/matches;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public ICustomTabsCallback(I[BII)Z
    .locals 2

    if-ltz p1, :cond_0

    .line 395
    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    array-length v1, v0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_0

    if-ltz p3, :cond_0

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_0

    .line 397
    invoke-static {v0, p1, p2, p3, p4}, Lo/getPriorityKey;->onMessageChannelReady([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method ICustomTabsCallback$Stub()[B
    .locals 1

    .line 359
    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    return-object v0
.end method

.method public asBinder()Lo/matches;
    .locals 6

    const/4 v0, 0x0

    .line 264
    :goto_0
    iget-object v1, p0, Lo/matches;->onMessageChannelReady:[B

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 265
    aget-byte v2, v1, v0

    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v4, 0x5a

    if-gt v2, v4, :cond_2

    .line 270
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    .line 271
    aput-byte v2, v1, v0

    .line 272
    :goto_1
    array-length v0, v1

    if-ge v5, v0, :cond_1

    .line 273
    aget-byte v0, v1, v5

    if-lt v0, v3, :cond_0

    if-gt v0, v4, :cond_0

    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 275
    aput-byte v0, v1, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 277
    :cond_1
    new-instance v0, Lo/matches;

    invoke-direct {v0, v1}, Lo/matches;-><init>([B)V

    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public asInterface()[B
    .locals 1

    .line 354
    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 9

    .line 52
    check-cast p1, Lo/matches;

    .line 3473
    invoke-virtual {p0}, Lo/matches;->onTransact()I

    move-result v0

    .line 3474
    invoke-virtual {p1}, Lo/matches;->onTransact()I

    move-result v1

    .line 3475
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_2

    .line 3476
    invoke-virtual {p0, v4}, Lo/matches;->onPostMessage(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 3477
    invoke-virtual {p1, v4}, Lo/matches;->onPostMessage(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-eq v7, v8, :cond_1

    if-ge v7, v8, :cond_0

    return v5

    :cond_0
    return v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    return v3

    :cond_3
    if-ge v0, v1, :cond_4

    return v5

    :cond_4
    return v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 462
    :cond_0
    instance-of v1, p1, Lo/matches;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lo/matches;

    .line 463
    invoke-virtual {p1}, Lo/matches;->onTransact()I

    move-result v1

    iget-object v3, p0, Lo/matches;->onMessageChannelReady:[B

    array-length v4, v3

    if-ne v1, v4, :cond_1

    array-length v1, v3

    .line 464
    invoke-virtual {p1, v2, v3, v2, v1}, Lo/matches;->ICustomTabsCallback(I[BII)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public extraCallback()Lo/matches;
    .locals 1

    const-string v0, "SHA-1"

    .line 141
    invoke-direct {p0, v0}, Lo/matches;->onPostMessage(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 468
    iget v0, p0, Lo/matches;->onPostMessage:I

    if-eqz v0, :cond_0

    return v0

    .line 469
    :cond_0
    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lo/matches;->onPostMessage:I

    return v0
.end method

.method public onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    invoke-static {v0}, Lo/getChanges;->onMessageChannelReady([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onMessageChannelReady(II)Lo/matches;
    .locals 3

    if-ltz p1, :cond_3

    .line 322
    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    array-length v1, v0

    if-gt p2, v1, :cond_2

    sub-int v1, p2, p1

    if-ltz v1, :cond_1

    if-nez p1, :cond_0

    .line 329
    array-length v0, v0

    if-ne p2, v0, :cond_0

    return-object p0

    .line 333
    :cond_0
    new-array p2, v1, [B

    .line 334
    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    new-instance p1, Lo/matches;

    invoke-direct {p1, p2}, Lo/matches;-><init>([B)V

    return-object p1

    .line 327
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endIndex < beginIndex"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "endIndex > length("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "beginIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onMessageChannelReady(Lo/updatePriority;)V
    .locals 3

    .line 377
    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lo/updatePriority;->onMessageChannelReady([BII)Lo/updatePriority;

    return-void
.end method

.method public onMessageChannelReady(ILo/matches;II)Z
    .locals 0

    .line 386
    iget-object p1, p0, Lo/matches;->onMessageChannelReady:[B

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1, p3, p4}, Lo/matches;->ICustomTabsCallback(I[BII)Z

    move-result p1

    return p1
.end method

.method public onNavigationEvent()Lo/matches;
    .locals 1

    const-string v0, "MD5"

    .line 136
    invoke-direct {p0, v0}, Lo/matches;->onPostMessage(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    return-object v0
.end method

.method public onPostMessage(I)B
    .locals 1

    .line 340
    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public onPostMessage()Lo/matches;
    .locals 1

    const-string v0, "SHA-256"

    .line 146
    invoke-direct {p0, v0}, Lo/matches;->onPostMessage(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    return-object v0
.end method

.method public onRelationshipValidationResult()Ljava/lang/String;
    .locals 9

    .line 209
    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    .line 211
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    .line 212
    sget-object v7, Lo/matches;->onNavigationEvent:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 213
    aget-char v5, v7, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public onTransact()I
    .locals 1

    .line 347
    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 490
    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, "[size=0]"

    return-object v0

    .line 494
    :cond_0
    invoke-virtual {p0}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    .line 2513
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    const/16 v6, 0x40

    if-ge v3, v1, :cond_5

    if-ne v4, v6, :cond_1

    goto :goto_1

    .line 2517
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 2518
    invoke-static {v7}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0xa

    if-eq v7, v8, :cond_2

    const/16 v8, 0xd

    if-ne v7, v8, :cond_3

    :cond_2
    const v8, 0xfffd

    if-ne v7, v8, :cond_4

    :cond_3
    const/4 v3, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 2513
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 2524
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    const-string v1, "\u2026]"

    const-string v4, "[size="

    const-string v7, "]"

    if-ne v3, v5, :cond_7

    .line 498
    iget-object v0, p0, Lo/matches;->onMessageChannelReady:[B

    array-length v0, v0

    if-gt v0, v6, :cond_6

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[hex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/matches;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 500
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/matches;->onMessageChannelReady:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hex="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v6}, Lo/matches;->onMessageChannelReady(II)Lo/matches;

    move-result-object v2

    invoke-virtual {v2}, Lo/matches;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 503
    :cond_7
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\\"

    const-string v6, "\\\\"

    .line 504
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\n"

    const-string v6, "\\n"

    .line 505
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\r"

    const-string v6, "\\r"

    .line 506
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 507
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/matches;->onMessageChannelReady:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " text="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 509
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
