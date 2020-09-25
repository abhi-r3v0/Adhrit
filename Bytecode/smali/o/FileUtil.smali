.class public final Lo/FileUtil;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Event;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FileUtil$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/ImageHeaderParser$ImageType$onNavigationEvent;

.field private static final extraCallback:I

.field private static final onMessageChannelReady:I

.field public static final onNavigationEvent:Lo/RestClient;

.field private static final onPostMessage:I


# instance fields
.field private final ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:Lo/CryptLib;

.field private ICustomTabsService:I

.field private final asBinder:Lo/SessionParams;

.field private final asInterface:Lo/ApiResponse;

.field private extraCommand:J

.field private getInterfaceDescriptor:Lo/ExceptionTracker;

.field private mayLaunchUrl:I

.field private newSession:Lo/callAPI;

.field private final onRelationshipValidationResult:J

.field private final onTransact:Lo/DreamAppGlideModule;

.field private postMessage:J

.field private requestPostMessageChannel:J

.field private updateVisuals:Lo/FileUtil$onNavigationEvent;

.field private final warmup:Lo/ScreenView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget-object v0, Lo/registerApp;->onPostMessage:Lo/registerApp;

    sput-object v0, Lo/FileUtil;->onNavigationEvent:Lo/RestClient;

    .line 75
    sget-object v0, Lo/getChallenge;->onPostMessage:Lo/getChallenge;

    sput-object v0, Lo/FileUtil;->ICustomTabsCallback:Lo/ImageHeaderParser$ImageType$onNavigationEvent;

    const-string v0, "Xing"

    .line 98
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/FileUtil;->onMessageChannelReady:I

    const-string v0, "Info"

    .line 99
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/FileUtil;->onPostMessage:I

    const-string v0, "VBRI"

    .line 100
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/FileUtil;->extraCallback:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Lo/FileUtil;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 131
    invoke-direct {p0, p1, v0, v1}, Lo/FileUtil;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Lo/FileUtil;->ICustomTabsCallback$Stub:I

    .line 141
    iput-wide p2, p0, Lo/FileUtil;->onRelationshipValidationResult:J

    .line 142
    new-instance p1, Lo/DreamAppGlideModule;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object p1, p0, Lo/FileUtil;->onTransact:Lo/DreamAppGlideModule;

    .line 143
    new-instance p1, Lo/ApiResponse;

    invoke-direct {p1}, Lo/ApiResponse;-><init>()V

    iput-object p1, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    .line 144
    new-instance p1, Lo/SessionParams;

    invoke-direct {p1}, Lo/SessionParams;-><init>()V

    iput-object p1, p0, Lo/FileUtil;->asBinder:Lo/SessionParams;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 145
    iput-wide p1, p0, Lo/FileUtil;->extraCommand:J

    .line 146
    new-instance p1, Lo/ScreenView;

    invoke-direct {p1}, Lo/ScreenView;-><init>()V

    iput-object p1, p0, Lo/FileUtil;->warmup:Lo/ScreenView;

    return-void
.end method

