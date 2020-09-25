.class public final Lo/u$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/u$e$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 69
    fill-array-data v0, :array_0

    sput-object v0, Lo/u$e;->ICustomTabsCallback:[I

    return-void

    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method private static extraCallback(Lo/PublisherException;I)I
    .locals 2

    const/4 v0, 0x0

    .line 233
    :goto_0
    invoke-virtual {p0, p1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 234
    invoke-virtual {p0}, Lo/PublisherException;->extraCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static extraCallback([BI)I
    .locals 4

    .line 185
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    .line 189
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_1

    .line 192
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x6

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr v0, p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    const p0, 0xac41

    if-ne p1, p0, :cond_2

    add-int/lit8 v1, v1, 0x2

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public static extraCallback(Lo/PublisherException;)Lo/u$e$ICustomTabsCallback;
    .locals 10

    const/16 v0, 0x10

    .line 124
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    .line 126
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    const/4 v2, 0x4

    const v3, 0xffff

    if-ne v0, v3, :cond_0

    const/16 v0, 0x18

    .line 129
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    const/4 v3, 0x7

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    add-int/2addr v0, v3

    const v3, 0xac41

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    move v7, v0

    const/4 v0, 0x2

    .line 136
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 138
    invoke-static {p0, v0}, Lo/u$e;->extraCallback(Lo/PublisherException;I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2
    move v4, v1

    const/16 v1, 0xa

    .line 140
    invoke-virtual {p0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    .line 141
    invoke-virtual {p0}, Lo/PublisherException;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    invoke-virtual {p0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v5

    if-lez v5, :cond_3

    .line 143
    invoke-virtual {p0, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 146
    :cond_3
    invoke-virtual {p0}, Lo/PublisherException;->extraCallback()Z

    move-result v5

    const v6, 0xbb80

    const v8, 0xac44

    if-eqz v5, :cond_4

    const v9, 0xbb80

    goto :goto_1

    :cond_4
    const v9, 0xac44

    .line 147
    :goto_1
    invoke-virtual {p0, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result p0

    const/4 v5, 0x0

    if-ne v9, v8, :cond_5

    const/16 v8, 0xd

    if-ne p0, v8, :cond_5

    .line 150
    sget-object v0, Lo/u$e;->ICustomTabsCallback:[I

    aget p0, v0, p0

    move v8, p0

    goto :goto_4

    :cond_5
    if-ne v9, v6, :cond_b

    .line 151
    sget-object v6, Lo/u$e;->ICustomTabsCallback:[I

    array-length v8, v6

    if-ge p0, v8, :cond_b

    .line 152
    aget v5, v6, p0

    .line 153
    rem-int/lit8 v1, v1, 0x5

    const/16 v6, 0x8

    const/4 v8, 0x1

    if-eq v1, v8, :cond_8

    const/16 v8, 0xb

    if-eq v1, v0, :cond_7

    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_6

    goto :goto_2

    :cond_6
    if-eq p0, v3, :cond_a

    if-eq p0, v6, :cond_a

    if-ne p0, v8, :cond_9

    goto :goto_3

    :cond_7
    if-eq p0, v6, :cond_a

    if-ne p0, v8, :cond_9

    goto :goto_3

    :cond_8
    if-eq p0, v3, :cond_a

    if-ne p0, v6, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    move v8, v5

    goto :goto_4

    :cond_a
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    const/4 v8, 0x0

    .line 174
    :goto_4
    new-instance p0, Lo/u$e$ICustomTabsCallback;

    const/4 v5, 0x2

    const/4 v0, 0x0

    move-object v3, p0

    move v6, v9

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lo/u$e$ICustomTabsCallback;-><init>(IIIIILo/u$e$3;)V

    return-object p0
.end method

.method public static extraCallback(ILo/DreamAppGlideModule;)V
    .locals 3

    const/4 v0, 0x7

    .line 220
    invoke-virtual {p1, v0}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 221
    iget-object v0, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v1, 0x0

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    .line 222
    iget-object v0, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v1, 0x1

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    .line 223
    iget-object v0, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v1, -0x1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 224
    iget-object v0, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 225
    iget-object v0, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 226
    iget-object v0, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 227
    iget-object p1, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    int-to-byte p0, p0

    const/4 v0, 0x6

    aput-byte p0, p1, v0

    return-void
.end method

.method public static onMessageChannelReady(Lo/DreamAppGlideModule;Ljava/lang/String;Ljava/lang/String;Lo/generateLink;)Lo/p$a;
    .locals 11

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 100
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    shr-int/lit8 p0, p0, 0x5

    if-ne p0, v0, :cond_0

    const p0, 0xbb80

    const v6, 0xbb80

    goto :goto_0

    :cond_0
    const p0, 0xac44

    const v6, 0xac44

    :goto_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v1, "audio/ac4"

    move-object v0, p1

    move-object v8, p3

    move-object v10, p2

    .line 101
    invoke-static/range {v0 .. v10}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lo/generateLink;ILjava/lang/String;)Lo/p$a;

    move-result-object p0

    return-object p0
.end method

.method public static onPostMessage(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 211
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    .line 212
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 213
    invoke-virtual {p0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 214
    new-instance p0, Lo/PublisherException;

    invoke-direct {p0, v0}, Lo/PublisherException;-><init>([B)V

    invoke-static {p0}, Lo/u$e;->extraCallback(Lo/PublisherException;)Lo/u$e$ICustomTabsCallback;

    move-result-object p0

    iget p0, p0, Lo/u$e$ICustomTabsCallback;->onMessageChannelReady:I

    return p0
.end method
