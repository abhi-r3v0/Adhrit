.class public final Lo/getSIMOperators;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPermissions;


# static fields
.field private static final extraCallback:[B


# instance fields
.field private final ICustomTabsCallback:Lo/PublisherException;

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:I

.field private ICustomTabsService$Stub:J

.field private ICustomTabsService$Stub$Proxy:Lo/CryptLib;

.field private asBinder:Lo/CryptLib;

.field private asInterface:Lo/CryptLib;

.field private extraCommand:I

.field private getInterfaceDescriptor:Z

.field private mayLaunchUrl:Z

.field private newSession:Z

.field private final onMessageChannelReady:Lo/DreamAppGlideModule;

.field private final onNavigationEvent:Z

.field private final onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:Ljava/lang/String;

.field private onTransact:I

.field private postMessage:J

.field private requestPostMessageChannel:I

.field private updateVisuals:J

.field private warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 59
    fill-array-data v0, :array_0

    sput-object v0, Lo/getSIMOperators;->extraCallback:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0}, Lo/getSIMOperators;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lo/PublisherException;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lo/PublisherException;-><init>([B)V

    iput-object v0, p0, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    .line 109
    new-instance v0, Lo/DreamAppGlideModule;

    sget-object v1, Lo/getSIMOperators;->extraCallback:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lo/DreamAppGlideModule;-><init>([B)V

    iput-object v0, p0, Lo/getSIMOperators;->onMessageChannelReady:Lo/DreamAppGlideModule;

    .line 110
    invoke-direct {p0}, Lo/getSIMOperators;->extraCallback()V

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lo/getSIMOperators;->warmup:I

    .line 112
    iput v0, p0, Lo/getSIMOperators;->ICustomTabsCallback$Stub$Proxy:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 113
    iput-wide v0, p0, Lo/getSIMOperators;->updateVisuals:J

    .line 114
    iput-boolean p1, p0, Lo/getSIMOperators;->onNavigationEvent:Z

    .line 115
    iput-object p2, p0, Lo/getSIMOperators;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lo/getSIMOperators;->newSession:Z

    .line 193
    invoke-direct {p0}, Lo/getSIMOperators;->extraCallback()V

    return-void
.end method

.method private ICustomTabsCallback(Lo/DreamAppGlideModule;)V
    .locals 3

    .line 323
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    iget-object v0, v0, Lo/PublisherException;->onMessageChannelReady:[B

    const/4 v1, 0x0

    iget-object v2, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result p1

    aget-byte p1, v2, p1

    aput-byte p1, v0, v1

    .line 330
    iget-object p1, p0, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lo/PublisherException;->onMessageChannelReady(I)V

    .line 331
    iget-object p1, p0, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result p1

    .line 332
    iget v0, p0, Lo/getSIMOperators;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eq p1, v0, :cond_1

    .line 335
    invoke-direct {p0}, Lo/getSIMOperators;->ICustomTabsCallback()V

    return-void

    .line 339
    :cond_1
    iget-boolean v0, p0, Lo/getSIMOperators;->newSession:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lo/getSIMOperators;->newSession:Z

    .line 341
    iget v0, p0, Lo/getSIMOperators;->requestPostMessageChannel:I

    iput v0, p0, Lo/getSIMOperators;->warmup:I

    .line 342
    iput p1, p0, Lo/getSIMOperators;->ICustomTabsCallback$Stub$Proxy:I

    .line 344
    :cond_2
    invoke-direct {p0}, Lo/getSIMOperators;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public static ICustomTabsCallback(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private ICustomTabsCallback(Lo/DreamAppGlideModule;I)Z
    .locals 7

    add-int/lit8 v0, p2, 0x1

    .line 371
    invoke-virtual {p1, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 372
    iget-object v0, p0, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    iget-object v0, v0, Lo/PublisherException;->onMessageChannelReady:[B

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lo/getSIMOperators;->onPostMessage(Lo/DreamAppGlideModule;[BI)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 376
    :cond_0
    iget-object v0, p0, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lo/PublisherException;->onMessageChannelReady(I)V

    .line 377
    iget-object v0, p0, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    .line 378
    iget v4, p0, Lo/getSIMOperators;->warmup:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-eq v0, v4, :cond_1

    return v2

    .line 382
    :cond_1
    iget v4, p0, Lo/getSIMOperators;->ICustomTabsCallback$Stub$Proxy:I

    if-eq v4, v5, :cond_4

    .line 383
    iget-object v4, p0, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    iget-object v4, v4, Lo/PublisherException;->onMessageChannelReady:[B

    invoke-direct {p0, p1, v4, v1}, Lo/getSIMOperators;->onPostMessage(Lo/DreamAppGlideModule;[BI)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    .line 386
    :cond_2
    iget-object v4, p0, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lo/PublisherException;->onMessageChannelReady(I)V

    .line 387
    iget-object v4, p0, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v4, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    .line 388
    iget v6, p0, Lo/getSIMOperators;->ICustomTabsCallback$Stub$Proxy:I

    if-eq v4, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, p2, 0x2

    .line 391
    invoke-virtual {p1, v4}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 396
    :cond_4
    iget-object v4, p0, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    iget-object v4, v4, Lo/PublisherException;->onMessageChannelReady:[B

    invoke-direct {p0, p1, v4, v3}, Lo/getSIMOperators;->onPostMessage(Lo/DreamAppGlideModule;[BI)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    .line 399
    :cond_5
    iget-object v3, p0, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lo/PublisherException;->onMessageChannelReady(I)V

    .line 400
    iget-object v3, p0, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_6

    return v2

    :cond_6
    add-int/2addr p2, v3

    add-int/lit8 v3, p2, 0x1

    .line 406
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v4

    if-lt v3, v4, :cond_7

    return v1

    .line 409
    :cond_7
    iget-object v4, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    aget-byte p2, v4, p2

    iget-object v4, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    aget-byte v4, v4, v3

    invoke-direct {p0, p2, v4}, Lo/getSIMOperators;->extraCallback(BB)Z

    move-result p2

    if-eqz p2, :cond_9

    iget p2, p0, Lo/getSIMOperators;->warmup:I

    if-eq p2, v5, :cond_8

    iget-object p1, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    aget-byte p1, p1, v3

    and-int/lit8 p1, p1, 0x8

    shr-int/lit8 p1, p1, 0x3

    if-ne p1, v0, :cond_9

    :cond_8
    return v1

    :cond_9
    return v2
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 1

    const/4 v0, 0x3

    .line 253
    iput v0, p0, Lo/getSIMOperators;->ICustomTabsCallback$Stub:I

    const/4 v0, 0x0

    .line 254
    iput v0, p0, Lo/getSIMOperators;->onTransact:I

    return-void
.end method

.method private asBinder()V
    .locals 9

    .line 432
    iget-object v0, p0, Lo/getSIMOperators;->asBinder:Lo/CryptLib;

    iget-object v1, p0, Lo/getSIMOperators;->onMessageChannelReady:Lo/DreamAppGlideModule;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 433
    iget-object v0, p0, Lo/getSIMOperators;->onMessageChannelReady:Lo/DreamAppGlideModule;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 434
    iget-object v4, p0, Lo/getSIMOperators;->asBinder:Lo/CryptLib;

    iget-object v0, p0, Lo/getSIMOperators;->onMessageChannelReady:Lo/DreamAppGlideModule;

    .line 435
    invoke-virtual {v0}, Lo/DreamAppGlideModule;->extraCommand()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    move-object v3, p0

    .line 434
    invoke-direct/range {v3 .. v8}, Lo/getSIMOperators;->onPostMessage(Lo/CryptLib;JII)V

    return-void
.end method

.method private asInterface()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 442
    iget-object v0, v6, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/PublisherException;->onMessageChannelReady(I)V

    .line 444
    iget-boolean v0, v6, Lo/getSIMOperators;->mayLaunchUrl:Z

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 445
    iget-object v0, v6, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    if-eq v0, v2, :cond_0

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Detected audio object type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AdtsReader"

    invoke-static {v4, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 460
    :cond_0
    iget-object v4, v6, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v4, v1}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 461
    iget-object v4, v6, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    .line 463
    iget v5, v6, Lo/getSIMOperators;->ICustomTabsCallback$Stub$Proxy:I

    .line 464
    invoke-static {v0, v5, v4}, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->onNavigationEvent(III)[B

    move-result-object v0

    .line 466
    invoke-static {v0}, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->onNavigationEvent([B)Landroid/util/Pair;

    move-result-object v4

    .line 469
    iget-object v7, v6, Lo/getSIMOperators;->onRelationshipValidationResult:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 470
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v12

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 471
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v6, Lo/getSIMOperators;->onPostMessage:Ljava/lang/String;

    const-string v8, "audio/mp4a-latm"

    move-object/from16 v17, v0

    .line 469
    invoke-static/range {v7 .. v17}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lo/generateLink;ILjava/lang/String;)Lo/p$a;

    move-result-object v0

    const-wide/32 v4, 0x3d090000

    .line 474
    iget v7, v0, Lo/p$a;->validateRelationship:I

    int-to-long v7, v7

    div-long/2addr v4, v7

    iput-wide v4, v6, Lo/getSIMOperators;->updateVisuals:J

    .line 475
    iget-object v4, v6, Lo/getSIMOperators;->asInterface:Lo/CryptLib;

    invoke-interface {v4, v0}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    .line 476
    iput-boolean v3, v6, Lo/getSIMOperators;->mayLaunchUrl:Z

    goto :goto_0

    .line 478
    :cond_1
    iget-object v0, v6, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 481
    :goto_0
    iget-object v0, v6, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 482
    iget-object v0, v6, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 483
    iget-boolean v1, v6, Lo/getSIMOperators;->getInterfaceDescriptor:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x2

    :cond_2
    move v5, v0

    .line 487
    iget-object v1, v6, Lo/getSIMOperators;->asInterface:Lo/CryptLib;

    iget-wide v2, v6, Lo/getSIMOperators;->updateVisuals:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lo/getSIMOperators;->onPostMessage(Lo/CryptLib;JII)V

    return-void
.end method

.method private extraCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 216
    iput v0, p0, Lo/getSIMOperators;->ICustomTabsCallback$Stub:I

    .line 217
    iput v0, p0, Lo/getSIMOperators;->onTransact:I

    const/16 v0, 0x100

    .line 218
    iput v0, p0, Lo/getSIMOperators;->ICustomTabsService:I

    return-void
.end method

.method private extraCallback(Lo/DreamAppGlideModule;)V
    .locals 7

    .line 270
    iget-object v0, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 271
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v1

    .line 272
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_9

    add-int/lit8 v3, v1, 0x1

    .line 274
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 275
    iget v4, p0, Lo/getSIMOperators;->ICustomTabsService:I

    const/16 v5, 0x200

    if-ne v4, v5, :cond_3

    int-to-byte v4, v1

    const/4 v6, -0x1

    invoke-direct {p0, v6, v4}, Lo/getSIMOperators;->extraCallback(BB)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 276
    iget-boolean v4, p0, Lo/getSIMOperators;->newSession:Z

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, -0x2

    .line 277
    invoke-direct {p0, p1, v4}, Lo/getSIMOperators;->ICustomTabsCallback(Lo/DreamAppGlideModule;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    and-int/lit8 v0, v1, 0x8

    shr-int/lit8 v0, v0, 0x3

    .line 278
    iput v0, p0, Lo/getSIMOperators;->requestPostMessageChannel:I

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 279
    :goto_1
    iput-boolean v0, p0, Lo/getSIMOperators;->getInterfaceDescriptor:Z

    .line 280
    iget-boolean v0, p0, Lo/getSIMOperators;->newSession:Z

    if-nez v0, :cond_2

    .line 281
    invoke-direct {p0}, Lo/getSIMOperators;->onRelationshipValidationResult()V

    goto :goto_2

    .line 283
    :cond_2
    invoke-direct {p0}, Lo/getSIMOperators;->ICustomTabsCallback$Stub()V

    .line 285
    :goto_2
    invoke-virtual {p1, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return-void

    .line 290
    :cond_3
    iget v4, p0, Lo/getSIMOperators;->ICustomTabsService:I

    or-int/2addr v1, v4

    const/16 v6, 0x149

    if-eq v1, v6, :cond_7

    const/16 v6, 0x1ff

    if-eq v1, v6, :cond_6

    const/16 v5, 0x344

    if-eq v1, v5, :cond_5

    const/16 v5, 0x433

    if-eq v1, v5, :cond_4

    const/16 v1, 0x100

    if-eq v4, v1, :cond_8

    .line 308
    iput v1, p0, Lo/getSIMOperators;->ICustomTabsService:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 301
    :cond_4
    invoke-direct {p0}, Lo/getSIMOperators;->onTransact()V

    .line 302
    invoke-virtual {p1, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return-void

    :cond_5
    const/16 v1, 0x400

    .line 298
    iput v1, p0, Lo/getSIMOperators;->ICustomTabsService:I

    goto :goto_3

    .line 292
    :cond_6
    iput v5, p0, Lo/getSIMOperators;->ICustomTabsService:I

    goto :goto_3

    :cond_7
    const/16 v1, 0x300

    .line 295
    iput v1, p0, Lo/getSIMOperators;->ICustomTabsService:I

    :cond_8
    :goto_3
    move v1, v3

    goto :goto_0

    .line 314
    :cond_9
    invoke-virtual {p1, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return-void
.end method

.method private extraCallback(BB)Z
    .locals 0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    .line 416
    invoke-static {p1}, Lo/getSIMOperators;->ICustomTabsCallback(I)Z

    move-result p1

    return p1
.end method

.method private onNavigationEvent(Lo/DreamAppGlideModule;[BI)Z
    .locals 2

    .line 206
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    iget v1, p0, Lo/getSIMOperators;->onTransact:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 207
    iget v1, p0, Lo/getSIMOperators;->onTransact:I

    invoke-virtual {p1, p2, v1, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 208
    iget p1, p0, Lo/getSIMOperators;->onTransact:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/getSIMOperators;->onTransact:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onPostMessage(Lo/CryptLib;JII)V
    .locals 1

    const/4 v0, 0x4

    .line 242
    iput v0, p0, Lo/getSIMOperators;->ICustomTabsCallback$Stub:I

    .line 243
    iput p4, p0, Lo/getSIMOperators;->onTransact:I

    .line 244
    iput-object p1, p0, Lo/getSIMOperators;->ICustomTabsService$Stub$Proxy:Lo/CryptLib;

    .line 245
    iput-wide p2, p0, Lo/getSIMOperators;->ICustomTabsService$Stub:J

    .line 246
    iput p5, p0, Lo/getSIMOperators;->extraCommand:I

    return-void
.end method

.method private onPostMessage(Lo/DreamAppGlideModule;)V
    .locals 7

    .line 494
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    iget v1, p0, Lo/getSIMOperators;->extraCommand:I

    iget v2, p0, Lo/getSIMOperators;->onTransact:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 495
    iget-object v1, p0, Lo/getSIMOperators;->ICustomTabsService$Stub$Proxy:Lo/CryptLib;

    invoke-interface {v1, p1, v0}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 496
    iget p1, p0, Lo/getSIMOperators;->onTransact:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/getSIMOperators;->onTransact:I

    .line 497
    iget v4, p0, Lo/getSIMOperators;->extraCommand:I

    if-ne p1, v4, :cond_0

    .line 498
    iget-object v0, p0, Lo/getSIMOperators;->ICustomTabsService$Stub$Proxy:Lo/CryptLib;

    iget-wide v1, p0, Lo/getSIMOperators;->postMessage:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    .line 499
    iget-wide v0, p0, Lo/getSIMOperators;->postMessage:J

    iget-wide v2, p0, Lo/getSIMOperators;->ICustomTabsService$Stub:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/getSIMOperators;->postMessage:J

    .line 500
    invoke-direct {p0}, Lo/getSIMOperators;->extraCallback()V

    :cond_0
    return-void
.end method

.method private onPostMessage(Lo/DreamAppGlideModule;[BI)Z
    .locals 2

    .line 421
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p3, :cond_0

    return v1

    .line 424
    :cond_0
    invoke-virtual {p1, p2, v1, p3}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    const/4 p1, 0x1

    return p1
.end method

.method private onRelationshipValidationResult()V
    .locals 1

    const/4 v0, 0x1

    .line 259
    iput v0, p0, Lo/getSIMOperators;->ICustomTabsCallback$Stub:I

    const/4 v0, 0x0

    .line 260
    iput v0, p0, Lo/getSIMOperators;->onTransact:I

    return-void
.end method

.method private onTransact()V
    .locals 2

    const/4 v0, 0x2

    .line 226
    iput v0, p0, Lo/getSIMOperators;->ICustomTabsCallback$Stub:I

    .line 227
    sget-object v0, Lo/getSIMOperators;->extraCallback:[B

    array-length v0, v0

    iput v0, p0, Lo/getSIMOperators;->onTransact:I

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lo/getSIMOperators;->extraCommand:I

    .line 229
    iget-object v1, p0, Lo/getSIMOperators;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {v1, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return-void
.end method


# virtual methods
.method public final extraCallback(JI)V
    .locals 0

    .line 145
    iput-wide p1, p0, Lo/getSIMOperators;->postMessage:J

    return-void
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 188
    iget-wide v0, p0, Lo/getSIMOperators;->updateVisuals:J

    return-wide v0
.end method

.method public final onNavigationEvent()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lo/getSIMOperators;->ICustomTabsCallback()V

    return-void
.end method

.method public final onNavigationEvent(Lo/DreamAppGlideModule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 150
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    if-lez v0, :cond_7

    .line 151
    iget v0, p0, Lo/getSIMOperators;->ICustomTabsCallback$Stub:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 170
    invoke-direct {p0, p1}, Lo/getSIMOperators;->onPostMessage(Lo/DreamAppGlideModule;)V

    goto :goto_0

    .line 173
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 164
    :cond_2
    iget-boolean v0, p0, Lo/getSIMOperators;->getInterfaceDescriptor:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    .line 165
    :goto_1
    iget-object v1, p0, Lo/getSIMOperators;->ICustomTabsCallback:Lo/PublisherException;

    iget-object v1, v1, Lo/PublisherException;->onMessageChannelReady:[B

    invoke-direct {p0, p1, v1, v0}, Lo/getSIMOperators;->onNavigationEvent(Lo/DreamAppGlideModule;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lo/getSIMOperators;->asInterface()V

    goto :goto_0

    .line 156
    :cond_4
    iget-object v0, p0, Lo/getSIMOperators;->onMessageChannelReady:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lo/getSIMOperators;->onNavigationEvent(Lo/DreamAppGlideModule;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lo/getSIMOperators;->asBinder()V

    goto :goto_0

    .line 161
    :cond_5
    invoke-direct {p0, p1}, Lo/getSIMOperators;->ICustomTabsCallback(Lo/DreamAppGlideModule;)V

    goto :goto_0

    .line 153
    :cond_6
    invoke-direct {p0, p1}, Lo/getSIMOperators;->extraCallback(Lo/DreamAppGlideModule;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
    .locals 3

    .line 130
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->extraCallback()V

    .line 131
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getSIMOperators;->onRelationshipValidationResult:Ljava/lang/String;

    .line 132
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object v0

    iput-object v0, p0, Lo/getSIMOperators;->asInterface:Lo/CryptLib;

    .line 133
    iget-boolean v0, p0, Lo/getSIMOperators;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->extraCallback()V

    .line 135
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object p1

    iput-object p1, p0, Lo/getSIMOperators;->asBinder:Lo/CryptLib;

    .line 136
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onNavigationEvent()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "application/id3"

    invoke-static {p2, v2, v1, v0, v1}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILo/generateLink;)Lo/p$a;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    return-void

    .line 139
    :cond_0
    new-instance p1, Lo/Event$Category;

    invoke-direct {p1}, Lo/Event$Category;-><init>()V

    iput-object p1, p0, Lo/getSIMOperators;->asBinder:Lo/CryptLib;

    return-void
.end method