.method private static ICustomTabsCallback(Lo/callAPI;J)Lo/initialiseNPCICL;
    .locals 4

    if-eqz p0, :cond_1

    .line 456
    invoke-virtual {p0}, Lo/callAPI;->ICustomTabsCallback()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 458
    invoke-virtual {p0, v1}, Lo/callAPI;->onPostMessage(I)Lo/callAPI$onPostMessage;

    move-result-object v2

    .line 459
    instance-of v3, v2, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;

    if-eqz v3, :cond_0

    .line 460
    check-cast v2, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;

    invoke-static {p1, p2, v2}, Lo/initialiseNPCICL;->extraCallback(JLo/DefaultImageHeaderParser$Reader$EndOfFileException;)Lo/initialiseNPCICL;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private ICustomTabsCallback(Lo/Event$Action;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lo/FileUtil;->updateVisuals:Lo/FileUtil$onNavigationEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v0}, Lo/FileUtil$onNavigationEvent;->extraCallback()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 355
    invoke-interface {p1}, Lo/Event$Action;->onNavigationEvent()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    .line 360
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/FileUtil;->onTransact:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v2, v1}, Lo/Event$Action;->onNavigationEvent([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return v1

    :cond_1
    return v3

    :catch_0
    return v1
.end method

.method private extraCallback(Lo/Event$Action;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/16 v0, 0x4000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    .line 279
    :goto_0
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    .line 280
    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-nez v7, :cond_5

    .line 283
    iget v1, p0, Lo/FileUtil;->ICustomTabsCallback$Stub:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 284
    :cond_2
    sget-object v1, Lo/FileUtil;->ICustomTabsCallback:Lo/ImageHeaderParser$ImageType$onNavigationEvent;

    .line 286
    :goto_2
    iget-object v2, p0, Lo/FileUtil;->warmup:Lo/ScreenView;

    invoke-virtual {v2, p1, v1}, Lo/ScreenView;->onMessageChannelReady(Lo/Event$Action;Lo/ImageHeaderParser$ImageType$onNavigationEvent;)Lo/callAPI;

    move-result-object v1

    iput-object v1, p0, Lo/FileUtil;->newSession:Lo/callAPI;

    if-eqz v1, :cond_3

    .line 288
    iget-object v2, p0, Lo/FileUtil;->asBinder:Lo/SessionParams;

    invoke-virtual {v2, v1}, Lo/SessionParams;->extraCallback(Lo/callAPI;)Z

    .line 290
    :cond_3
    invoke-interface {p1}, Lo/Event$Action;->onNavigationEvent()J

    move-result-wide v1

    long-to-int v2, v1

    if-nez p2, :cond_4

    .line 292
    invoke-interface {p1, v2}, Lo/Event$Action;->extraCallback(I)V

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 296
    :goto_4
    invoke-direct {p0, p1}, Lo/FileUtil;->ICustomTabsCallback(Lo/Event$Action;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-lez v3, :cond_6

    goto :goto_7

    .line 301
    :cond_6
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 303
    :cond_7
    iget-object v7, p0, Lo/FileUtil;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v7, v6}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 304
    iget-object v7, p0, Lo/FileUtil;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v7}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v7

    if-eqz v1, :cond_8

    int-to-long v8, v1

    .line 307
    invoke-static {v7, v8, v9}, Lo/FileUtil;->onPostMessage(IJ)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 308
    :cond_8
    invoke-static {v7}, Lo/ApiResponse;->onNavigationEvent(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_d

    :cond_9
    add-int/lit8 v1, v4, 0x1

    if-ne v4, v0, :cond_b

    if-eqz p2, :cond_a

    return v6

    .line 312
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Searched too many bytes."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    if-eqz p2, :cond_c

    .line 319
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    add-int v3, v2, v1

    .line 320
    invoke-interface {p1, v3}, Lo/Event$Action;->onNavigationEvent(I)V

    goto :goto_5

    .line 322
    :cond_c
    invoke-interface {p1, v5}, Lo/Event$Action;->extraCallback(I)V

    :goto_5
    move v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_e

    .line 328
    iget-object v1, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    invoke-static {v7, v1}, Lo/ApiResponse;->ICustomTabsCallback(ILo/ApiResponse;)Z

    move v1, v7

    goto :goto_6

    :cond_e
    const/4 v7, 0x4

    if-eq v3, v7, :cond_f

    :goto_6
    add-int/lit8 v8, v8, -0x4

    .line 333
    invoke-interface {p1, v8}, Lo/Event$Action;->onNavigationEvent(I)V

    goto :goto_4

    :cond_f
    :goto_7
    if-eqz p2, :cond_10

    add-int/2addr v2, v4

    .line 338
    invoke-interface {p1, v2}, Lo/Event$Action;->extraCallback(I)V

    goto :goto_8

    .line 340
    :cond_10
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    .line 342
    :goto_8
    iput v1, p0, Lo/FileUtil;->ICustomTabsService:I

    return v5
.end method

.method private static onMessageChannelReady(Lo/DreamAppGlideModule;I)I
    .locals 2

    .line 437
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1

    .line 438
    invoke-virtual {p0, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 439
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result p1

    .line 440
    sget v0, Lo/FileUtil;->onMessageChannelReady:I

    if-eq p1, v0, :cond_0

    sget v0, Lo/FileUtil;->onPostMessage:I

    if-ne p1, v0, :cond_1

    :cond_0
    return p1

    .line 444
    :cond_1
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result p1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    const/16 p1, 0x24

    .line 445
    invoke-virtual {p0, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 446
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result p0

    sget p1, Lo/FileUtil;->extraCallback:I

    if-ne p0, p1, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private onMessageChannelReady(Lo/Event$Action;)Lo/FileUtil$onNavigationEvent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lo/FileUtil;->onTransact:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lo/Event$Action;->extraCallback([BII)V

    .line 419
    iget-object v0, p0, Lo/FileUtil;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v0, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 420
    iget-object v0, p0, Lo/FileUtil;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    iget-object v1, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    invoke-static {v0, v1}, Lo/ApiResponse;->ICustomTabsCallback(ILo/ApiResponse;)Z

    .line 421
    new-instance v0, Lo/handleInit;

    invoke-interface {p1}, Lo/Event$Action;->onPostMessage()J

    move-result-wide v3

    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v5

    iget-object v7, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/handleInit;-><init>(JJLo/ApiResponse;)V

    return-object v0
.end method

.method private onNavigationEvent(Lo/Event$Action;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 232
    iget v0, p0, Lo/FileUtil;->mayLaunchUrl:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 233
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    .line 234
    invoke-direct {p0, p1}, Lo/FileUtil;->ICustomTabsCallback(Lo/Event$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 237
    :cond_0
    iget-object v0, p0, Lo/FileUtil;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v0, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 238
    iget-object v0, p0, Lo/FileUtil;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    .line 239
    iget v4, p0, Lo/FileUtil;->ICustomTabsService:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lo/FileUtil;->onPostMessage(IJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 240
    invoke-static {v0}, Lo/ApiResponse;->onNavigationEvent(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    iget-object v4, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    invoke-static {v0, v4}, Lo/ApiResponse;->ICustomTabsCallback(ILo/ApiResponse;)Z

    .line 247
    iget-wide v4, p0, Lo/FileUtil;->extraCommand:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 248
    iget-object v0, p0, Lo/FileUtil;->updateVisuals:Lo/FileUtil$onNavigationEvent;

    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lo/FileUtil$onNavigationEvent;->onNavigationEvent(J)J

    move-result-wide v4

    iput-wide v4, p0, Lo/FileUtil;->extraCommand:J

    .line 249
    iget-wide v4, p0, Lo/FileUtil;->onRelationshipValidationResult:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lo/FileUtil;->updateVisuals:Lo/FileUtil$onNavigationEvent;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Lo/FileUtil$onNavigationEvent;->onNavigationEvent(J)J

    move-result-wide v4

    .line 251
    iget-wide v6, p0, Lo/FileUtil;->extraCommand:J

    iget-wide v8, p0, Lo/FileUtil;->onRelationshipValidationResult:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lo/FileUtil;->extraCommand:J

    .line 254
    :cond_2
    iget-object v0, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    iget v0, v0, Lo/ApiResponse;->ICustomTabsCallback:I

    iput v0, p0, Lo/FileUtil;->mayLaunchUrl:I

    goto :goto_1

    .line 242
    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Lo/Event$Action;->extraCallback(I)V

    .line 243
    iput v3, p0, Lo/FileUtil;->ICustomTabsService:I

    return v3

    .line 256
    :cond_4
    :goto_1
    iget-object v0, p0, Lo/FileUtil;->ICustomTabsCallback$Stub$Proxy:Lo/CryptLib;

    iget v4, p0, Lo/FileUtil;->mayLaunchUrl:I

    invoke-interface {v0, p1, v4, v1}, Lo/CryptLib;->onNavigationEvent(Lo/Event$Action;IZ)I

    move-result p1

    if-ne p1, v2, :cond_5

    return v2

    .line 260
    :cond_5
    iget v0, p0, Lo/FileUtil;->mayLaunchUrl:I

    sub-int/2addr v0, p1

    iput v0, p0, Lo/FileUtil;->mayLaunchUrl:I

    if-lez v0, :cond_6

    return v3

    .line 264
    :cond_6
    iget-wide v0, p0, Lo/FileUtil;->extraCommand:J

    iget-wide v4, p0, Lo/FileUtil;->requestPostMessageChannel:J

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    iget-object p1, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    iget p1, p1, Lo/ApiResponse;->onNavigationEvent:I

    int-to-long v6, p1

    div-long/2addr v4, v6

    add-long v7, v0, v4

    .line 265
    iget-object v6, p0, Lo/FileUtil;->ICustomTabsCallback$Stub$Proxy:Lo/CryptLib;

    const/4 v9, 0x1

    iget-object p1, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    iget v10, p1, Lo/ApiResponse;->ICustomTabsCallback:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    .line 267
    iget-wide v0, p0, Lo/FileUtil;->requestPostMessageChannel:J

    iget-object p1, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    iget p1, p1, Lo/ApiResponse;->asInterface:I

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lo/FileUtil;->requestPostMessageChannel:J

    .line 268
    iput v3, p0, Lo/FileUtil;->mayLaunchUrl:I

    return v3
.end method

.method private onPostMessage(Lo/Event$Action;)Lo/FileUtil$onNavigationEvent;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 380
    new-instance v5, Lo/DreamAppGlideModule;

    iget-object v0, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    iget v0, v0, Lo/ApiResponse;->ICustomTabsCallback:I

    invoke-direct {v5, v0}, Lo/DreamAppGlideModule;-><init>(I)V

    .line 381
    iget-object v0, v5, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget-object v1, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    iget v1, v1, Lo/ApiResponse;->ICustomTabsCallback:I

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v1}, Lo/Event$Action;->extraCallback([BII)V

    .line 382
    iget-object v0, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    iget v0, v0, Lo/ApiResponse;->onPostMessage:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x15

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    iget v0, v0, Lo/ApiResponse;->extraCallback:I

    if-eq v0, v1, :cond_1

    const/16 v2, 0x24

    const/16 v7, 0x24

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    iget v0, v0, Lo/ApiResponse;->extraCallback:I

    if-eq v0, v1, :cond_2

    :cond_1
    const/16 v7, 0x15

    goto :goto_0

    :cond_2
    const/16 v2, 0xd

    const/16 v7, 0xd

    .line 385
    :goto_0
    invoke-static {v5, v7}, Lo/FileUtil;->onMessageChannelReady(Lo/DreamAppGlideModule;I)I

    move-result v8

    .line 387
    sget v0, Lo/FileUtil;->onMessageChannelReady:I

    if-eq v8, v0, :cond_5

    sget v0, Lo/FileUtil;->onPostMessage:I

    if-ne v8, v0, :cond_3

    goto :goto_1

    .line 402
    :cond_3
    sget v0, Lo/FileUtil;->extraCallback:I

    if-ne v8, v0, :cond_4

    .line 403
    invoke-interface {p1}, Lo/Event$Action;->onPostMessage()J

    move-result-wide v0

    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v2

    iget-object v4, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    invoke-static/range {v0 .. v5}, Lo/getCredentials;->extraCallback(JJLo/ApiResponse;Lo/DreamAppGlideModule;)Lo/getCredentials;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    iget v1, v1, Lo/ApiResponse;->ICustomTabsCallback:I

    invoke-interface {p1, v1}, Lo/Event$Action;->extraCallback(I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 408
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    goto :goto_2

    .line 388
    :cond_5
    :goto_1
    invoke-interface {p1}, Lo/Event$Action;->onPostMessage()J

    move-result-wide v0

    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v2

    iget-object v4, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    invoke-static/range {v0 .. v5}, Lo/fetchData;->ICustomTabsCallback(JJLo/ApiResponse;Lo/DreamAppGlideModule;)Lo/fetchData;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 389
    iget-object v1, p0, Lo/FileUtil;->asBinder:Lo/SessionParams;

    invoke-virtual {v1}, Lo/SessionParams;->onNavigationEvent()Z

    move-result v1

    if-nez v1, :cond_6

    .line 391
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    add-int/lit16 v7, v7, 0x8d

    .line 392
    invoke-interface {p1, v7}, Lo/Event$Action;->onNavigationEvent(I)V

    .line 393
    iget-object v1, p0, Lo/FileUtil;->onTransact:Lo/DreamAppGlideModule;

    iget-object v1, v1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v2, 0x3

    invoke-interface {p1, v1, v6, v2}, Lo/Event$Action;->extraCallback([BII)V

    .line 394
    iget-object v1, p0, Lo/FileUtil;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v1, v6}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 395
    iget-object v1, p0, Lo/FileUtil;->asBinder:Lo/SessionParams;

    iget-object v2, p0, Lo/FileUtil;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v2}, Lo/DreamAppGlideModule;->newSession()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/SessionParams;->onNavigationEvent(I)Z

    .line 397
    :cond_6
    iget-object v1, p0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    iget v1, v1, Lo/ApiResponse;->ICustomTabsCallback:I

    invoke-interface {p1, v1}, Lo/Event$Action;->extraCallback(I)V

    if-eqz v0, :cond_7

    .line 398
    invoke-interface {v0}, Lo/FileUtil$onNavigationEvent;->onNavigationEvent()Z

    move-result v1

    if-nez v1, :cond_7

    sget v1, Lo/FileUtil;->onPostMessage:I

    if-ne v8, v1, :cond_7

    .line 400
    invoke-direct {p0, p1}, Lo/FileUtil;->onMessageChannelReady(Lo/Event$Action;)Lo/FileUtil$onNavigationEvent;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_2
    return-object v0
.end method

.method static synthetic onPostMessage(IIIII)Z
    .locals 3

    const/4 v0, 0x2

    const/16 v1, 0x4d

    const/16 v2, 0x43

    if-ne p1, v2, :cond_0

    const/16 v2, 0x4f

    if-ne p2, v2, :cond_0

    if-ne p3, v1, :cond_0

    if-eq p4, v1, :cond_1

    if-eq p0, v0, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_2

    if-ne p3, p1, :cond_2

    const/16 p1, 0x54

    if-eq p4, p1, :cond_1

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static onPostMessage(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final extraCallback(Lo/ExceptionTracker;)V
    .locals 2

    .line 158
    iput-object p1, p0, Lo/FileUtil;->getInterfaceDescriptor:Lo/ExceptionTracker;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 159
    invoke-interface {p1, v0, v1}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object p1

    iput-object p1, p0, Lo/FileUtil;->ICustomTabsCallback$Stub$Proxy:Lo/CryptLib;

    .line 160
    iget-object p1, p0, Lo/FileUtil;->getInterfaceDescriptor:Lo/ExceptionTracker;

    invoke-interface {p1}, Lo/ExceptionTracker;->onPostMessage()V

    return-void
.end method

.method public final extraCallback(Lo/Event$Action;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 153
    invoke-direct {p0, p1, v0}, Lo/FileUtil;->extraCallback(Lo/Event$Action;Z)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Lo/Event$Action;Lo/SessionInfo;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 179
    iget v2, v0, Lo/FileUtil;->ICustomTabsService:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 181
    :try_start_0
    invoke-direct {v0, v1, v2}, Lo/FileUtil;->extraCallback(Lo/Event$Action;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    return v1

    .line 186
    :cond_0
    :goto_0
    iget-object v2, v0, Lo/FileUtil;->updateVisuals:Lo/FileUtil$onNavigationEvent;

    if-nez v2, :cond_6

    .line 189
    invoke-direct/range {p0 .. p1}, Lo/FileUtil;->onPostMessage(Lo/Event$Action;)Lo/FileUtil$onNavigationEvent;

    move-result-object v2

    .line 190
    iget-object v3, v0, Lo/FileUtil;->newSession:Lo/callAPI;

    invoke-interface/range {p1 .. p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lo/FileUtil;->ICustomTabsCallback(Lo/callAPI;J)Lo/initialiseNPCICL;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 192
    iput-object v3, v0, Lo/FileUtil;->updateVisuals:Lo/FileUtil$onNavigationEvent;

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 194
    iput-object v2, v0, Lo/FileUtil;->updateVisuals:Lo/FileUtil$onNavigationEvent;

    .line 196
    :cond_2
    :goto_1
    iget-object v2, v0, Lo/FileUtil;->updateVisuals:Lo/FileUtil$onNavigationEvent;

    if-eqz v2, :cond_3

    .line 197
    invoke-interface {v2}, Lo/FileUtil$onNavigationEvent;->onNavigationEvent()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, v0, Lo/FileUtil;->ICustomTabsCallback$Stub:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 198
    :cond_3
    invoke-direct/range {p0 .. p1}, Lo/FileUtil;->onMessageChannelReady(Lo/Event$Action;)Lo/FileUtil$onNavigationEvent;

    move-result-object v2

    iput-object v2, v0, Lo/FileUtil;->updateVisuals:Lo/FileUtil$onNavigationEvent;

    .line 200
    :cond_4
    iget-object v2, v0, Lo/FileUtil;->getInterfaceDescriptor:Lo/ExceptionTracker;

    iget-object v3, v0, Lo/FileUtil;->updateVisuals:Lo/FileUtil$onNavigationEvent;

    invoke-interface {v2, v3}, Lo/ExceptionTracker;->onNavigationEvent(Lo/UpiSdkCallback;)V

    .line 201
    iget-object v2, v0, Lo/FileUtil;->ICustomTabsCallback$Stub$Proxy:Lo/CryptLib;

    const/4 v3, 0x0

    iget-object v4, v0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    iget-object v4, v4, Lo/ApiResponse;->onMessageChannelReady:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v7, 0x1000

    iget-object v8, v0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    iget v8, v8, Lo/ApiResponse;->extraCallback:I

    iget-object v9, v0, Lo/FileUtil;->asInterface:Lo/ApiResponse;

    iget v9, v9, Lo/ApiResponse;->onNavigationEvent:I

    const/4 v10, -0x1

    iget-object v11, v0, Lo/FileUtil;->asBinder:Lo/SessionParams;

    iget v11, v11, Lo/SessionParams;->onPostMessage:I

    iget-object v12, v0, Lo/FileUtil;->asBinder:Lo/SessionParams;

    iget v12, v12, Lo/SessionParams;->onNavigationEvent:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    iget v15, v0, Lo/FileUtil;->ICustomTabsCallback$Stub:I

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    goto :goto_2

    :cond_5
    iget-object v15, v0, Lo/FileUtil;->newSession:Lo/callAPI;

    :goto_2
    move-object/from16 v17, v15

    const/4 v15, 0x0

    .line 202
    invoke-static/range {v3 .. v17}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lo/generateLink;ILjava/lang/String;Lo/callAPI;)Lo/p$a;

    move-result-object v3

    .line 201
    invoke-interface {v2, v3}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    .line 218
    invoke-interface/range {p1 .. p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v2

    iput-wide v2, v0, Lo/FileUtil;->postMessage:J

    goto :goto_3

    .line 219
    :cond_6
    iget-wide v2, v0, Lo/FileUtil;->postMessage:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    .line 220
    invoke-interface/range {p1 .. p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v2

    .line 221
    iget-wide v4, v0, Lo/FileUtil;->postMessage:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_7

    sub-long/2addr v4, v2

    long-to-int v2, v4

    .line 223
    invoke-interface {v1, v2}, Lo/Event$Action;->extraCallback(I)V

    .line 226
    :cond_7
    :goto_3
    invoke-direct/range {p0 .. p1}, Lo/FileUtil;->onNavigationEvent(Lo/Event$Action;)I

    move-result v1

    return v1
.end method
