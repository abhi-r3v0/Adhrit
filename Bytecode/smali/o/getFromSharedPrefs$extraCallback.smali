.class final Lo/getFromSharedPrefs$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFromSharedPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getFromSharedPrefs$extraCallback$extraCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/CryptLib;

.field private ICustomTabsCallback$Stub:[B

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:J

.field private asBinder:I

.field private asInterface:I

.field private final extraCallback:Z

.field private getInterfaceDescriptor:Z

.field private mayLaunchUrl:Z

.field private newSession:Lo/getFromSharedPrefs$extraCallback$extraCallback;

.field private final onMessageChannelReady:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/setViewPool$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Z

.field private final onPostMessage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/setViewPool$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Lo/UploadWorker;

.field private onTransact:J

.field private postMessage:J

.field private requestPostMessageChannel:J

.field private warmup:Lo/getFromSharedPrefs$extraCallback$extraCallback;


# direct methods
.method public constructor <init>(Lo/CryptLib;ZZ)V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lo/getFromSharedPrefs$extraCallback;->ICustomTabsCallback:Lo/CryptLib;

    .line 277
    iput-boolean p2, p0, Lo/getFromSharedPrefs$extraCallback;->extraCallback:Z

    .line 278
    iput-boolean p3, p0, Lo/getFromSharedPrefs$extraCallback;->onNavigationEvent:Z

    .line 279
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/getFromSharedPrefs$extraCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    .line 280
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/getFromSharedPrefs$extraCallback;->onPostMessage:Landroid/util/SparseArray;

    .line 281
    new-instance p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lo/getFromSharedPrefs$extraCallback$extraCallback;-><init>(Lo/getFromSharedPrefs$5;)V

    iput-object p1, p0, Lo/getFromSharedPrefs$extraCallback;->warmup:Lo/getFromSharedPrefs$extraCallback$extraCallback;

    .line 282
    new-instance p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;

    invoke-direct {p1, p2}, Lo/getFromSharedPrefs$extraCallback$extraCallback;-><init>(Lo/getFromSharedPrefs$5;)V

    iput-object p1, p0, Lo/getFromSharedPrefs$extraCallback;->newSession:Lo/getFromSharedPrefs$extraCallback$extraCallback;

    const/16 p1, 0x80

    new-array p1, p1, [B

    .line 283
    iput-object p1, p0, Lo/getFromSharedPrefs$extraCallback;->ICustomTabsCallback$Stub:[B

    .line 284
    new-instance p2, Lo/UploadWorker;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lo/UploadWorker;-><init>([BII)V

    iput-object p2, p0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    .line 285
    invoke-virtual {p0}, Lo/getFromSharedPrefs$extraCallback;->onMessageChannelReady()V

    return-void
.end method

.method private onMessageChannelReady(I)V
    .locals 7

    .line 468
    iget-boolean v3, p0, Lo/getFromSharedPrefs$extraCallback;->mayLaunchUrl:Z

    .line 469
    iget-wide v0, p0, Lo/getFromSharedPrefs$extraCallback;->onTransact:J

    iget-wide v4, p0, Lo/getFromSharedPrefs$extraCallback;->postMessage:J

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 470
    iget-object v0, p0, Lo/getFromSharedPrefs$extraCallback;->ICustomTabsCallback:Lo/CryptLib;

    iget-wide v1, p0, Lo/getFromSharedPrefs$extraCallback;->requestPostMessageChannel:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(JIJ)V
    .locals 0

    .line 307
    iput p3, p0, Lo/getFromSharedPrefs$extraCallback;->asInterface:I

    .line 308
    iput-wide p4, p0, Lo/getFromSharedPrefs$extraCallback;->ICustomTabsService:J

    .line 309
    iput-wide p1, p0, Lo/getFromSharedPrefs$extraCallback;->onTransact:J

    .line 310
    iget-boolean p1, p0, Lo/getFromSharedPrefs$extraCallback;->extraCallback:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    if-eq p3, p2, :cond_1

    :cond_0
    iget-boolean p1, p0, Lo/getFromSharedPrefs$extraCallback;->onNavigationEvent:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lo/getFromSharedPrefs$extraCallback;->asInterface:I

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    .line 315
    :cond_1
    iget-object p1, p0, Lo/getFromSharedPrefs$extraCallback;->warmup:Lo/getFromSharedPrefs$extraCallback$extraCallback;

    .line 316
    iget-object p3, p0, Lo/getFromSharedPrefs$extraCallback;->newSession:Lo/getFromSharedPrefs$extraCallback$extraCallback;

    iput-object p3, p0, Lo/getFromSharedPrefs$extraCallback;->warmup:Lo/getFromSharedPrefs$extraCallback$extraCallback;

    .line 317
    iput-object p1, p0, Lo/getFromSharedPrefs$extraCallback;->newSession:Lo/getFromSharedPrefs$extraCallback$extraCallback;

    .line 318
    invoke-virtual {p1}, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onMessageChannelReady()V

    const/4 p1, 0x0

    .line 319
    iput p1, p0, Lo/getFromSharedPrefs$extraCallback;->asBinder:I

    .line 320
    iput-boolean p2, p0, Lo/getFromSharedPrefs$extraCallback;->getInterfaceDescriptor:Z

    :cond_2
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x0

    .line 301
    iput-boolean v0, p0, Lo/getFromSharedPrefs$extraCallback;->getInterfaceDescriptor:Z

    .line 302
    iput-boolean v0, p0, Lo/getFromSharedPrefs$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    .line 303
    iget-object v0, p0, Lo/getFromSharedPrefs$extraCallback;->newSession:Lo/getFromSharedPrefs$extraCallback$extraCallback;

    invoke-virtual {v0}, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onMessageChannelReady()V

    return-void
.end method

.method public final onMessageChannelReady(Lo/setViewPool$onNavigationEvent;)V
    .locals 2

    .line 297
    iget-object v0, p0, Lo/getFromSharedPrefs$extraCallback;->onPostMessage:Landroid/util/SparseArray;

    iget v1, p1, Lo/setViewPool$onNavigationEvent;->onPostMessage:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(JIZZ)Z
    .locals 5

    .line 447
    iget v0, p0, Lo/getFromSharedPrefs$extraCallback;->asInterface:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lo/getFromSharedPrefs$extraCallback;->onNavigationEvent:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/getFromSharedPrefs$extraCallback;->newSession:Lo/getFromSharedPrefs$extraCallback$extraCallback;

    iget-object v3, p0, Lo/getFromSharedPrefs$extraCallback;->warmup:Lo/getFromSharedPrefs$extraCallback$extraCallback;

    .line 448
    invoke-static {v0, v3}, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onPostMessage(Lo/getFromSharedPrefs$extraCallback$extraCallback;Lo/getFromSharedPrefs$extraCallback$extraCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    .line 450
    iget-boolean p4, p0, Lo/getFromSharedPrefs$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz p4, :cond_1

    .line 451
    iget-wide v3, p0, Lo/getFromSharedPrefs$extraCallback;->onTransact:J

    sub-long/2addr p1, v3

    long-to-int p2, p1

    add-int/2addr p3, p2

    .line 452
    invoke-direct {p0, p3}, Lo/getFromSharedPrefs$extraCallback;->onMessageChannelReady(I)V

    .line 454
    :cond_1
    iget-wide p1, p0, Lo/getFromSharedPrefs$extraCallback;->onTransact:J

    iput-wide p1, p0, Lo/getFromSharedPrefs$extraCallback;->postMessage:J

    .line 455
    iget-wide p1, p0, Lo/getFromSharedPrefs$extraCallback;->ICustomTabsService:J

    iput-wide p1, p0, Lo/getFromSharedPrefs$extraCallback;->requestPostMessageChannel:J

    .line 456
    iput-boolean v1, p0, Lo/getFromSharedPrefs$extraCallback;->mayLaunchUrl:Z

    .line 457
    iput-boolean v2, p0, Lo/getFromSharedPrefs$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    .line 459
    :cond_2
    iget-boolean p1, p0, Lo/getFromSharedPrefs$extraCallback;->extraCallback:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/getFromSharedPrefs$extraCallback;->newSession:Lo/getFromSharedPrefs$extraCallback$extraCallback;

    .line 460
    invoke-virtual {p1}, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onNavigationEvent()Z

    move-result p5

    .line 461
    :cond_3
    iget-boolean p1, p0, Lo/getFromSharedPrefs$extraCallback;->mayLaunchUrl:Z

    iget p2, p0, Lo/getFromSharedPrefs$extraCallback;->asInterface:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_4

    if-eqz p5, :cond_5

    if-ne p2, v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    or-int/2addr p1, v1

    iput-boolean p1, p0, Lo/getFromSharedPrefs$extraCallback;->mayLaunchUrl:Z

    return p1
.end method

.method public final onPostMessage(Lo/setViewPool$extraCallback;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lo/getFromSharedPrefs$extraCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    iget v1, p1, Lo/setViewPool$extraCallback;->onMessageChannelReady:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final onPostMessage([BII)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 332
    iget-boolean v2, v0, Lo/getFromSharedPrefs$extraCallback;->getInterfaceDescriptor:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    sub-int v2, p3, v1

    .line 336
    iget-object v3, v0, Lo/getFromSharedPrefs$extraCallback;->ICustomTabsCallback$Stub:[B

    array-length v4, v3

    iget v5, v0, Lo/getFromSharedPrefs$extraCallback;->asBinder:I

    add-int v6, v5, v2

    const/4 v7, 0x1

    if-ge v4, v6, :cond_1

    add-int/2addr v5, v2

    shl-int/lit8 v4, v5, 0x1

    .line 337
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lo/getFromSharedPrefs$extraCallback;->ICustomTabsCallback$Stub:[B

    .line 339
    :cond_1
    iget-object v3, v0, Lo/getFromSharedPrefs$extraCallback;->ICustomTabsCallback$Stub:[B

    iget v4, v0, Lo/getFromSharedPrefs$extraCallback;->asBinder:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    iget v1, v0, Lo/getFromSharedPrefs$extraCallback;->asBinder:I

    add-int/2addr v1, v2

    iput v1, v0, Lo/getFromSharedPrefs$extraCallback;->asBinder:I

    .line 342
    iget-object v2, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    iget-object v3, v0, Lo/getFromSharedPrefs$extraCallback;->ICustomTabsCallback$Stub:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lo/UploadWorker;->onMessageChannelReady([BII)V

    .line 343
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lo/UploadWorker;->onPostMessage(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 346
    :cond_2
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v1}, Lo/UploadWorker;->extraCallback()V

    .line 347
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lo/UploadWorker;->extraCallback(I)I

    move-result v10

    .line 348
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lo/UploadWorker;->onMessageChannelReady(I)V

    .line 352
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v1}, Lo/UploadWorker;->onNavigationEvent()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 355
    :cond_3
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v1}, Lo/UploadWorker;->onPostMessage()I

    .line 356
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v1}, Lo/UploadWorker;->onNavigationEvent()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 359
    :cond_4
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v1}, Lo/UploadWorker;->onPostMessage()I

    move-result v11

    .line 360
    iget-boolean v1, v0, Lo/getFromSharedPrefs$extraCallback;->onNavigationEvent:Z

    if-nez v1, :cond_5

    .line 362
    iput-boolean v4, v0, Lo/getFromSharedPrefs$extraCallback;->getInterfaceDescriptor:Z

    .line 363
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->newSession:Lo/getFromSharedPrefs$extraCallback$extraCallback;

    invoke-virtual {v1, v11}, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onMessageChannelReady(I)V

    return-void

    .line 366
    :cond_5
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v1}, Lo/UploadWorker;->onNavigationEvent()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    .line 369
    :cond_6
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v1}, Lo/UploadWorker;->onPostMessage()I

    move-result v13

    .line 370
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    .line 372
    iput-boolean v4, v0, Lo/getFromSharedPrefs$extraCallback;->getInterfaceDescriptor:Z

    return-void

    .line 375
    :cond_7
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setViewPool$onNavigationEvent;

    .line 376
    iget-object v5, v0, Lo/getFromSharedPrefs$extraCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    iget v6, v1, Lo/setViewPool$onNavigationEvent;->ICustomTabsCallback:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lo/setViewPool$extraCallback;

    .line 377
    iget-boolean v5, v9, Lo/setViewPool$extraCallback;->onTransact:Z

    if-eqz v5, :cond_9

    .line 378
    iget-object v5, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v5, v2}, Lo/UploadWorker;->onPostMessage(I)Z

    move-result v5

    if-nez v5, :cond_8

    return-void

    .line 381
    :cond_8
    iget-object v5, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v5, v2}, Lo/UploadWorker;->onMessageChannelReady(I)V

    .line 383
    :cond_9
    iget-object v2, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    iget v5, v9, Lo/setViewPool$extraCallback;->asBinder:I

    invoke-virtual {v2, v5}, Lo/UploadWorker;->onPostMessage(I)Z

    move-result v2

    if-nez v2, :cond_a

    return-void

    .line 389
    :cond_a
    iget-object v2, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    iget v5, v9, Lo/setViewPool$extraCallback;->asBinder:I

    invoke-virtual {v2, v5}, Lo/UploadWorker;->extraCallback(I)I

    move-result v12

    .line 390
    iget-boolean v2, v9, Lo/setViewPool$extraCallback;->asInterface:Z

    if-nez v2, :cond_e

    .line 391
    iget-object v2, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v2, v7}, Lo/UploadWorker;->onPostMessage(I)Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    .line 394
    :cond_b
    iget-object v2, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v2}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 396
    iget-object v5, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v5, v7}, Lo/UploadWorker;->onPostMessage(I)Z

    move-result v5

    if-nez v5, :cond_c

    return-void

    .line 399
    :cond_c
    iget-object v5, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v5}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v5

    move v14, v2

    move/from16 v16, v5

    const/4 v15, 0x1

    goto :goto_1

    :cond_d
    move v14, v2

    goto :goto_0

    :cond_e
    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 403
    :goto_1
    iget v2, v0, Lo/getFromSharedPrefs$extraCallback;->asInterface:I

    if-ne v2, v3, :cond_f

    const/16 v17, 0x1

    goto :goto_2

    :cond_f
    const/16 v17, 0x0

    :goto_2
    if-eqz v17, :cond_11

    .line 406
    iget-object v2, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v2}, Lo/UploadWorker;->onNavigationEvent()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 409
    :cond_10
    iget-object v2, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v2}, Lo/UploadWorker;->onPostMessage()I

    move-result v2

    move/from16 v18, v2

    goto :goto_3

    :cond_11
    const/16 v18, 0x0

    .line 415
    :goto_3
    iget v2, v9, Lo/setViewPool$extraCallback;->ICustomTabsService:I

    if-nez v2, :cond_15

    .line 416
    iget-object v2, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    iget v3, v9, Lo/setViewPool$extraCallback;->warmup:I

    invoke-virtual {v2, v3}, Lo/UploadWorker;->onPostMessage(I)Z

    move-result v2

    if-nez v2, :cond_12

    return-void

    .line 419
    :cond_12
    iget-object v2, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    iget v3, v9, Lo/setViewPool$extraCallback;->warmup:I

    invoke-virtual {v2, v3}, Lo/UploadWorker;->extraCallback(I)I

    move-result v2

    .line 420
    iget-boolean v1, v1, Lo/setViewPool$onNavigationEvent;->onNavigationEvent:Z

    if-eqz v1, :cond_14

    if-nez v14, :cond_14

    .line 421
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v1}, Lo/UploadWorker;->onNavigationEvent()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    .line 424
    :cond_13
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v1}, Lo/UploadWorker;->ICustomTabsCallback()I

    move-result v1

    move/from16 v20, v1

    move/from16 v19, v2

    goto :goto_5

    :cond_14
    move/from16 v19, v2

    goto :goto_4

    .line 426
    :cond_15
    iget v2, v9, Lo/setViewPool$extraCallback;->ICustomTabsService:I

    if-ne v2, v7, :cond_19

    iget-boolean v2, v9, Lo/setViewPool$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v2, :cond_19

    .line 428
    iget-object v2, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v2}, Lo/UploadWorker;->onNavigationEvent()Z

    move-result v2

    if-nez v2, :cond_16

    return-void

    .line 431
    :cond_16
    iget-object v2, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v2}, Lo/UploadWorker;->ICustomTabsCallback()I

    move-result v2

    .line 432
    iget-boolean v1, v1, Lo/setViewPool$onNavigationEvent;->onNavigationEvent:Z

    if-eqz v1, :cond_18

    if-nez v14, :cond_18

    .line 433
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v1}, Lo/UploadWorker;->onNavigationEvent()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    .line 436
    :cond_17
    iget-object v1, v0, Lo/getFromSharedPrefs$extraCallback;->onRelationshipValidationResult:Lo/UploadWorker;

    invoke-virtual {v1}, Lo/UploadWorker;->ICustomTabsCallback()I

    move-result v1

    move/from16 v22, v1

    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_7

    :cond_18
    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_6

    :cond_19
    const/16 v19, 0x0

    :goto_4
    const/16 v20, 0x0

    :goto_5
    const/16 v21, 0x0

    :goto_6
    const/16 v22, 0x0

    .line 439
    :goto_7
    iget-object v8, v0, Lo/getFromSharedPrefs$extraCallback;->newSession:Lo/getFromSharedPrefs$extraCallback$extraCallback;

    invoke-virtual/range {v8 .. v22}, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onPostMessage(Lo/setViewPool$extraCallback;IIIIZZZZIIIII)V

    .line 442
    iput-boolean v4, v0, Lo/getFromSharedPrefs$extraCallback;->getInterfaceDescriptor:Z

    return-void
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lo/getFromSharedPrefs$extraCallback;->onNavigationEvent:Z

    return v0
.end method
