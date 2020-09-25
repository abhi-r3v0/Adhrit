.class public final Lo/UpiAccountResponseJsonAdapter;
.super Lo/UpiBalanceResponse;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:[I

.field private static final ICustomTabsCallback$Stub:[Z

.field private static final asBinder:[I

.field private static final asInterface:[I

.field private static final extraCallback:[I

.field private static final onMessageChannelReady:[I

.field private static final onNavigationEvent:[I

.field private static final onPostMessage:[I


# instance fields
.field private final ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

.field private ICustomTabsService$Stub:B

.field private ICustomTabsService$Stub$Proxy:B

.field private IPostMessageService$Stub:I

.field private extraCommand:I

.field private getInterfaceDescriptor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mayLaunchUrl:Z

.field private final newSession:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Lo/DreamAppGlideModule;

.field private final onTransact:I

.field private postMessage:Z

.field private requestPostMessageChannel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private updateVisuals:I

.field private validateRelationship:Z

.field private final warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 60
    fill-array-data v1, :array_0

    sput-object v1, Lo/UpiAccountResponseJsonAdapter;->onMessageChannelReady:[I

    new-array v0, v0, [I

    .line 61
    fill-array-data v0, :array_1

    sput-object v0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsCallback:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 63
    fill-array-data v0, :array_2

    sput-object v0, Lo/UpiAccountResponseJsonAdapter;->onPostMessage:[I

    const/16 v0, 0x60

    new-array v0, v0, [I

    .line 130
    fill-array-data v0, :array_3

    sput-object v0, Lo/UpiAccountResponseJsonAdapter;->extraCallback:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 158
    fill-array-data v0, :array_4

    sput-object v0, Lo/UpiAccountResponseJsonAdapter;->onNavigationEvent:[I

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 178
    fill-array-data v1, :array_5

    sput-object v1, Lo/UpiAccountResponseJsonAdapter;->asInterface:[I

    new-array v0, v0, [I

    .line 188
    fill-array-data v0, :array_6

    sput-object v0, Lo/UpiAccountResponseJsonAdapter;->asBinder:[I

    const/16 v0, 0x100

    new-array v0, v0, [Z

    .line 197
    fill-array-data v0, :array_7

    sput-object v0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsCallback$Stub:[Z

    return-void

    :array_0
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
        0x14
        0x18
        0x1c
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0xff0100
        -0xffff01
        -0xff0001
        -0x10000
        -0x100
        -0xff01
    .end array-data

    :array_3
    .array-data 4
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0xe1
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0xe9
        0x5d
        0xed
        0xf3
        0xfa
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0xe7
        0xf7
        0xd1
        0xf1
        0x25a0
    .end array-data

    :array_4
    .array-data 4
        0xae
        0xb0
        0xbd
        0xbf
        0x2122
        0xa2
        0xa3
        0x266a
        0xe0
        0x20
        0xe8
        0xe2
        0xea
        0xee
        0xf4
        0xfb
    .end array-data

    :array_5
    .array-data 4
        0xc1
        0xc9
        0xd3
        0xda
        0xdc
        0xfc
        0x2018
        0xa1
        0x2a
        0x27
        0x2014
        0xa9
        0x2120
        0x2022
        0x201c
        0x201d
        0xc0
        0xc2
        0xc7
        0xc8
        0xca
        0xcb
        0xeb
        0xce
        0xcf
        0xef
        0xd4
        0xd9
        0xf9
        0xdb
        0xab
        0xbb
    .end array-data

    :array_6
    .array-data 4
        0xc3
        0xe3
        0xcd
        0xcc
        0xec
        0xd2
        0xf2
        0xd5
        0xf5
        0x7b
        0x7d
        0x5c
        0x5e
        0x5f
        0x7c
        0x7e
        0xc4
        0xe4
        0xd6
        0xf6
        0xdf
        0xa5
        0xa4
        0x2502
        0xc5
        0xe5
        0xd8
        0xf8
        0x250c
        0x2510
        0x2514
        0x2518
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .line 256
    invoke-direct {p0}, Lo/UpiBalanceResponse;-><init>()V

    .line 257
    new-instance v0, Lo/DreamAppGlideModule;

    invoke-direct {v0}, Lo/DreamAppGlideModule;-><init>()V

    iput-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->onRelationshipValidationResult:Lo/DreamAppGlideModule;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->newSession:Ljava/util/ArrayList;

    .line 259
    new-instance v0, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;-><init>(II)V

    iput-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    .line 260
    iput v2, p0, Lo/UpiAccountResponseJsonAdapter;->IPostMessageService$Stub:I

    const-string v0, "application/x-mp4-cea-608"

    .line 261
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lo/UpiAccountResponseJsonAdapter;->onTransact:I

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    if-eq p2, v0, :cond_3

    if-eq p2, v3, :cond_2

    if-eq p2, v1, :cond_1

    const-string p2, "Cea608Decoder"

    const-string v0, "Invalid channel. Defaulting to CC1."

    .line 280
    invoke-static {p2, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iput v2, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    .line 282
    iput v2, p0, Lo/UpiAccountResponseJsonAdapter;->warmup:I

    goto :goto_1

    .line 276
    :cond_1
    iput p1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    .line 277
    iput p1, p0, Lo/UpiAccountResponseJsonAdapter;->warmup:I

    goto :goto_1

    .line 272
    :cond_2
    iput v2, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    .line 273
    iput p1, p0, Lo/UpiAccountResponseJsonAdapter;->warmup:I

    goto :goto_1

    .line 268
    :cond_3
    iput p1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    .line 269
    iput v2, p0, Lo/UpiAccountResponseJsonAdapter;->warmup:I

    goto :goto_1

    .line 264
    :cond_4
    iput v2, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    .line 265
    iput v2, p0, Lo/UpiAccountResponseJsonAdapter;->warmup:I

    .line 285
    :goto_1
    invoke-direct {p0, v2}, Lo/UpiAccountResponseJsonAdapter;->onPostMessage(I)V

    .line 286
    invoke-direct {p0}, Lo/UpiAccountResponseJsonAdapter;->getInterfaceDescriptor()V

    .line 287
    iput-boolean p1, p0, Lo/UpiAccountResponseJsonAdapter;->validateRelationship:Z

    return-void
.end method

.method private ICustomTabsCallback(BB)V
    .locals 5

    .line 471
    sget-object v0, Lo/UpiAccountResponseJsonAdapter;->onMessageChannelReady:[I

    and-int/lit8 p1, p1, 0x7

    aget p1, v0, p1

    and-int/lit8 v0, p2, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 482
    :cond_1
    iget-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-static {v0}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->onPostMessage(Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;)I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 483
    iget v0, p0, Lo/UpiAccountResponseJsonAdapter;->updateVisuals:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-virtual {v0}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_2

    .line 484
    new-instance v0, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    iget v3, p0, Lo/UpiAccountResponseJsonAdapter;->updateVisuals:I

    iget v4, p0, Lo/UpiAccountResponseJsonAdapter;->extraCommand:I

    invoke-direct {v0, v3, v4}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;-><init>(II)V

    iput-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    .line 485
    iget-object v3, p0, Lo/UpiAccountResponseJsonAdapter;->newSession:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_2
    iget-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-static {v0, p1}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->ICustomTabsCallback(Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;I)I

    :cond_3
    and-int/lit8 p1, p2, 0x10

    const/16 v0, 0x10

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    shr-int/2addr p2, v2

    and-int/lit8 p2, p2, 0x7

    .line 498
    iget-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    if-eqz p1, :cond_6

    const/16 v2, 0x8

    goto :goto_2

    :cond_6
    move v2, p2

    :goto_2
    invoke-virtual {v0, v2, v1}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->extraCallback(IZ)V

    if-eqz p1, :cond_7

    .line 501
    iget-object p1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    sget-object v0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsCallback:[I

    aget p2, v0, p2

    invoke-static {p1, p2}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->onMessageChannelReady(Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;I)I

    :cond_7
    return-void
.end method

.method private ICustomTabsCallback(B)Z
    .locals 1

    .line 426
    invoke-static {p1}, Lo/UpiAccountResponseJsonAdapter;->onTransact(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-static {p1}, Lo/UpiAccountResponseJsonAdapter;->asBinder(B)I

    move-result p1

    iput p1, p0, Lo/UpiAccountResponseJsonAdapter;->IPostMessageService$Stub:I

    .line 429
    :cond_0
    iget p1, p0, Lo/UpiAccountResponseJsonAdapter;->IPostMessageService$Stub:I

    iget v0, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static ICustomTabsCallback$Stub(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static ICustomTabsCallback$Stub(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf6

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xf0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static ICustomTabsCallback$Stub$Proxy(B)Z
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0xf

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static ICustomTabsService(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static asBinder(B)I
    .locals 0

    shr-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static asBinder(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xc0

    const/16 p1, 0x40

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static asInterface(B)C
    .locals 1

    and-int/lit8 p0, p0, 0x1f

    .line 692
    sget-object v0, Lo/UpiAccountResponseJsonAdapter;->asInterface:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method private static asInterface(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xf0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic asInterface()[I
    .locals 1

    .line 42
    sget-object v0, Lo/UpiAccountResponseJsonAdapter;->onPostMessage:[I

    return-object v0
.end method

.method private static extraCallback(B)C
    .locals 1

    and-int/lit8 p0, p0, 0xf

    .line 671
    sget-object v0, Lo/UpiAccountResponseJsonAdapter;->onNavigationEvent:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method private static extraCallback(BB)C
    .locals 0

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_0

    .line 683
    invoke-static {p1}, Lo/UpiAccountResponseJsonAdapter;->asInterface(B)C

    move-result p0

    return p0

    .line 686
    :cond_0
    invoke-static {p1}, Lo/UpiAccountResponseJsonAdapter;->onRelationshipValidationResult(B)C

    move-result p0

    return p0
.end method

.method private getInterfaceDescriptor()V
    .locals 2

    .line 630
    iget-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    iget v1, p0, Lo/UpiAccountResponseJsonAdapter;->updateVisuals:I

    invoke-virtual {v0, v1}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->extraCallback(I)V

    .line 631
    iget-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->newSession:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 632
    iget-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->newSession:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private onMessageChannelReady(B)V
    .locals 2

    .line 460
    iget-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->ICustomTabsCallback(C)V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    shr-int/2addr p1, v1

    and-int/lit8 p1, p1, 0x7

    .line 465
    iget-object v1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-virtual {v1, p1, v0}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->extraCallback(IZ)V

    return-void
.end method

.method private onMessageChannelReady(BB)V
    .locals 2

    .line 636
    invoke-static {p1}, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy(B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 637
    iput-boolean v1, p0, Lo/UpiAccountResponseJsonAdapter;->validateRelationship:Z

    return-void

    .line 638
    :cond_0
    invoke-static {p1}, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService(B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x20

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2f

    if-eq p2, p1, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 642
    :pswitch_0
    iput-boolean v1, p0, Lo/UpiAccountResponseJsonAdapter;->validateRelationship:Z

    return-void

    :cond_1
    :pswitch_1
    const/4 p1, 0x1

    .line 650
    iput-boolean p1, p0, Lo/UpiAccountResponseJsonAdapter;->validateRelationship:Z

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onMessageChannelReady(I)V
    .locals 1

    .line 625
    iput p1, p0, Lo/UpiAccountResponseJsonAdapter;->extraCommand:I

    .line 626
    iget-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-virtual {v0, p1}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->onNavigationEvent(I)V

    return-void
.end method

.method private static onNavigationEvent(B)C
    .locals 1

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 p0, p0, -0x20

    .line 660
    sget-object v0, Lo/UpiAccountResponseJsonAdapter;->extraCallback:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method private static onNavigationEvent(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf6

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xe0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onPostMessage(B)V
    .locals 4

    const/16 v0, 0x20

    const/4 v1, 0x2

    if-eq p1, v0, :cond_5

    const/16 v0, 0x29

    const/4 v2, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 530
    iget v1, p0, Lo/UpiAccountResponseJsonAdapter;->updateVisuals:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v3, 0x21

    if-eq p1, v3, :cond_2

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 545
    :pswitch_0
    invoke-direct {p0}, Lo/UpiAccountResponseJsonAdapter;->onRelationshipValidationResult()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/UpiAccountResponseJsonAdapter;->getInterfaceDescriptor:Ljava/util/List;

    .line 546
    invoke-direct {p0}, Lo/UpiAccountResponseJsonAdapter;->getInterfaceDescriptor()V

    return-void

    .line 542
    :pswitch_1
    invoke-direct {p0}, Lo/UpiAccountResponseJsonAdapter;->getInterfaceDescriptor()V

    return-void

    :pswitch_2
    if-ne v1, v0, :cond_3

    .line 551
    iget-object p1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-virtual {p1}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->ICustomTabsCallback()Z

    move-result p1

    if-nez p1, :cond_3

    .line 552
    iget-object p1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-virtual {p1}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->extraCallback()V

    return-void

    .line 536
    :pswitch_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/UpiAccountResponseJsonAdapter;->getInterfaceDescriptor:Ljava/util/List;

    .line 537
    iget p1, p0, Lo/UpiAccountResponseJsonAdapter;->updateVisuals:I

    if-eq p1, v0, :cond_1

    if-ne p1, v2, :cond_3

    .line 538
    :cond_1
    invoke-direct {p0}, Lo/UpiAccountResponseJsonAdapter;->getInterfaceDescriptor()V

    return-void

    .line 556
    :cond_2
    iget-object p1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-virtual {p1}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->onPostMessage()V

    :cond_3
    :goto_0
    return-void

    .line 516
    :pswitch_4
    invoke-direct {p0, v0}, Lo/UpiAccountResponseJsonAdapter;->onPostMessage(I)V

    const/4 p1, 0x4

    .line 517
    invoke-direct {p0, p1}, Lo/UpiAccountResponseJsonAdapter;->onMessageChannelReady(I)V

    return-void

    .line 512
    :pswitch_5
    invoke-direct {p0, v0}, Lo/UpiAccountResponseJsonAdapter;->onPostMessage(I)V

    .line 513
    invoke-direct {p0, v2}, Lo/UpiAccountResponseJsonAdapter;->onMessageChannelReady(I)V

    return-void

    .line 508
    :pswitch_6
    invoke-direct {p0, v0}, Lo/UpiAccountResponseJsonAdapter;->onPostMessage(I)V

    .line 509
    invoke-direct {p0, v1}, Lo/UpiAccountResponseJsonAdapter;->onMessageChannelReady(I)V

    return-void

    .line 523
    :cond_4
    invoke-direct {p0, v2}, Lo/UpiAccountResponseJsonAdapter;->onPostMessage(I)V

    return-void

    .line 520
    :cond_5
    invoke-direct {p0, v1}, Lo/UpiAccountResponseJsonAdapter;->onPostMessage(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPostMessage(I)V
    .locals 2

    .line 600
    iget v0, p0, Lo/UpiAccountResponseJsonAdapter;->updateVisuals:I

    if-ne v0, p1, :cond_0

    return-void

    .line 605
    :cond_0
    iput p1, p0, Lo/UpiAccountResponseJsonAdapter;->updateVisuals:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const/4 v0, 0x0

    .line 609
    :goto_0
    iget-object v1, p0, Lo/UpiAccountResponseJsonAdapter;->newSession:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 610
    iget-object v1, p0, Lo/UpiAccountResponseJsonAdapter;->newSession:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-virtual {v1, p1}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->onMessageChannelReady(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 616
    :cond_2
    invoke-direct {p0}, Lo/UpiAccountResponseJsonAdapter;->getInterfaceDescriptor()V

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_4

    .line 620
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/UpiAccountResponseJsonAdapter;->getInterfaceDescriptor:Ljava/util/List;

    :cond_4
    return-void
.end method

.method private static onPostMessage(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xf0

    const/16 p1, 0x30

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onPostMessage(ZBB)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 436
    invoke-static {p2}, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsCallback$Stub(B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 437
    iget-boolean p1, p0, Lo/UpiAccountResponseJsonAdapter;->postMessage:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-byte p1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService$Stub$Proxy:B

    if-ne p1, p2, :cond_0

    iget-byte p1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService$Stub:B

    if-ne p1, p3, :cond_0

    .line 439
    iput-boolean v0, p0, Lo/UpiAccountResponseJsonAdapter;->postMessage:Z

    return v1

    .line 445
    :cond_0
    iput-boolean v1, p0, Lo/UpiAccountResponseJsonAdapter;->postMessage:Z

    .line 446
    iput-byte p2, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService$Stub$Proxy:B

    .line 447
    iput-byte p3, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService$Stub:B

    goto :goto_0

    .line 451
    :cond_1
    iput-boolean v0, p0, Lo/UpiAccountResponseJsonAdapter;->postMessage:Z

    :goto_0
    return v0
.end method

.method private static onRelationshipValidationResult(B)C
    .locals 1

    and-int/lit8 p0, p0, 0x1f

    .line 697
    sget-object v0, Lo/UpiAccountResponseJsonAdapter;->asBinder:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method private onRelationshipValidationResult()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->newSession:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 575
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 577
    iget-object v5, p0, Lo/UpiAccountResponseJsonAdapter;->newSession:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    const/high16 v6, -0x80000000

    invoke-virtual {v5, v6}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->onPostMessage(I)Lo/SimResponseJsonAdapter;

    move-result-object v5

    .line 578
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_0

    .line 580
    iget v5, v5, Lo/SimResponseJsonAdapter;->onRelationshipValidationResult:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 585
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v2, v0, :cond_4

    .line 587
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/SimResponseJsonAdapter;

    if-eqz v5, :cond_3

    .line 589
    iget v6, v5, Lo/SimResponseJsonAdapter;->onRelationshipValidationResult:I

    if-eq v6, v3, :cond_2

    .line 590
    iget-object v5, p0, Lo/UpiAccountResponseJsonAdapter;->newSession:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-virtual {v5, v3}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->onPostMessage(I)Lo/SimResponseJsonAdapter;

    move-result-object v5

    .line 592
    :cond_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v4
.end method

.method private static onTransact(B)Z
    .locals 0

    and-int/lit16 p0, p0, 0xe0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static onTransact(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    const/16 p0, 0x21

    if-lt p1, p0, :cond_0

    const/16 p0, 0x23

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 297
    invoke-super {p0}, Lo/UpiBalanceResponse;->ICustomTabsCallback()V

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->getInterfaceDescriptor:Ljava/util/List;

    .line 299
    iput-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->requestPostMessageChannel:Ljava/util/List;

    const/4 v0, 0x0

    .line 300
    invoke-direct {p0, v0}, Lo/UpiAccountResponseJsonAdapter;->onPostMessage(I)V

    const/4 v1, 0x4

    .line 301
    invoke-direct {p0, v1}, Lo/UpiAccountResponseJsonAdapter;->onMessageChannelReady(I)V

    .line 302
    invoke-direct {p0}, Lo/UpiAccountResponseJsonAdapter;->getInterfaceDescriptor()V

    .line 303
    iput-boolean v0, p0, Lo/UpiAccountResponseJsonAdapter;->mayLaunchUrl:Z

    .line 304
    iput-boolean v0, p0, Lo/UpiAccountResponseJsonAdapter;->postMessage:Z

    .line 305
    iput-byte v0, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService$Stub$Proxy:B

    .line 306
    iput-byte v0, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService$Stub:B

    .line 307
    iput v0, p0, Lo/UpiAccountResponseJsonAdapter;->IPostMessageService$Stub:I

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lo/UpiAccountResponseJsonAdapter;->validateRelationship:Z

    return-void
.end method

.method public final bridge synthetic ICustomTabsCallback(Lo/TransactionDetailsJsonAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 42
    invoke-super {p0, p1}, Lo/UpiBalanceResponse;->ICustomTabsCallback(Lo/TransactionDetailsJsonAdapter;)V

    return-void
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub()Lo/TransactionDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 42
    invoke-super {p0}, Lo/UpiBalanceResponse;->ICustomTabsCallback$Stub()Lo/TransactionDetails;

    move-result-object v0

    return-object v0
.end method

.method protected final asBinder()Lo/Status;
    .locals 2

    .line 323
    iget-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->getInterfaceDescriptor:Ljava/util/List;

    iput-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->requestPostMessageChannel:Ljava/util/List;

    .line 324
    new-instance v1, Lo/UpiBankLimit;

    invoke-direct {v1, v0}, Lo/UpiBankLimit;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public final bridge synthetic extraCallback(J)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Lo/UpiBalanceResponse;->extraCallback(J)V

    return-void
.end method

.method protected final extraCallback()Z
    .locals 2

    .line 318
    iget-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->getInterfaceDescriptor:Ljava/util/List;

    iget-object v1, p0, Lo/UpiAccountResponseJsonAdapter;->requestPostMessageChannel:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final onMessageChannelReady(Lo/TransactionDetailsJsonAdapter;)V
    .locals 9

    .line 330
    iget-object v0, p0, Lo/UpiAccountResponseJsonAdapter;->onRelationshipValidationResult:Lo/DreamAppGlideModule;

    iget-object v1, p1, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object p1, p1, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 332
    :cond_0
    :goto_0
    iget-object v2, p0, Lo/UpiAccountResponseJsonAdapter;->onRelationshipValidationResult:Lo/DreamAppGlideModule;

    invoke-virtual {v2}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v2

    iget v3, p0, Lo/UpiAccountResponseJsonAdapter;->onTransact:I

    if-lt v2, v3, :cond_c

    const/4 v2, 0x2

    if-ne v3, v2, :cond_1

    const/4 v2, -0x4

    goto :goto_1

    .line 333
    :cond_1
    iget-object v2, p0, Lo/UpiAccountResponseJsonAdapter;->onRelationshipValidationResult:Lo/DreamAppGlideModule;

    .line 334
    invoke-virtual {v2}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v2

    int-to-byte v2, v2

    .line 335
    :goto_1
    iget-object v3, p0, Lo/UpiAccountResponseJsonAdapter;->onRelationshipValidationResult:Lo/DreamAppGlideModule;

    invoke-virtual {v3}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v3

    .line 336
    iget-object v4, p0, Lo/UpiAccountResponseJsonAdapter;->onRelationshipValidationResult:Lo/DreamAppGlideModule;

    invoke-virtual {v4}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v4

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_0

    and-int/lit8 v5, v2, 0x1

    .line 347
    iget v6, p0, Lo/UpiAccountResponseJsonAdapter;->warmup:I

    if-ne v5, v6, :cond_0

    and-int/lit8 v5, v3, 0x7f

    int-to-byte v5, v5

    and-int/lit8 v6, v4, 0x7f

    int-to-byte v6, v6

    if-nez v5, :cond_2

    if-eqz v6, :cond_0

    .line 361
    :cond_2
    iget-boolean v7, p0, Lo/UpiAccountResponseJsonAdapter;->mayLaunchUrl:Z

    and-int/lit8 v2, v2, 0x4

    const/4 v8, 0x4

    if-ne v2, v8, :cond_3

    .line 362
    sget-object v2, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsCallback$Stub:[Z

    aget-boolean v3, v2, v3

    if-eqz v3, :cond_3

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lo/UpiAccountResponseJsonAdapter;->mayLaunchUrl:Z

    .line 367
    invoke-direct {p0, v2, v5, v6}, Lo/UpiAccountResponseJsonAdapter;->onPostMessage(ZBB)Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    iget-boolean v2, p0, Lo/UpiAccountResponseJsonAdapter;->mayLaunchUrl:Z

    if-nez v2, :cond_5

    if-eqz v7, :cond_0

    .line 375
    invoke-direct {p0}, Lo/UpiAccountResponseJsonAdapter;->getInterfaceDescriptor()V

    :cond_4
    :goto_3
    const/4 v1, 0x1

    goto :goto_0

    .line 381
    :cond_5
    invoke-direct {p0, v5, v6}, Lo/UpiAccountResponseJsonAdapter;->onMessageChannelReady(BB)V

    .line 382
    iget-boolean v2, p0, Lo/UpiAccountResponseJsonAdapter;->validateRelationship:Z

    if-eqz v2, :cond_0

    .line 387
    invoke-direct {p0, v5}, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsCallback(B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    invoke-static {v5}, Lo/UpiAccountResponseJsonAdapter;->onTransact(B)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 393
    invoke-static {v5, v6}, Lo/UpiAccountResponseJsonAdapter;->onPostMessage(BB)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 394
    iget-object v1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-static {v6}, Lo/UpiAccountResponseJsonAdapter;->extraCallback(B)C

    move-result v2

    invoke-virtual {v1, v2}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->ICustomTabsCallback(C)V

    goto :goto_3

    .line 395
    :cond_6
    invoke-static {v5, v6}, Lo/UpiAccountResponseJsonAdapter;->onNavigationEvent(BB)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 397
    iget-object v1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-virtual {v1}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->onPostMessage()V

    .line 398
    iget-object v1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-static {v5, v6}, Lo/UpiAccountResponseJsonAdapter;->extraCallback(BB)C

    move-result v2

    invoke-virtual {v1, v2}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->ICustomTabsCallback(C)V

    goto :goto_3

    .line 399
    :cond_7
    invoke-static {v5, v6}, Lo/UpiAccountResponseJsonAdapter;->asInterface(BB)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 400
    invoke-direct {p0, v6}, Lo/UpiAccountResponseJsonAdapter;->onMessageChannelReady(B)V

    goto :goto_3

    .line 401
    :cond_8
    invoke-static {v5, v6}, Lo/UpiAccountResponseJsonAdapter;->asBinder(BB)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 402
    invoke-direct {p0, v5, v6}, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsCallback(BB)V

    goto :goto_3

    .line 403
    :cond_9
    invoke-static {v5, v6}, Lo/UpiAccountResponseJsonAdapter;->onTransact(BB)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 404
    iget-object v1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    add-int/lit8 v6, v6, -0x20

    invoke-static {v1, v6}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->onNavigationEvent(Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;I)I

    goto :goto_3

    .line 405
    :cond_a
    invoke-static {v5, v6}, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsCallback$Stub(BB)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 406
    invoke-direct {p0, v6}, Lo/UpiAccountResponseJsonAdapter;->onPostMessage(B)V

    goto :goto_3

    .line 410
    :cond_b
    iget-object v1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-static {v5}, Lo/UpiAccountResponseJsonAdapter;->onNavigationEvent(B)C

    move-result v2

    invoke-virtual {v1, v2}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->ICustomTabsCallback(C)V

    and-int/lit16 v1, v6, 0xe0

    if-eqz v1, :cond_4

    .line 412
    iget-object v1, p0, Lo/UpiAccountResponseJsonAdapter;->ICustomTabsService:Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;

    invoke-static {v6}, Lo/UpiAccountResponseJsonAdapter;->onNavigationEvent(B)C

    move-result v2

    invoke-virtual {v1, v2}, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;->ICustomTabsCallback(C)V

    goto :goto_3

    :cond_c
    if-eqz v1, :cond_e

    .line 419
    iget p1, p0, Lo/UpiAccountResponseJsonAdapter;->updateVisuals:I

    if-eq p1, v0, :cond_d

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 420
    :cond_d
    invoke-direct {p0}, Lo/UpiAccountResponseJsonAdapter;->onRelationshipValidationResult()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/UpiAccountResponseJsonAdapter;->getInterfaceDescriptor:Ljava/util/List;

    :cond_e
    return-void
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic onTransact()Lo/TransactionDetailsJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 42
    invoke-super {p0}, Lo/UpiBalanceResponse;->onTransact()Lo/TransactionDetailsJsonAdapter;

    move-result-object v0

    return-object v0
.end method
