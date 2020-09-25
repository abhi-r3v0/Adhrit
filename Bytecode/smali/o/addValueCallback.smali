.class public final Lo/addValueCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setProgress$extraCallback;


# static fields
.field private static final ICustomTabsCallback:[B

.field private static final ICustomTabsCallback$Stub:[B

.field private static final ICustomTabsCallback$Stub$Proxy:[[B

.field private static final ICustomTabsService:I

.field private static final asBinder:[B

.field private static final asInterface:[B

.field private static final extraCallback:[B

.field private static final getInterfaceDescriptor:[B

.field private static final newSession:[B

.field private static final onMessageChannelReady:I

.field private static final onNavigationEvent:I

.field private static final onRelationshipValidationResult:I

.field private static final onTransact:[B

.field private static final updateVisuals:I

.field private static final warmup:[B


# instance fields
.field private onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 129
    fill-array-data v1, :array_0

    .line 131
    sput-object v1, Lo/addValueCallback;->ICustomTabsCallback:[B

    sput v0, Lo/addValueCallback;->onNavigationEvent:I

    const/16 v1, 0x8

    new-array v2, v1, [B

    .line 149
    fill-array-data v2, :array_1

    .line 152
    sput-object v2, Lo/addValueCallback;->extraCallback:[B

    sput v1, Lo/addValueCallback;->onMessageChannelReady:I

    const-string v1, "GIF87a"

    .line 172
    invoke-static {v1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lo/addValueCallback;->ICustomTabsCallback$Stub:[B

    const-string v1, "GIF89a"

    .line 174
    invoke-static {v1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lo/addValueCallback;->onTransact:[B

    const-string v1, "BM"

    .line 195
    invoke-static {v1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object v1

    .line 197
    sput-object v1, Lo/addValueCallback;->asInterface:[B

    array-length v1, v1

    sput v1, Lo/addValueCallback;->onRelationshipValidationResult:I

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 216
    fill-array-data v2, :array_2

    .line 219
    sput-object v2, Lo/addValueCallback;->asBinder:[B

    sput v1, Lo/addValueCallback;->ICustomTabsService:I

    const-string v2, "ftyp"

    .line 242
    invoke-static {v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object v2

    sput-object v2, Lo/addValueCallback;->newSession:[B

    const/4 v2, 0x6

    new-array v2, v2, [[B

    const-string v3, "heic"

    .line 245
    invoke-static {v3}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "heix"

    .line 246
    invoke-static {v3}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "hevc"

    .line 247
    invoke-static {v3}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "hevx"

    .line 248
    invoke-static {v3}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "mif1"

    .line 249
    invoke-static {v0}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "msf1"

    .line 250
    invoke-static {v0}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v2, v3

    sput-object v2, Lo/addValueCallback;->ICustomTabsCallback$Stub$Proxy:[[B

    new-array v0, v1, [B

    .line 291
    fill-array-data v0, :array_3

    sput-object v0, Lo/addValueCallback;->warmup:[B

    new-array v1, v1, [B

    .line 294
    fill-array-data v1, :array_4

    sput-object v1, Lo/addValueCallback;->getInterfaceDescriptor:[B

    .line 296
    array-length v0, v0

    sput v0, Lo/addValueCallback;->updateVisuals:I

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x49t
        0x49t
        0x2at
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x4dt
        0x4dt
        0x0t
        0x2at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x15

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x14

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x2

    aput v2, v1, v3

    aput v0, v1, v2

    const/4 v0, 0x6

    const/4 v2, 0x4

    aput v0, v1, v2

    .line 26
    sget v3, Lo/addValueCallback;->onRelationshipValidationResult:I

    const/4 v4, 0x5

    aput v3, v1, v4

    aput v2, v1, v0

    const/4 v0, 0x7

    const/16 v2, 0xc

    aput v2, v1, v0

    .line 27
    invoke-static {v1}, Lo/getPivotY;->ICustomTabsCallback([I)I

    move-result v0

    iput v0, p0, Lo/addValueCallback;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 39
    iget v0, p0, Lo/addValueCallback;->onPostMessage:I

    return v0
.end method

.method public final onPostMessage([BI)Lo/setProgress;
    .locals 7

    .line 55
    invoke-static {p1, p2}, Lo/ListenableWorker;->onPostMessage([BI)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2103
    invoke-static {p1, p2}, Lo/ListenableWorker;->onPostMessage([BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2104
    invoke-static {p1}, Lo/ListenableWorker;->extraCallback([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2105
    sget-object p1, Lo/getFrame;->asInterface:Lo/setProgress;

    return-object p1

    .line 2108
    :cond_0
    invoke-static {p1}, Lo/ListenableWorker;->onPostMessage([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2109
    sget-object p1, Lo/getFrame;->onRelationshipValidationResult:Lo/setProgress;

    return-object p1

    .line 2112
    :cond_1
    invoke-static {p1, p2}, Lo/ListenableWorker;->extraCallback([BI)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2113
    invoke-static {p1}, Lo/ListenableWorker;->onNavigationEvent([B)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2114
    sget-object p1, Lo/getFrame;->onTransact:Lo/setProgress;

    return-object p1

    .line 2116
    :cond_2
    invoke-static {p1}, Lo/ListenableWorker;->ICustomTabsCallback([B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2117
    sget-object p1, Lo/getFrame;->asBinder:Lo/setProgress;

    return-object p1

    .line 2119
    :cond_3
    sget-object p1, Lo/getFrame;->ICustomTabsCallback$Stub:Lo/setProgress;

    return-object p1

    .line 2122
    :cond_4
    sget-object p1, Lo/setProgress;->onPostMessage:Lo/setProgress;

    return-object p1

    .line 3111
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3144
    :cond_6
    sget-object v0, Lo/addValueCallback;->ICustomTabsCallback:[B

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt p2, v1, :cond_7

    .line 3145
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback([B[B)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 60
    sget-object p1, Lo/getFrame;->ICustomTabsCallback:Lo/setProgress;

    return-object p1

    .line 3165
    :cond_8
    sget-object v0, Lo/addValueCallback;->extraCallback:[B

    array-length v1, v0

    if-lt p2, v1, :cond_9

    .line 3166
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback([B[B)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_a

    .line 64
    sget-object p1, Lo/getFrame;->onMessageChannelReady:Lo/setProgress;

    return-object p1

    :cond_a
    const/4 v0, 0x6

    if-lt p2, v0, :cond_c

    .line 3190
    sget-object v0, Lo/addValueCallback;->ICustomTabsCallback$Stub:[B

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lo/addValueCallback;->onTransact:[B

    .line 3191
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback([B[B)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const/4 v0, 0x1

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_d

    .line 68
    sget-object p1, Lo/getFrame;->onPostMessage:Lo/setProgress;

    return-object p1

    .line 3209
    :cond_d
    sget-object v0, Lo/addValueCallback;->asInterface:[B

    array-length v1, v0

    if-ge p2, v1, :cond_e

    const/4 v0, 0x0

    goto :goto_3

    .line 3212
    :cond_e
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback([B[B)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_f

    .line 72
    sget-object p1, Lo/getFrame;->extraCallback:Lo/setProgress;

    return-object p1

    .line 3231
    :cond_f
    sget-object v0, Lo/addValueCallback;->asBinder:[B

    array-length v1, v0

    if-ge p2, v1, :cond_10

    const/4 v0, 0x0

    goto :goto_4

    .line 3234
    :cond_10
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback([B[B)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_11

    .line 76
    sget-object p1, Lo/getFrame;->onNavigationEvent:Lo/setProgress;

    return-object p1

    :cond_11
    const/16 v0, 0xc

    if-lt p2, v0, :cond_13

    const/4 v0, 0x3

    .line 3268
    aget-byte v0, p1, v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_13

    .line 3273
    sget-object v0, Lo/addValueCallback;->newSession:[B

    const/4 v4, 0x4

    invoke-static {p1, v0, v4}, Lo/extraCallback;->onNavigationEvent([B[BI)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3277
    sget-object v0, Lo/addValueCallback;->ICustomTabsCallback$Stub$Proxy:[[B

    array-length v4, v0

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_13

    aget-object v6, v0, v5

    .line 3278
    invoke-static {p1, v6, v1}, Lo/extraCallback;->onNavigationEvent([B[BI)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v0, 0x1

    goto :goto_6

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_13
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_14

    .line 80
    sget-object p1, Lo/getFrame;->ICustomTabsCallback$Stub$Proxy:Lo/setProgress;

    return-object p1

    .line 3310
    :cond_14
    sget v0, Lo/addValueCallback;->updateVisuals:I

    if-lt p2, v0, :cond_15

    sget-object p2, Lo/addValueCallback;->warmup:[B

    .line 3311
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback([B[B)Z

    move-result p2

    if-nez p2, :cond_16

    sget-object p2, Lo/addValueCallback;->getInterfaceDescriptor:[B

    .line 3312
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback([B[B)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_7

    :cond_15
    const/4 v2, 0x0

    :cond_16
    :goto_7
    if-eqz v2, :cond_17

    .line 84
    sget-object p1, Lo/getFrame;->newSession:Lo/setProgress;

    return-object p1

    .line 87
    :cond_17
    sget-object p1, Lo/setProgress;->onPostMessage:Lo/setProgress;

    return-object p1
.end method
