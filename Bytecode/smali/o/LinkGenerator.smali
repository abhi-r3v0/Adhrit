.class final Lo/LinkGenerator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:I

.field private final ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:[S

.field private ICustomTabsService$Stub:I

.field private ICustomTabsService$Stub$Proxy:I

.field private final asBinder:[S

.field private final asInterface:I

.field private final extraCallback:F

.field private extraCommand:I

.field private getInterfaceDescriptor:[S

.field private mayLaunchUrl:I

.field private newSession:I

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:F

.field private final onPostMessage:F

.field private final onRelationshipValidationResult:I

.field private onTransact:[S

.field private postMessage:I

.field private requestPostMessageChannel:I

.field private updateVisuals:I

.field private warmup:I


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lo/LinkGenerator;->ICustomTabsCallback:I

    .line 71
    iput p2, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    .line 72
    iput p3, p0, Lo/LinkGenerator;->extraCallback:F

    .line 73
    iput p4, p0, Lo/LinkGenerator;->onNavigationEvent:F

    int-to-float p3, p1

    int-to-float p4, p5

    div-float/2addr p3, p4

    .line 74
    iput p3, p0, Lo/LinkGenerator;->onPostMessage:F

    .line 75
    div-int/lit16 p3, p1, 0x190

    iput p3, p0, Lo/LinkGenerator;->ICustomTabsCallback$Stub:I

    .line 76
    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Lo/LinkGenerator;->asInterface:I

    mul-int/lit8 p1, p1, 0x2

    .line 77
    iput p1, p0, Lo/LinkGenerator;->onRelationshipValidationResult:I

    .line 78
    new-array p3, p1, [S

    iput-object p3, p0, Lo/LinkGenerator;->asBinder:[S

    mul-int p3, p1, p2

    .line 79
    new-array p3, p3, [S

    iput-object p3, p0, Lo/LinkGenerator;->onTransact:[S

    mul-int p3, p1, p2

    .line 80
    new-array p3, p3, [S

    iput-object p3, p0, Lo/LinkGenerator;->getInterfaceDescriptor:[S

    mul-int p1, p1, p2

    .line 81
    new-array p1, p1, [S

    iput-object p1, p0, Lo/LinkGenerator;->ICustomTabsService:[S

    return-void
.end method

.method private ICustomTabsCallback([SI)I
    .locals 6

    .line 288
    iget v0, p0, Lo/LinkGenerator;->ICustomTabsCallback:I

    const/16 v1, 0xfa0

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 289
    :goto_0
    iget v1, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    if-ne v1, v2, :cond_1

    if-ne v0, v2, :cond_1

    .line 290
    iget v0, p0, Lo/LinkGenerator;->ICustomTabsCallback$Stub:I

    iget v1, p0, Lo/LinkGenerator;->asInterface:I

    invoke-direct {p0, p1, p2, v0, v1}, Lo/LinkGenerator;->ICustomTabsCallback([SIII)I

    move-result p1

    goto :goto_1

    .line 292
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lo/LinkGenerator;->ICustomTabsCallback([SII)V

    .line 293
    iget-object v1, p0, Lo/LinkGenerator;->asBinder:[S

    iget v3, p0, Lo/LinkGenerator;->ICustomTabsCallback$Stub:I

    div-int/2addr v3, v0

    iget v4, p0, Lo/LinkGenerator;->asInterface:I

    div-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v3, v4}, Lo/LinkGenerator;->ICustomTabsCallback([SIII)I

    move-result v1

    if-eq v0, v2, :cond_5

    mul-int v1, v1, v0

    shl-int/lit8 v0, v0, 0x2

    sub-int v3, v1, v0

    add-int/2addr v1, v0

    .line 298
    iget v0, p0, Lo/LinkGenerator;->ICustomTabsCallback$Stub:I

    if-ge v3, v0, :cond_2

    move v3, v0

    .line 301
    :cond_2
    iget v0, p0, Lo/LinkGenerator;->asInterface:I

    if-le v1, v0, :cond_3

    move v1, v0

    .line 304
    :cond_3
    iget v0, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    if-ne v0, v2, :cond_4

    .line 305
    invoke-direct {p0, p1, p2, v3, v1}, Lo/LinkGenerator;->ICustomTabsCallback([SIII)I

    move-result p1

    goto :goto_1

    .line 307
    :cond_4
    invoke-direct {p0, p1, p2, v2}, Lo/LinkGenerator;->ICustomTabsCallback([SII)V

    .line 308
    iget-object p1, p0, Lo/LinkGenerator;->asBinder:[S

    invoke-direct {p0, p1, v5, v3, v1}, Lo/LinkGenerator;->ICustomTabsCallback([SIII)I

    move-result p1

    goto :goto_1

    :cond_5
    move p1, v1

    .line 312
    :goto_1
    iget p2, p0, Lo/LinkGenerator;->ICustomTabsService$Stub:I

    iget v0, p0, Lo/LinkGenerator;->ICustomTabsService$Stub$Proxy:I

    invoke-direct {p0, p2, v0}, Lo/LinkGenerator;->extraCallback(II)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 313
    iget p2, p0, Lo/LinkGenerator;->extraCommand:I

    goto :goto_2

    :cond_6
    move p2, p1

    .line 317
    :goto_2
    iget v0, p0, Lo/LinkGenerator;->ICustomTabsService$Stub:I

    iput v0, p0, Lo/LinkGenerator;->requestPostMessageChannel:I

    .line 318
    iput p1, p0, Lo/LinkGenerator;->extraCommand:I

    return p2
.end method

.method private ICustomTabsCallback([SIII)I
    .locals 9

    .line 237
    iget v0, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    mul-int p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt p3, p4, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, p3, :cond_0

    add-int v7, p2, v5

    .line 241
    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    .line 242
    aget-short v8, p1, v8

    sub-int/2addr v7, v8

    .line 243
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    mul-int v5, v6, v3

    mul-int v7, v0, p3

    if-ge v5, v7, :cond_1

    move v3, p3

    move v0, v6

    :cond_1
    mul-int v5, v6, v2

    mul-int v7, v4, p3

    if-le v5, v7, :cond_2

    move v2, p3

    move v4, v6

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 257
    :cond_3
    div-int/2addr v0, v3

    iput v0, p0, Lo/LinkGenerator;->ICustomTabsService$Stub:I

    .line 258
    div-int/2addr v4, v2

    iput v4, p0, Lo/LinkGenerator;->ICustomTabsService$Stub$Proxy:I

    return v3
.end method

.method private static ICustomTabsCallback(II[SI[SI[SI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    mul-int v2, p3, p1

    add-int/2addr v2, v1

    mul-int v3, p7, p1

    add-int/2addr v3, v1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p0, :cond_0

    .line 498
    aget-short v6, p4, v4

    sub-int v7, p0, v5

    mul-int v6, v6, v7

    aget-short v7, p6, v3

    mul-int v7, v7, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v2

    add-int/2addr v2, p1

    add-int/2addr v4, p1

    add-int/2addr v3, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private ICustomTabsCallback([SII)V
    .locals 6

    .line 217
    iget v0, p0, Lo/LinkGenerator;->onRelationshipValidationResult:I

    div-int/2addr v0, p3

    .line 218
    iget v1, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    mul-int p3, p3, v1

    mul-int p2, p2, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, p3, :cond_0

    mul-int v5, v2, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    .line 223
    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 225
    :cond_0
    div-int/2addr v4, p3

    .line 226
    iget-object v3, p0, Lo/LinkGenerator;->asBinder:[S

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private extraCallback()V
    .locals 8

    .line 470
    iget v0, p0, Lo/LinkGenerator;->warmup:I

    .line 471
    iget v1, p0, Lo/LinkGenerator;->extraCallback:F

    iget v2, p0, Lo/LinkGenerator;->onNavigationEvent:F

    div-float/2addr v1, v2

    .line 472
    iget v3, p0, Lo/LinkGenerator;->onPostMessage:F

    mul-float v3, v3, v2

    float-to-double v4, v1

    const-wide v6, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v2, v4, v6

    if-gtz v2, :cond_1

    const-wide v6, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v2, v4, v6

    if-gez v2, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    iget-object v1, p0, Lo/LinkGenerator;->onTransact:[S

    iget v2, p0, Lo/LinkGenerator;->newSession:I

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v2}, Lo/LinkGenerator;->onNavigationEvent([SII)V

    .line 477
    iput v4, p0, Lo/LinkGenerator;->newSession:I

    goto :goto_1

    .line 474
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lo/LinkGenerator;->extraCallback(F)V

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_2

    .line 480
    invoke-direct {p0, v3, v0}, Lo/LinkGenerator;->onNavigationEvent(FI)V

    :cond_2
    return-void
.end method

.method private extraCallback(F)V
    .locals 8

    .line 448
    iget v0, p0, Lo/LinkGenerator;->newSession:I

    iget v1, p0, Lo/LinkGenerator;->onRelationshipValidationResult:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 454
    :cond_1
    iget v2, p0, Lo/LinkGenerator;->postMessage:I

    if-lez v2, :cond_2

    .line 455
    invoke-direct {p0, v1}, Lo/LinkGenerator;->onNavigationEvent(I)I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    goto :goto_1

    .line 457
    :cond_2
    iget-object v2, p0, Lo/LinkGenerator;->onTransact:[S

    invoke-direct {p0, v2, v1}, Lo/LinkGenerator;->ICustomTabsCallback([SI)I

    move-result v2

    float-to-double v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_3

    .line 459
    iget-object v3, p0, Lo/LinkGenerator;->onTransact:[S

    invoke-direct {p0, v3, v1, p1, v2}, Lo/LinkGenerator;->onPostMessage([SIFI)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 461
    :cond_3
    iget-object v3, p0, Lo/LinkGenerator;->onTransact:[S

    invoke-direct {p0, v3, v1, p1, v2}, Lo/LinkGenerator;->onNavigationEvent([SIFI)I

    move-result v2

    goto :goto_0

    .line 464
    :goto_1
    iget v2, p0, Lo/LinkGenerator;->onRelationshipValidationResult:I

    add-int/2addr v2, v1

    if-le v2, v0, :cond_1

    .line 465
    invoke-direct {p0, v1}, Lo/LinkGenerator;->onPostMessage(I)V

    return-void
.end method

.method private extraCallback(I)V
    .locals 6

    .line 323
    iget v0, p0, Lo/LinkGenerator;->warmup:I

    sub-int/2addr v0, p1

    .line 324
    iget-object v1, p0, Lo/LinkGenerator;->ICustomTabsService:[S

    iget v2, p0, Lo/LinkGenerator;->ICustomTabsCallback$Stub$Proxy:I

    invoke-direct {p0, v1, v2, v0}, Lo/LinkGenerator;->onPostMessage([SII)[S

    move-result-object v1

    iput-object v1, p0, Lo/LinkGenerator;->ICustomTabsService:[S

    .line 325
    iget-object v2, p0, Lo/LinkGenerator;->getInterfaceDescriptor:[S

    iget v3, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    mul-int v4, p1, v3

    iget v5, p0, Lo/LinkGenerator;->ICustomTabsCallback$Stub$Proxy:I

    mul-int v5, v5, v3

    mul-int v3, v3, v0

    invoke-static {v2, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    iput p1, p0, Lo/LinkGenerator;->warmup:I

    .line 332
    iget p1, p0, Lo/LinkGenerator;->ICustomTabsCallback$Stub$Proxy:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/LinkGenerator;->ICustomTabsCallback$Stub$Proxy:I

    return-void
.end method

.method private extraCallback(II)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 267
    iget v1, p0, Lo/LinkGenerator;->extraCommand:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, p1, 0x3

    if-le p2, v1, :cond_1

    return v0

    :cond_1
    const/4 p2, 0x1

    shl-int/2addr p1, p2

    .line 274
    iget v1, p0, Lo/LinkGenerator;->requestPostMessageChannel:I

    mul-int/lit8 v1, v1, 0x3

    if-gt p1, v1, :cond_2

    return v0

    :cond_2
    return p2

    :cond_3
    :goto_0
    return v0
.end method

.method private onMessageChannelReady(I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lo/LinkGenerator;->ICustomTabsService:[S

    iget v1, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    mul-int v2, p1, v1

    const/4 v3, 0x0

    iget v4, p0, Lo/LinkGenerator;->ICustomTabsCallback$Stub$Proxy:I

    sub-int/2addr v4, p1

    mul-int v4, v4, v1

    invoke-static {v0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iget v0, p0, Lo/LinkGenerator;->ICustomTabsCallback$Stub$Proxy:I

    sub-int/2addr v0, p1

    iput v0, p0, Lo/LinkGenerator;->ICustomTabsCallback$Stub$Proxy:I

    return-void
.end method

.method private onNavigationEvent(I)I
    .locals 2

    .line 208
    iget v0, p0, Lo/LinkGenerator;->onRelationshipValidationResult:I

    iget v1, p0, Lo/LinkGenerator;->postMessage:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 209
    iget-object v1, p0, Lo/LinkGenerator;->onTransact:[S

    invoke-direct {p0, v1, p1, v0}, Lo/LinkGenerator;->onNavigationEvent([SII)V

    .line 210
    iget p1, p0, Lo/LinkGenerator;->postMessage:I

    sub-int/2addr p1, v0

    iput p1, p0, Lo/LinkGenerator;->postMessage:I

    return v0
.end method

.method private onNavigationEvent([SIFI)I
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    int-to-float v1, p4

    mul-float v1, v1, p3

    sub-float/2addr v0, p3

    div-float/2addr v1, v0

    float-to-int p3, v1

    goto :goto_0

    :cond_0
    int-to-float v1, p4

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, p3

    sub-float/2addr v2, v0

    mul-float v1, v1, v2

    sub-float/2addr v0, p3

    div-float/2addr v1, v0

    float-to-int p3, v1

    .line 424
    iput p3, p0, Lo/LinkGenerator;->postMessage:I

    move p3, p4

    .line 426
    :goto_0
    iget-object v0, p0, Lo/LinkGenerator;->getInterfaceDescriptor:[S

    iget v1, p0, Lo/LinkGenerator;->warmup:I

    add-int v8, p4, p3

    .line 427
    invoke-direct {p0, v0, v1, v8}, Lo/LinkGenerator;->onPostMessage([SII)[S

    move-result-object v0

    iput-object v0, p0, Lo/LinkGenerator;->getInterfaceDescriptor:[S

    .line 428
    iget v1, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    mul-int v2, p2, v1

    iget v3, p0, Lo/LinkGenerator;->warmup:I

    mul-int v3, v3, v1

    mul-int v1, v1, p4

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    iget v1, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    iget-object v2, p0, Lo/LinkGenerator;->getInterfaceDescriptor:[S

    iget v0, p0, Lo/LinkGenerator;->warmup:I

    add-int v3, v0, p4

    add-int v5, p2, p4

    move v0, p3

    move-object v4, p1

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lo/LinkGenerator;->ICustomTabsCallback(II[SI[SI[SI)V

    .line 443
    iget p1, p0, Lo/LinkGenerator;->warmup:I

    add-int/2addr p1, v8

    iput p1, p0, Lo/LinkGenerator;->warmup:I

    return p3
.end method

.method private onNavigationEvent(FI)V
    .locals 8

    .line 360
    iget v0, p0, Lo/LinkGenerator;->warmup:I

    if-ne v0, p2, :cond_0

    return-void

    .line 363
    :cond_0
    iget v0, p0, Lo/LinkGenerator;->ICustomTabsCallback:I

    int-to-float v1, v0

    div-float/2addr v1, p1

    float-to-int p1, v1

    :goto_0
    const/16 v1, 0x4000

    if-gt p1, v1, :cond_7

    if-le v0, v1, :cond_1

    goto :goto_5

    .line 370
    :cond_1
    invoke-direct {p0, p2}, Lo/LinkGenerator;->extraCallback(I)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 372
    :goto_1
    iget v2, p0, Lo/LinkGenerator;->ICustomTabsCallback$Stub$Proxy:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-ge v1, v3, :cond_6

    .line 373
    :goto_2
    iget v2, p0, Lo/LinkGenerator;->mayLaunchUrl:I

    add-int/lit8 v3, v2, 0x1

    mul-int v3, v3, p1

    iget v5, p0, Lo/LinkGenerator;->updateVisuals:I

    mul-int v6, v5, v0

    if-le v3, v6, :cond_3

    .line 374
    iget-object v2, p0, Lo/LinkGenerator;->getInterfaceDescriptor:[S

    iget v3, p0, Lo/LinkGenerator;->warmup:I

    .line 375
    invoke-direct {p0, v2, v3, v4}, Lo/LinkGenerator;->onPostMessage([SII)[S

    move-result-object v2

    iput-object v2, p0, Lo/LinkGenerator;->getInterfaceDescriptor:[S

    const/4 v2, 0x0

    .line 377
    :goto_3
    iget v3, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    if-ge v2, v3, :cond_2

    .line 378
    iget-object v5, p0, Lo/LinkGenerator;->getInterfaceDescriptor:[S

    iget v6, p0, Lo/LinkGenerator;->warmup:I

    mul-int v6, v6, v3

    add-int/2addr v6, v2

    iget-object v7, p0, Lo/LinkGenerator;->ICustomTabsService:[S

    mul-int v3, v3, v1

    add-int/2addr v3, v2

    .line 379
    invoke-direct {p0, v7, v3, v0, p1}, Lo/LinkGenerator;->onPostMessage([SIII)S

    move-result v3

    aput-short v3, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 381
    :cond_2
    iget v2, p0, Lo/LinkGenerator;->updateVisuals:I

    add-int/2addr v2, v4

    iput v2, p0, Lo/LinkGenerator;->updateVisuals:I

    .line 382
    iget v2, p0, Lo/LinkGenerator;->warmup:I

    add-int/2addr v2, v4

    iput v2, p0, Lo/LinkGenerator;->warmup:I

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 384
    iput v2, p0, Lo/LinkGenerator;->mayLaunchUrl:I

    if-ne v2, v0, :cond_5

    .line 386
    iput p2, p0, Lo/LinkGenerator;->mayLaunchUrl:I

    if-ne v5, p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 387
    :goto_4
    invoke-static {v4}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 388
    iput p2, p0, Lo/LinkGenerator;->updateVisuals:I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    sub-int/2addr v2, v4

    .line 391
    invoke-direct {p0, v2}, Lo/LinkGenerator;->onMessageChannelReady(I)V

    return-void

    .line 367
    :cond_7
    :goto_5
    div-int/lit8 p1, p1, 0x2

    .line 368
    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private onNavigationEvent([SII)V
    .locals 3

    .line 197
    iget-object v0, p0, Lo/LinkGenerator;->getInterfaceDescriptor:[S

    iget v1, p0, Lo/LinkGenerator;->warmup:I

    invoke-direct {p0, v0, v1, p3}, Lo/LinkGenerator;->onPostMessage([SII)[S

    move-result-object v0

    iput-object v0, p0, Lo/LinkGenerator;->getInterfaceDescriptor:[S

    .line 198
    iget v1, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    mul-int p2, p2, v1

    iget v2, p0, Lo/LinkGenerator;->warmup:I

    mul-int v2, v2, v1

    mul-int v1, v1, p3

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iget p1, p0, Lo/LinkGenerator;->warmup:I

    add-int/2addr p1, p3

    iput p1, p0, Lo/LinkGenerator;->warmup:I

    return-void
.end method

.method private onPostMessage([SIFI)I
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, p3, v1

    if-ltz v2, :cond_0

    int-to-float v1, p4

    sub-float/2addr p3, v0

    div-float/2addr v1, p3

    float-to-int p3, v1

    goto :goto_0

    :cond_0
    int-to-float v2, p4

    sub-float/2addr v1, p3

    mul-float v2, v2, v1

    sub-float/2addr p3, v0

    div-float/2addr v2, p3

    float-to-int p3, v2

    .line 401
    iput p3, p0, Lo/LinkGenerator;->postMessage:I

    move p3, p4

    .line 403
    :goto_0
    iget-object v0, p0, Lo/LinkGenerator;->getInterfaceDescriptor:[S

    iget v1, p0, Lo/LinkGenerator;->warmup:I

    invoke-direct {p0, v0, v1, p3}, Lo/LinkGenerator;->onPostMessage([SII)[S

    move-result-object v2

    iput-object v2, p0, Lo/LinkGenerator;->getInterfaceDescriptor:[S

    .line 404
    iget v1, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    iget v3, p0, Lo/LinkGenerator;->warmup:I

    add-int v7, p2, p4

    move v0, p3

    move-object v4, p1

    move v5, p2

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lo/LinkGenerator;->ICustomTabsCallback(II[SI[SI[SI)V

    .line 413
    iget p1, p0, Lo/LinkGenerator;->warmup:I

    add-int/2addr p1, p3

    iput p1, p0, Lo/LinkGenerator;->warmup:I

    return p3
.end method

.method private onPostMessage([SIII)S
    .locals 2

    .line 349
    aget-short v0, p1, p2

    .line 350
    iget v1, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    add-int/2addr p2, v1

    aget-short p1, p1, p2

    .line 351
    iget p2, p0, Lo/LinkGenerator;->updateVisuals:I

    mul-int p2, p2, p3

    .line 352
    iget p3, p0, Lo/LinkGenerator;->mayLaunchUrl:I

    mul-int v1, p3, p4

    add-int/lit8 p3, p3, 0x1

    mul-int p3, p3, p4

    sub-int p2, p3, p2

    sub-int/2addr p3, v1

    mul-int v0, v0, p2

    sub-int p2, p3, p2

    mul-int p2, p2, p1

    add-int/2addr v0, p2

    .line 356
    div-int/2addr v0, p3

    int-to-short p1, v0

    return p1
.end method

.method private onPostMessage(I)V
    .locals 4

    .line 190
    iget v0, p0, Lo/LinkGenerator;->newSession:I

    sub-int/2addr v0, p1

    .line 191
    iget-object v1, p0, Lo/LinkGenerator;->onTransact:[S

    iget v2, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    mul-int p1, p1, v2

    mul-int v2, v2, v0

    const/4 v3, 0x0

    invoke-static {v1, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iput v0, p0, Lo/LinkGenerator;->newSession:I

    return-void
.end method

.method private onPostMessage([SII)[S
    .locals 2

    .line 180
    array-length v0, p1

    iget v1, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    div-int/2addr v0, v1

    add-int/2addr p2, p3

    if-gt p2, v0, :cond_0

    return-object p1

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 184
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    mul-int v0, v0, v1

    .line 185
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lo/LinkGenerator;->newSession:I

    .line 150
    iput v0, p0, Lo/LinkGenerator;->warmup:I

    .line 151
    iput v0, p0, Lo/LinkGenerator;->ICustomTabsCallback$Stub$Proxy:I

    .line 152
    iput v0, p0, Lo/LinkGenerator;->mayLaunchUrl:I

    .line 153
    iput v0, p0, Lo/LinkGenerator;->updateVisuals:I

    .line 154
    iput v0, p0, Lo/LinkGenerator;->postMessage:I

    .line 155
    iput v0, p0, Lo/LinkGenerator;->extraCommand:I

    .line 156
    iput v0, p0, Lo/LinkGenerator;->requestPostMessageChannel:I

    .line 157
    iput v0, p0, Lo/LinkGenerator;->ICustomTabsService$Stub:I

    .line 158
    iput v0, p0, Lo/LinkGenerator;->ICustomTabsService$Stub$Proxy:I

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 91
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    div-int/2addr v0, v1

    mul-int v1, v1, v0

    shl-int/lit8 v1, v1, 0x1

    .line 93
    iget-object v2, p0, Lo/LinkGenerator;->onTransact:[S

    iget v3, p0, Lo/LinkGenerator;->newSession:I

    invoke-direct {p0, v2, v3, v0}, Lo/LinkGenerator;->onPostMessage([SII)[S

    move-result-object v2

    iput-object v2, p0, Lo/LinkGenerator;->onTransact:[S

    .line 94
    iget v3, p0, Lo/LinkGenerator;->newSession:I

    iget v4, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    mul-int v3, v3, v4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 95
    iget p1, p0, Lo/LinkGenerator;->newSession:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/LinkGenerator;->newSession:I

    .line 96
    invoke-direct {p0}, Lo/LinkGenerator;->extraCallback()V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 7

    .line 122
    iget v0, p0, Lo/LinkGenerator;->newSession:I

    .line 123
    iget v1, p0, Lo/LinkGenerator;->extraCallback:F

    iget v2, p0, Lo/LinkGenerator;->onNavigationEvent:F

    div-float/2addr v1, v2

    .line 124
    iget v3, p0, Lo/LinkGenerator;->onPostMessage:F

    mul-float v3, v3, v2

    .line 125
    iget v2, p0, Lo/LinkGenerator;->warmup:I

    int-to-float v4, v0

    div-float/2addr v4, v1

    iget v1, p0, Lo/LinkGenerator;->ICustomTabsCallback$Stub$Proxy:I

    int-to-float v1, v1

    add-float/2addr v4, v1

    div-float/2addr v4, v3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-int/2addr v2, v1

    .line 129
    iget-object v1, p0, Lo/LinkGenerator;->onTransact:[S

    iget v3, p0, Lo/LinkGenerator;->onRelationshipValidationResult:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    .line 130
    invoke-direct {p0, v1, v0, v3}, Lo/LinkGenerator;->onPostMessage([SII)[S

    move-result-object v1

    iput-object v1, p0, Lo/LinkGenerator;->onTransact:[S

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 132
    :goto_0
    iget v4, p0, Lo/LinkGenerator;->onRelationshipValidationResult:I

    mul-int/lit8 v5, v4, 0x2

    iget v6, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    mul-int v5, v5, v6

    if-ge v3, v5, :cond_0

    .line 133
    iget-object v4, p0, Lo/LinkGenerator;->onTransact:[S

    mul-int v6, v6, v0

    add-int/2addr v6, v3

    aput-short v1, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :cond_0
    iget v0, p0, Lo/LinkGenerator;->newSession:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iput v0, p0, Lo/LinkGenerator;->newSession:I

    .line 136
    invoke-direct {p0}, Lo/LinkGenerator;->extraCallback()V

    .line 138
    iget v0, p0, Lo/LinkGenerator;->warmup:I

    if-le v0, v2, :cond_1

    .line 139
    iput v2, p0, Lo/LinkGenerator;->warmup:I

    .line 142
    :cond_1
    iput v1, p0, Lo/LinkGenerator;->newSession:I

    .line 143
    iput v1, p0, Lo/LinkGenerator;->postMessage:I

    .line 144
    iput v1, p0, Lo/LinkGenerator;->ICustomTabsCallback$Stub$Proxy:I

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 2

    .line 163
    iget v0, p0, Lo/LinkGenerator;->warmup:I

    iget v1, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    mul-int v0, v0, v1

    shl-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final onNavigationEvent(Ljava/nio/ShortBuffer;)V
    .locals 4

    .line 106
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    div-int/2addr v0, v1

    iget v1, p0, Lo/LinkGenerator;->warmup:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 107
    iget-object v1, p0, Lo/LinkGenerator;->getInterfaceDescriptor:[S

    iget v2, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    mul-int v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 108
    iget p1, p0, Lo/LinkGenerator;->warmup:I

    sub-int/2addr p1, v0

    iput p1, p0, Lo/LinkGenerator;->warmup:I

    .line 109
    iget-object v1, p0, Lo/LinkGenerator;->getInterfaceDescriptor:[S

    iget v2, p0, Lo/LinkGenerator;->onMessageChannelReady:I

    mul-int v0, v0, v2

    mul-int p1, p1, v2

    invoke-static {v1, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
