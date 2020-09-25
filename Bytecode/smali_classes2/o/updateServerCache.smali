.class public final Lo/updateServerCache;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/currentHashLength;

.field public static final onPostMessage:Ljava/nio/charset/Charset;


# instance fields
.field public onMessageChannelReady:I

.field private final onNavigationEvent:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lo/updateServerCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/appendKey;->onMessageChannelReady(Ljava/lang/String;)Lo/currentHashLength;

    move-result-object v0

    sput-object v0, Lo/updateServerCache;->ICustomTabsCallback:Lo/currentHashLength;

    const-string v0, "ASCII"

    .line 39
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/updateServerCache;->onPostMessage:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lo/updateServerCache;->onNavigationEvent:[B

    .line 69
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static onNavigationEvent(II)B
    .locals 1

    const/4 v0, -0x1

    shl-int/2addr v0, p0

    int-to-byte v0, v0

    and-int/lit16 v0, v0, 0xff

    shr-int/2addr v0, p0

    int-to-byte v0, v0

    add-int/2addr p1, p0

    rsub-int/lit8 p0, p1, 0x8

    if-lez p0, :cond_0

    shr-int p1, v0, p0

    int-to-byte p1, p1

    shl-int p0, p1, p0

    int-to-byte v0, p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)J
    .locals 11

    const/16 v0, 0x10

    .line 287
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 295
    iget v1, p0, Lo/updateServerCache;->onMessageChannelReady:I

    add-int/2addr v1, p1

    const-wide/16 v2, 0x0

    .line 296
    :goto_0
    iget v4, p0, Lo/updateServerCache;->onMessageChannelReady:I

    if-ge v4, v1, :cond_0

    .line 297
    rem-int/lit8 v5, v4, 0x8

    .line 299
    iget-object v6, p0, Lo/updateServerCache;->onNavigationEvent:[B

    div-int/lit8 v4, v4, 0x8

    aget-byte v4, v6, v4

    invoke-static {v5, p1}, Lo/updateServerCache;->onNavigationEvent(II)B

    move-result v6

    and-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xff

    int-to-long v6, v4

    add-int v4, v5, p1

    const/16 v8, 0x8

    rsub-int/lit8 v4, v4, 0x8

    const/4 v9, 0x0

    .line 301
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    const-wide/16 v9, 0xff

    and-long/2addr v6, v9

    ushr-long/2addr v6, v4

    and-long/2addr v6, v9

    .line 304
    invoke-static {p1, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    shl-long/2addr v2, v4

    or-long/2addr v2, v6

    sub-int/2addr v8, v5

    sub-int/2addr p1, v8

    .line 309
    iget v4, p0, Lo/updateServerCache;->onMessageChannelReady:I

    add-int/2addr v4, v8

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lo/updateServerCache;->onMessageChannelReady:I

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 313
    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 315
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onMessageChannelReady(I)[B
    .locals 8

    int-to-float v0, p1

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 184
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-array v1, v0, [B

    .line 186
    iget v2, p0, Lo/updateServerCache;->onMessageChannelReady:I

    rem-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_1

    add-int/2addr v2, p1

    .line 189
    :goto_0
    iget p1, p0, Lo/updateServerCache;->onMessageChannelReady:I

    if-ge p1, v2, :cond_3

    .line 190
    rem-int/lit8 v0, p1, 0x8

    .line 191
    rem-int/lit8 v3, v4, 0x8

    sub-int p1, v2, p1

    rsub-int/lit8 v6, v0, 0x8

    rsub-int/lit8 v7, v3, 0x8

    .line 192
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 193
    iget-object v6, p0, Lo/updateServerCache;->onNavigationEvent:[B

    iget v7, p0, Lo/updateServerCache;->onMessageChannelReady:I

    div-int/2addr v7, v5

    aget-byte v6, v6, v7

    invoke-static {v0, p1}, Lo/updateServerCache;->onNavigationEvent(II)B

    move-result v7

    and-int/2addr v6, v7

    int-to-byte v6, v6

    if-eqz v0, :cond_0

    rsub-int/lit8 v3, p1, 0x8

    .line 196
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int v0, v6, v0

    goto :goto_1

    :cond_0
    and-int/lit16 v0, v6, 0xff

    shr-int/2addr v0, v3

    :goto_1
    int-to-byte v0, v0

    .line 201
    div-int/lit8 v3, v4, 0x8

    aget-byte v6, v1, v3

    or-int/2addr v0, v6

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 202
    iget v0, p0, Lo/updateServerCache;->onMessageChannelReady:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/updateServerCache;->onMessageChannelReady:I

    add-int/2addr v4, p1

    goto :goto_0

    .line 209
    :cond_1
    iget-object v3, p0, Lo/updateServerCache;->onNavigationEvent:[B

    div-int/2addr v2, v5

    invoke-static {v3, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    rem-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_2

    const/16 v2, 0x8

    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 214
    aget-byte v3, v1, v0

    iget v4, p0, Lo/updateServerCache;->onMessageChannelReady:I

    rem-int/2addr v4, v5

    invoke-static {v4, v2}, Lo/updateServerCache;->onNavigationEvent(II)B

    move-result v2

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 215
    iget v0, p0, Lo/updateServerCache;->onMessageChannelReady:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/updateServerCache;->onMessageChannelReady:I

    :cond_3
    return-object v1
.end method

.method public final onNavigationEvent(I)Ljava/lang/String;
    .locals 1

    .line 273
    invoke-virtual {p0, p1}, Lo/updateServerCache;->onMessageChannelReady(I)[B

    move-result-object p1

    const-string v0, "%02x"

    .line 2125
    invoke-static {p1, v0}, Lo/extraCallback$ICustomTabsCallback;->ICustomTabsCallback([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(ILjava/lang/String;Z)Ljava/util/Date;
    .locals 3

    .line 248
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 252
    invoke-virtual {p0, p1}, Lo/updateServerCache;->onNavigationEvent(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1340
    :cond_0
    sget-object p3, Lo/updateServerCache;->onPostMessage:Ljava/nio/charset/Charset;

    .line 1353
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/updateServerCache;->onMessageChannelReady(I)[B

    move-result-object p1

    invoke-direct {v1, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p1, v1

    .line 258
    :goto_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 260
    sget-object v0, Lo/updateServerCache;->ICustomTabsCallback:Lo/currentHashLength;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parsing date error. date:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pattern:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Lo/currentHashLength;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
