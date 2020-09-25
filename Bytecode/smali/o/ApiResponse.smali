.class public final Lo/ApiResponse;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback$Stub:[I

.field private static final ICustomTabsCallback$Stub$Proxy:[I

.field private static final asBinder:[I

.field private static final getInterfaceDescriptor:[I

.field private static final newSession:[I

.field private static final onTransact:[Ljava/lang/String;

.field private static final warmup:[I


# instance fields
.field public ICustomTabsCallback:I

.field public asInterface:I

.field public extraCallback:I

.field public onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:I

.field public onPostMessage:I

.field public onRelationshipValidationResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "audio/mpeg-L1"

    const-string v1, "audio/mpeg-L2"

    const-string v2, "audio/mpeg"

    .line 34
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/ApiResponse;->onTransact:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 36
    fill-array-data v0, :array_0

    sput-object v0, Lo/ApiResponse;->ICustomTabsCallback$Stub:[I

    const/16 v0, 0xe

    new-array v1, v0, [I

    .line 37
    fill-array-data v1, :array_1

    sput-object v1, Lo/ApiResponse;->asBinder:[I

    new-array v1, v0, [I

    .line 41
    fill-array-data v1, :array_2

    sput-object v1, Lo/ApiResponse;->newSession:[I

    new-array v1, v0, [I

    .line 45
    fill-array-data v1, :array_3

    sput-object v1, Lo/ApiResponse;->getInterfaceDescriptor:[I

    new-array v1, v0, [I

    .line 49
    fill-array-data v1, :array_4

    sput-object v1, Lo/ApiResponse;->warmup:[I

    new-array v0, v0, [I

    .line 53
    fill-array-data v0, :array_5

    sput-object v0, Lo/ApiResponse;->ICustomTabsCallback$Stub$Proxy:[I

    return-void

    :array_0
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    :array_1
    .array-data 4
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
    .end array-data

    :array_2
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
    .end array-data

    :array_3
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
    .end array-data

    :array_4
    .array-data 4
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
    .end array-data

    :array_5
    .array-data 4
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(ILo/ApiResponse;)Z
    .locals 11

    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/lit8 v4, v0, 0x3

    const/4 v0, 0x1

    if-ne v4, v0, :cond_1

    return v2

    :cond_1
    ushr-int/lit8 v3, p0, 0x11

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    return v2

    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_e

    if-ne v5, v6, :cond_3

    goto/16 :goto_6

    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_4

    return v2

    .line 156
    :cond_4
    sget-object v2, Lo/ApiResponse;->ICustomTabsCallback$Stub:[I

    aget v2, v2, v6

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 159
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    .line 162
    div-int/lit8 v2, v2, 0x4

    :cond_6
    :goto_0
    move v7, v2

    ushr-int/lit8 v2, p0, 0x9

    and-int/2addr v2, v0

    if-ne v3, v1, :cond_8

    if-ne v4, v1, :cond_7

    .line 171
    sget-object v8, Lo/ApiResponse;->asBinder:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    goto :goto_1

    :cond_7
    sget-object v8, Lo/ApiResponse;->newSession:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    :goto_1
    mul-int/lit8 v8, v5, 0xc

    .line 172
    div-int/2addr v8, v7

    add-int/2addr v8, v2

    shl-int/lit8 v2, v8, 0x2

    const/16 v8, 0x180

    move v9, v5

    const/16 v10, 0x180

    goto :goto_4

    :cond_8
    const/16 v8, 0x480

    if-ne v4, v1, :cond_a

    if-ne v3, v6, :cond_9

    .line 178
    sget-object v9, Lo/ApiResponse;->getInterfaceDescriptor:[I

    sub-int/2addr v5, v0

    aget v5, v9, v5

    goto :goto_2

    :cond_9
    sget-object v9, Lo/ApiResponse;->warmup:[I

    sub-int/2addr v5, v0

    aget v5, v9, v5

    goto :goto_2

    .line 183
    :cond_a
    sget-object v9, Lo/ApiResponse;->ICustomTabsCallback$Stub$Proxy:[I

    sub-int/2addr v5, v0

    aget v5, v9, v5

    if-ne v3, v0, :cond_b

    const/16 v8, 0x240

    :cond_b
    if-ne v3, v0, :cond_c

    const/16 v9, 0x48

    goto :goto_3

    :cond_c
    :goto_2
    const/16 v9, 0x90

    :goto_3
    mul-int v9, v9, v5

    .line 185
    div-int/2addr v9, v7

    add-int/2addr v9, v2

    move v10, v8

    move v2, v9

    move v9, v5

    .line 189
    :goto_4
    sget-object v5, Lo/ApiResponse;->onTransact:[Ljava/lang/String;

    rsub-int/lit8 v3, v3, 0x3

    aget-object v5, v5, v3

    shr-int/lit8 p0, p0, 0x6

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_d

    const/4 v8, 0x1

    goto :goto_5

    :cond_d
    const/4 v8, 0x2

    :goto_5
    move-object v3, p1

    move v6, v2

    .line 191
    invoke-direct/range {v3 .. v10}, Lo/ApiResponse;->onNavigationEvent(ILjava/lang/String;IIIII)V

    return v0

    :cond_e
    :goto_6
    return v2
.end method

.method public static onNavigationEvent(I)I
    .locals 7

    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/2addr v0, v1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v1

    if-nez v4, :cond_2

    return v2

    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_d

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_4

    return v2

    .line 88
    :cond_4
    sget-object v2, Lo/ApiResponse;->ICustomTabsCallback$Stub:[I

    aget v2, v2, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    .line 91
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    .line 94
    div-int/lit8 v2, v2, 0x4

    :cond_6
    :goto_0
    ushr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v3

    if-ne v4, v1, :cond_8

    if-ne v0, v1, :cond_7

    .line 101
    sget-object v0, Lo/ApiResponse;->asBinder:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_1

    :cond_7
    sget-object v0, Lo/ApiResponse;->newSession:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_1
    mul-int/lit8 v0, v0, 0xc

    .line 102
    div-int/2addr v0, v2

    add-int/2addr v0, p0

    shl-int/lit8 p0, v0, 0x2

    return p0

    :cond_8
    if-ne v0, v1, :cond_a

    if-ne v4, v6, :cond_9

    .line 106
    sget-object v6, Lo/ApiResponse;->getInterfaceDescriptor:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_2

    :cond_9
    sget-object v6, Lo/ApiResponse;->warmup:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_2

    .line 109
    :cond_a
    sget-object v6, Lo/ApiResponse;->ICustomTabsCallback$Stub$Proxy:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    :goto_2
    const/16 v6, 0x90

    if-ne v0, v1, :cond_b

    mul-int/lit16 v5, v5, 0x90

    .line 115
    div-int/2addr v5, v2

    add-int/2addr v5, p0

    return v5

    :cond_b
    if-ne v4, v3, :cond_c

    const/16 v6, 0x48

    :cond_c
    mul-int v6, v6, v5

    .line 118
    div-int/2addr v6, v2

    add-int/2addr v6, p0

    return v6

    :cond_d
    :goto_3
    return v2
.end method

.method private onNavigationEvent(ILjava/lang/String;IIIII)V
    .locals 0

    .line 218
    iput p1, p0, Lo/ApiResponse;->onPostMessage:I

    .line 219
    iput-object p2, p0, Lo/ApiResponse;->onMessageChannelReady:Ljava/lang/String;

    .line 220
    iput p3, p0, Lo/ApiResponse;->ICustomTabsCallback:I

    .line 221
    iput p4, p0, Lo/ApiResponse;->onNavigationEvent:I

    .line 222
    iput p5, p0, Lo/ApiResponse;->extraCallback:I

    .line 223
    iput p6, p0, Lo/ApiResponse;->onRelationshipValidationResult:I

    .line 224
    iput p7, p0, Lo/ApiResponse;->asInterface:I

    return-void
.end method
