.class public Lo/onSkipToNext;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onRemoveQueueItemAt$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onSkipToNext$onPostMessage;,
        Lo/onSkipToNext$extraCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/onSkipToNext$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Lo/onRemoveQueueItemAt;

.field final onMessageChannelReady:Z

.field public final onNavigationEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/onSkipToNext$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:Lo/onSkipToNext$onPostMessage;

.field public onRelationshipValidationResult:I

.field private onTransact:Lo/RatingCompat$StarStyle$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Lo/onSkipToNext$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/onSkipToNext$onPostMessage;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lo/onSkipToNext;-><init>(Lo/onSkipToNext$onPostMessage;B)V

    return-void
.end method

.method private constructor <init>(Lo/onSkipToNext$onPostMessage;B)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance p2, Lo/RatingCompat$StarStyle$onPostMessage;

    const/16 v0, 0x1e

    invoke-direct {p2, v0}, Lo/RatingCompat$StarStyle$onPostMessage;-><init>(I)V

    iput-object p2, p0, Lo/onSkipToNext;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lo/onSkipToNext;->onNavigationEvent:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 69
    iput p2, p0, Lo/onSkipToNext;->onRelationshipValidationResult:I

    .line 76
    iput-object p1, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    .line 77
    iput-boolean p2, p0, Lo/onSkipToNext;->onMessageChannelReady:Z

    .line 78
    new-instance p1, Lo/onRemoveQueueItemAt;

    invoke-direct {p1, p0}, Lo/onRemoveQueueItemAt;-><init>(Lo/onRemoveQueueItemAt$onPostMessage;)V

    iput-object p1, p0, Lo/onSkipToNext;->extraCallback:Lo/onRemoveQueueItemAt;

    return-void
.end method

.method private ICustomTabsCallback(II)I
    .locals 6

    .line 330
    iget-object v0, p0, Lo/onSkipToNext;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/16 v2, 0x8

    if-ltz v0, :cond_d

    .line 332
    iget-object v3, p0, Lo/onSkipToNext;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/onSkipToNext$extraCallback;

    .line 333
    iget v4, v3, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    const/4 v5, 0x2

    if-ne v4, v2, :cond_8

    .line 335
    iget v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v4, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    if-ge v2, v4, :cond_0

    .line 336
    iget v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    .line 337
    iget v4, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    goto :goto_1

    .line 339
    :cond_0
    iget v2, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    .line 340
    iget v4, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    :goto_1
    if-lt p1, v2, :cond_6

    if-gt p1, v4, :cond_6

    .line 344
    iget v4, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-ne v2, v4, :cond_3

    if-ne p2, v1, :cond_1

    .line 346
    iget v2, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v2, v1

    iput v2, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    goto :goto_2

    :cond_1
    if-ne p2, v5, :cond_2

    .line 348
    iget v2, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v2, v1

    iput v2, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-ne p2, v1, :cond_4

    .line 354
    iget v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    add-int/2addr v2, v1

    iput v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    goto :goto_3

    :cond_4
    if-ne p2, v5, :cond_5

    .line 356
    iget v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    sub-int/2addr v2, v1

    iput v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 361
    :cond_6
    iget v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-ge p1, v2, :cond_c

    if-ne p2, v1, :cond_7

    .line 364
    iget v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    add-int/2addr v2, v1

    iput v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    .line 365
    iget v2, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v2, v1

    iput v2, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    goto :goto_4

    :cond_7
    if-ne p2, v5, :cond_c

    .line 367
    iget v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    sub-int/2addr v2, v1

    iput v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    .line 368
    iget v2, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v2, v1

    iput v2, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    goto :goto_4

    .line 372
    :cond_8
    iget v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-gt v2, p1, :cond_a

    .line 373
    iget v2, v3, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    if-ne v2, v1, :cond_9

    .line 374
    iget v2, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr p1, v2

    goto :goto_4

    .line 375
    :cond_9
    iget v2, v3, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    if-ne v2, v5, :cond_c

    .line 376
    iget v2, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr p1, v2

    goto :goto_4

    :cond_a
    if-ne p2, v1, :cond_b

    .line 380
    iget v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    add-int/2addr v2, v1

    iput v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    goto :goto_4

    :cond_b
    if-ne p2, v5, :cond_c

    .line 382
    iget v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    sub-int/2addr v2, v1

    iput v2, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    :cond_c
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 395
    :cond_d
    iget-object p2, p0, Lo/onSkipToNext;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_5
    if-ltz p2, :cond_11

    .line 396
    iget-object v0, p0, Lo/onSkipToNext;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onSkipToNext$extraCallback;

    .line 397
    iget v1, v0, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_f

    .line 398
    iget v1, v0, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v4, v0, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-eq v1, v4, :cond_e

    iget v1, v0, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    if-gez v1, :cond_10

    .line 399
    :cond_e
    iget-object v1, p0, Lo/onSkipToNext;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 8741
    iget-boolean v1, p0, Lo/onSkipToNext;->onMessageChannelReady:Z

    if-nez v1, :cond_10

    .line 8742
    iput-object v3, v0, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 8743
    iget-object v1, p0, Lo/onSkipToNext;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v1, v0}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    goto :goto_6

    .line 402
    :cond_f
    iget v1, v0, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    if-gtz v1, :cond_10

    .line 403
    iget-object v1, p0, Lo/onSkipToNext;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 9741
    iget-boolean v1, p0, Lo/onSkipToNext;->onMessageChannelReady:Z

    if-nez v1, :cond_10

    .line 9742
    iput-object v3, v0, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 9743
    iget-object v1, p0, Lo/onSkipToNext;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v1, v0}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    return p1
.end method

.method private ICustomTabsCallback(Lo/onSkipToNext$extraCallback;)V
    .locals 3

    .line 439
    iget-object v0, p0, Lo/onSkipToNext;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 440
    iget v0, p1, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 445
    iget-object v0, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    iget v1, p1, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget p1, p1, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    invoke-interface {v0, v1, p1}, Lo/onSkipToNext$onPostMessage;->onMessageChannelReady(II)V

    return-void

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unknown update op type for "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_1
    iget-object v0, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    iget v1, p1, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v2, p1, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget-object p1, p1, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Lo/onSkipToNext$onPostMessage;->onNavigationEvent(IILjava/lang/Object;)V

    return-void

    .line 448
    :cond_2
    iget-object v0, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    iget v1, p1, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget p1, p1, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    invoke-interface {v0, v1, p1}, Lo/onSkipToNext$onPostMessage;->ICustomTabsCallback(II)V

    return-void

    .line 442
    :cond_3
    iget-object v0, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    iget v1, p1, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget p1, p1, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    invoke-interface {v0, v1, p1}, Lo/onSkipToNext$onPostMessage;->extraCallback(II)V

    return-void
.end method

.method private ICustomTabsCallback(Lo/onSkipToNext$extraCallback;I)V
    .locals 2

    .line 315
    iget-object v0, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    invoke-interface {v0, p1}, Lo/onSkipToNext$onPostMessage;->extraCallback(Lo/onSkipToNext$extraCallback;)V

    .line 316
    iget v0, p1, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    iget v1, p1, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget-object p1, p1, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, p1}, Lo/onSkipToNext$onPostMessage;->onNavigationEvent(IILjava/lang/Object;)V

    return-void

    .line 324
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :cond_1
    iget-object v0, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    iget p1, p1, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    invoke-interface {v0, p2, p1}, Lo/onSkipToNext$onPostMessage;->onPostMessage(II)V

    return-void
.end method

.method private ICustomTabsCallback(I)Z
    .locals 7

    .line 411
    iget-object v0, p0, Lo/onSkipToNext;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 413
    iget-object v3, p0, Lo/onSkipToNext;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/onSkipToNext$extraCallback;

    .line 414
    iget v4, v3, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 415
    iget v3, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Lo/onSkipToNext;->onNavigationEvent(II)I

    move-result v3

    if-ne v3, p1, :cond_2

    return v6

    .line 418
    :cond_0
    iget v4, v3, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    if-ne v4, v6, :cond_2

    .line 420
    iget v4, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v5, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v4, v5

    .line 421
    iget v3, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    :goto_1
    if-ge v3, v4, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 422
    invoke-virtual {p0, v3, v5}, Lo/onSkipToNext;->onNavigationEvent(II)I

    move-result v5

    if-ne v5, p1, :cond_1

    return v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private extraCallback(Lo/onSkipToNext$extraCallback;)V
    .locals 13

    .line 231
    iget v0, p1, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    iget v0, p1, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_b

    .line 245
    iget v0, p1, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v2, p1, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    invoke-direct {p0, v0, v2}, Lo/onSkipToNext;->ICustomTabsCallback(II)I

    move-result v0

    .line 250
    iget v2, p1, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    .line 252
    iget v3, p1, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "op should be remove or update."

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 262
    :goto_1
    iget v9, p1, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    const/4 v10, 0x0

    if-ge v7, v9, :cond_8

    .line 263
    iget v9, p1, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    mul-int v11, v3, v7

    add-int/2addr v9, v11

    .line 264
    iget v11, p1, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    invoke-direct {p0, v9, v11}, Lo/onSkipToNext;->ICustomTabsCallback(II)I

    move-result v9

    .line 269
    iget v11, p1, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    if-eq v11, v4, :cond_4

    if-eq v11, v5, :cond_3

    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v0, 0x1

    if-ne v9, v11, :cond_2

    :goto_2
    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    if-ne v9, v0, :cond_2

    goto :goto_2

    :goto_3
    if-eqz v11, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 281
    :cond_5
    iget v11, p1, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    iget-object v12, p1, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-virtual {p0, v11, v0, v8, v12}, Lo/onSkipToNext;->onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;

    move-result-object v0

    .line 285
    invoke-direct {p0, v0, v2}, Lo/onSkipToNext;->ICustomTabsCallback(Lo/onSkipToNext$extraCallback;I)V

    .line 5741
    iget-boolean v11, p0, Lo/onSkipToNext;->onMessageChannelReady:Z

    if-nez v11, :cond_6

    .line 5742
    iput-object v10, v0, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 5743
    iget-object v10, p0, Lo/onSkipToNext;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v10, v0}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    .line 287
    :cond_6
    iget v0, p1, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    if-ne v0, v5, :cond_7

    add-int/2addr v2, v8

    :cond_7
    move v0, v9

    const/4 v8, 0x1

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 294
    :cond_8
    iget-object v1, p1, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 6741
    iget-boolean v3, p0, Lo/onSkipToNext;->onMessageChannelReady:Z

    if-nez v3, :cond_9

    .line 6742
    iput-object v10, p1, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 6743
    iget-object v3, p0, Lo/onSkipToNext;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v3, p1}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    :cond_9
    if-lez v8, :cond_a

    .line 297
    iget p1, p1, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    invoke-virtual {p0, p1, v0, v8, v1}, Lo/onSkipToNext;->onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;

    move-result-object p1

    .line 301
    invoke-direct {p0, p1, v2}, Lo/onSkipToNext;->ICustomTabsCallback(Lo/onSkipToNext$extraCallback;I)V

    .line 7741
    iget-boolean v0, p0, Lo/onSkipToNext;->onMessageChannelReady:Z

    if-nez v0, :cond_a

    .line 7742
    iput-object v10, p1, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 7743
    iget-object v0, p0, Lo/onSkipToNext;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v0, p1}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    :cond_a
    return-void

    .line 232
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final extraCallback()V
    .locals 5

    .line 119
    iget-object v0, p0, Lo/onSkipToNext;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 121
    iget-object v3, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    iget-object v4, p0, Lo/onSkipToNext;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/onSkipToNext$extraCallback;

    invoke-interface {v3, v4}, Lo/onSkipToNext$onPostMessage;->onPostMessage(Lo/onSkipToNext$extraCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lo/onSkipToNext;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/onSkipToNext;->onPostMessage(Ljava/util/List;)V

    .line 124
    iput v1, p0, Lo/onSkipToNext;->onRelationshipValidationResult:I

    return-void
.end method

.method public final onMessageChannelReady(I)I
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0, p1, v0}, Lo/onSkipToNext;->onNavigationEvent(II)I

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady()V
    .locals 16

    move-object/from16 v0, p0

    .line 93
    iget-object v1, v0, Lo/onSkipToNext;->extraCallback:Lo/onRemoveQueueItemAt;

    iget-object v2, v0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    .line 1214
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x8

    const/4 v8, -0x1

    if-ltz v3, :cond_3

    .line 1215
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/onSkipToNext$extraCallback;

    .line 1216
    iget v9, v9, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    if-ne v9, v7, :cond_1

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_1
    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    :goto_2
    const/4 v6, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eq v3, v8, :cond_22

    add-int/lit8 v7, v3, 0x1

    .line 2039
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/onSkipToNext$extraCallback;

    .line 2040
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/onSkipToNext$extraCallback;

    .line 2041
    iget v13, v12, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    if-eq v13, v4, :cond_1d

    if-eq v13, v9, :cond_b

    if-eq v13, v6, :cond_4

    goto :goto_0

    .line 2179
    :cond_4
    iget v5, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v8, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-ge v5, v8, :cond_5

    .line 2180
    iget v5, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    sub-int/2addr v5, v4

    iput v5, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    goto :goto_3

    .line 2181
    :cond_5
    iget v5, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v8, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v9, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v8, v9

    if-ge v5, v8, :cond_6

    .line 2183
    iget v5, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v5, v4

    iput v5, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    .line 2184
    iget-object v5, v1, Lo/onRemoveQueueItemAt;->onPostMessage:Lo/onRemoveQueueItemAt$onPostMessage;

    iget v8, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget-object v9, v12, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-interface {v5, v6, v8, v4, v9}, Lo/onRemoveQueueItemAt$onPostMessage;->onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;

    move-result-object v5

    goto :goto_4

    :cond_6
    :goto_3
    move-object v5, v10

    .line 2187
    :goto_4
    iget v8, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v9, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-gt v8, v9, :cond_7

    .line 2188
    iget v6, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    add-int/2addr v6, v4

    iput v6, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    goto :goto_5

    .line 2189
    :cond_7
    iget v8, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v9, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v13, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v9, v13

    if-ge v8, v9, :cond_8

    .line 2190
    iget v8, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v9, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v8, v9

    iget v9, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    sub-int/2addr v8, v9

    .line 2192
    iget-object v9, v1, Lo/onRemoveQueueItemAt;->onPostMessage:Lo/onRemoveQueueItemAt$onPostMessage;

    iget v10, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    add-int/2addr v10, v4

    iget-object v4, v12, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-interface {v9, v6, v10, v8, v4}, Lo/onRemoveQueueItemAt$onPostMessage;->onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;

    move-result-object v10

    .line 2195
    iget v4, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v4, v8

    iput v4, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    .line 2197
    :cond_8
    :goto_5
    invoke-interface {v2, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2198
    iget v4, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    if-lez v4, :cond_9

    .line 2199
    invoke-interface {v2, v3, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 2201
    :cond_9
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2202
    iget-object v4, v1, Lo/onRemoveQueueItemAt;->onPostMessage:Lo/onRemoveQueueItemAt$onPostMessage;

    invoke-interface {v4, v12}, Lo/onRemoveQueueItemAt$onPostMessage;->onMessageChannelReady(Lo/onSkipToNext$extraCallback;)V

    :goto_6
    if-eqz v5, :cond_a

    .line 2205
    invoke-interface {v2, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_a
    if-eqz v10, :cond_0

    .line 2208
    invoke-interface {v2, v3, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2061
    :cond_b
    iget v6, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v8, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    if-ge v6, v8, :cond_d

    .line 2063
    iget v6, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v8, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-ne v6, v8, :cond_c

    iget v6, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v8, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v13, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    sub-int/2addr v8, v13

    if-ne v6, v8, :cond_c

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    const/4 v6, 0x0

    goto :goto_9

    .line 2069
    :cond_d
    iget v6, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v8, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v8, v4

    if-ne v6, v8, :cond_e

    iget v6, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v8, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v13, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v8, v13

    if-ne v6, v8, :cond_e

    const/4 v5, 0x1

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    :goto_8
    const/4 v6, 0x1

    .line 2076
    :goto_9
    iget v8, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v13, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-ge v8, v13, :cond_f

    .line 2077
    iget v8, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    sub-int/2addr v8, v4

    iput v8, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    goto :goto_a

    .line 2078
    :cond_f
    iget v8, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v13, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v14, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v13, v14

    if-ge v8, v13, :cond_10

    .line 2080
    iget v3, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v3, v4

    iput v3, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    .line 2081
    iput v9, v11, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    .line 2082
    iput v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    .line 2083
    iget v3, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    if-nez v3, :cond_0

    .line 2084
    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2085
    iget-object v3, v1, Lo/onRemoveQueueItemAt;->onPostMessage:Lo/onRemoveQueueItemAt$onPostMessage;

    invoke-interface {v3, v12}, Lo/onRemoveQueueItemAt$onPostMessage;->onMessageChannelReady(Lo/onSkipToNext$extraCallback;)V

    goto/16 :goto_0

    .line 2092
    :cond_10
    :goto_a
    iget v8, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v13, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-gt v8, v13, :cond_11

    .line 2093
    iget v8, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    add-int/2addr v8, v4

    iput v8, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    goto :goto_b

    .line 2094
    :cond_11
    iget v8, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v13, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v14, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v13, v14

    if-ge v8, v13, :cond_12

    .line 2095
    iget v8, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v13, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v8, v13

    iget v13, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    sub-int/2addr v8, v13

    .line 2097
    iget-object v13, v1, Lo/onRemoveQueueItemAt;->onPostMessage:Lo/onRemoveQueueItemAt$onPostMessage;

    iget v14, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    add-int/2addr v14, v4

    invoke-interface {v13, v9, v14, v8, v10}, Lo/onRemoveQueueItemAt$onPostMessage;->onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;

    move-result-object v10

    .line 2098
    iget v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v8, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    sub-int/2addr v4, v8

    iput v4, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    :cond_12
    :goto_b
    if-eqz v5, :cond_13

    .line 2103
    invoke-interface {v2, v3, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2104
    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2105
    iget-object v3, v1, Lo/onRemoveQueueItemAt;->onPostMessage:Lo/onRemoveQueueItemAt$onPostMessage;

    invoke-interface {v3, v11}, Lo/onRemoveQueueItemAt$onPostMessage;->onMessageChannelReady(Lo/onSkipToNext$extraCallback;)V

    goto/16 :goto_0

    :cond_13
    if-eqz v6, :cond_17

    if-eqz v10, :cond_15

    .line 2112
    iget v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v5, v10, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-le v4, v5, :cond_14

    .line 2113
    iget v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v5, v10, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v4, v5

    iput v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    .line 2115
    :cond_14
    iget v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v5, v10, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-le v4, v5, :cond_15

    .line 2116
    iget v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v5, v10, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v4, v5

    iput v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    .line 2119
    :cond_15
    iget v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v5, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-le v4, v5, :cond_16

    .line 2120
    iget v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v5, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v4, v5

    iput v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    .line 2122
    :cond_16
    iget v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v5, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-le v4, v5, :cond_1b

    .line 2123
    iget v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v5, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v4, v5

    iput v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    goto :goto_c

    :cond_17
    if-eqz v10, :cond_19

    .line 2127
    iget v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v5, v10, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-lt v4, v5, :cond_18

    .line 2128
    iget v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v5, v10, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v4, v5

    iput v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    .line 2130
    :cond_18
    iget v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v5, v10, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-lt v4, v5, :cond_19

    .line 2131
    iget v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v5, v10, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v4, v5

    iput v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    .line 2134
    :cond_19
    iget v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v5, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-lt v4, v5, :cond_1a

    .line 2135
    iget v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v5, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v4, v5

    iput v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    .line 2137
    :cond_1a
    iget v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v5, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-lt v4, v5, :cond_1b

    .line 2138
    iget v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v5, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v4, v5

    iput v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    .line 2142
    :cond_1b
    :goto_c
    invoke-interface {v2, v3, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2143
    iget v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v5, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    if-eq v4, v5, :cond_1c

    .line 2144
    invoke-interface {v2, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 2146
    :cond_1c
    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_d
    if-eqz v10, :cond_0

    .line 2149
    invoke-interface {v2, v3, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2157
    :cond_1d
    iget v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v6, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-ge v4, v6, :cond_1e

    const/4 v5, -0x1

    goto :goto_e

    :cond_1e
    const/4 v5, 0x0

    .line 2160
    :goto_e
    iget v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v6, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-ge v4, v6, :cond_1f

    add-int/lit8 v5, v5, 0x1

    .line 2163
    :cond_1f
    iget v4, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v6, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-gt v4, v6, :cond_20

    .line 2164
    iget v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v6, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v4, v6

    iput v4, v11, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    .line 2166
    :cond_20
    iget v4, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v6, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    if-gt v4, v6, :cond_21

    .line 2167
    iget v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget v6, v12, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v4, v6

    iput v4, v11, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    .line 2169
    :cond_21
    iget v4, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    add-int/2addr v4, v5

    iput v4, v12, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    .line 2170
    invoke-interface {v2, v3, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2171
    invoke-interface {v2, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 94
    :cond_22
    iget-object v1, v0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_38

    .line 96
    iget-object v3, v0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/onSkipToNext$extraCallback;

    .line 97
    iget v11, v3, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    if-eq v11, v4, :cond_37

    if-eq v11, v9, :cond_2d

    if-eq v11, v6, :cond_24

    if-eq v11, v7, :cond_23

    goto/16 :goto_19

    .line 5130
    :cond_23
    invoke-direct {v0, v3}, Lo/onSkipToNext;->ICustomTabsCallback(Lo/onSkipToNext$extraCallback;)V

    goto/16 :goto_19

    .line 4188
    :cond_24
    iget v11, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    .line 4190
    iget v12, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v13, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v12, v13

    .line 4192
    iget v13, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_10
    if-ge v13, v12, :cond_29

    .line 4193
    iget-object v5, v0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    invoke-interface {v5, v13}, Lo/onSkipToNext$onPostMessage;->onNavigationEvent(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-nez v5, :cond_27

    .line 4194
    invoke-direct {v0, v13}, Lo/onSkipToNext;->ICustomTabsCallback(I)Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_11

    :cond_25
    if-ne v15, v4, :cond_26

    .line 4205
    iget-object v5, v3, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v0, v6, v11, v14, v5}, Lo/onSkipToNext;->onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;

    move-result-object v5

    .line 4207
    invoke-direct {v0, v5}, Lo/onSkipToNext;->ICustomTabsCallback(Lo/onSkipToNext$extraCallback;)V

    move v11, v13

    const/4 v14, 0x0

    :cond_26
    const/4 v15, 0x0

    goto :goto_12

    :cond_27
    :goto_11
    if-nez v15, :cond_28

    .line 4196
    iget-object v5, v3, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v0, v6, v11, v14, v5}, Lo/onSkipToNext;->onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;

    move-result-object v5

    .line 4198
    invoke-direct {v0, v5}, Lo/onSkipToNext;->extraCallback(Lo/onSkipToNext$extraCallback;)V

    move v11, v13

    const/4 v14, 0x0

    :cond_28
    const/4 v15, 0x1

    :goto_12
    add-int/2addr v14, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    .line 4215
    :cond_29
    iget v5, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    if-eq v14, v5, :cond_2b

    .line 4216
    iget-object v5, v3, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 4741
    iget-boolean v12, v0, Lo/onSkipToNext;->onMessageChannelReady:Z

    if-nez v12, :cond_2a

    .line 4742
    iput-object v10, v3, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 4743
    iget-object v12, v0, Lo/onSkipToNext;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v12, v3}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    .line 4218
    :cond_2a
    invoke-virtual {v0, v6, v11, v14, v5}, Lo/onSkipToNext;->onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;

    move-result-object v3

    :cond_2b
    if-nez v15, :cond_2c

    .line 4221
    invoke-direct {v0, v3}, Lo/onSkipToNext;->extraCallback(Lo/onSkipToNext$extraCallback;)V

    goto/16 :goto_19

    .line 4223
    :cond_2c
    invoke-direct {v0, v3}, Lo/onSkipToNext;->ICustomTabsCallback(Lo/onSkipToNext$extraCallback;)V

    goto/16 :goto_19

    .line 3134
    :cond_2d
    iget v5, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    .line 3136
    iget v11, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v12, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v11, v12

    .line 3138
    iget v12, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    const/4 v13, 0x0

    const/4 v14, -0x1

    :goto_13
    if-ge v12, v11, :cond_33

    .line 3140
    iget-object v15, v0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    invoke-interface {v15, v12}, Lo/onSkipToNext$onPostMessage;->onNavigationEvent(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v15

    if-nez v15, :cond_30

    .line 3141
    invoke-direct {v0, v12}, Lo/onSkipToNext;->ICustomTabsCallback(I)Z

    move-result v15

    if-eqz v15, :cond_2e

    goto :goto_15

    :cond_2e
    if-ne v14, v4, :cond_2f

    .line 3162
    invoke-virtual {v0, v9, v5, v13, v10}, Lo/onSkipToNext;->onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;

    move-result-object v14

    .line 3163
    invoke-direct {v0, v14}, Lo/onSkipToNext;->ICustomTabsCallback(Lo/onSkipToNext$extraCallback;)V

    const/4 v14, 0x1

    goto :goto_14

    :cond_2f
    const/4 v14, 0x0

    :goto_14
    const/4 v15, 0x0

    goto :goto_17

    :cond_30
    :goto_15
    if-nez v14, :cond_31

    .line 3151
    invoke-virtual {v0, v9, v5, v13, v10}, Lo/onSkipToNext;->onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;

    move-result-object v14

    .line 3152
    invoke-direct {v0, v14}, Lo/onSkipToNext;->extraCallback(Lo/onSkipToNext$extraCallback;)V

    const/4 v14, 0x1

    goto :goto_16

    :cond_31
    const/4 v14, 0x0

    :goto_16
    const/4 v15, 0x1

    :goto_17
    if-eqz v14, :cond_32

    sub-int/2addr v12, v13

    sub-int/2addr v11, v13

    const/4 v13, 0x1

    goto :goto_18

    :cond_32
    add-int/lit8 v13, v13, 0x1

    :goto_18
    add-int/2addr v12, v4

    move v14, v15

    goto :goto_13

    .line 3176
    :cond_33
    iget v11, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    if-eq v13, v11, :cond_35

    .line 3741
    iget-boolean v11, v0, Lo/onSkipToNext;->onMessageChannelReady:Z

    if-nez v11, :cond_34

    .line 3742
    iput-object v10, v3, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 3743
    iget-object v11, v0, Lo/onSkipToNext;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v11, v3}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    .line 3178
    :cond_34
    invoke-virtual {v0, v9, v5, v13, v10}, Lo/onSkipToNext;->onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;

    move-result-object v3

    :cond_35
    if-nez v14, :cond_36

    .line 3181
    invoke-direct {v0, v3}, Lo/onSkipToNext;->extraCallback(Lo/onSkipToNext$extraCallback;)V

    goto :goto_19

    .line 3183
    :cond_36
    invoke-direct {v0, v3}, Lo/onSkipToNext;->ICustomTabsCallback(Lo/onSkipToNext$extraCallback;)V

    goto :goto_19

    .line 2432
    :cond_37
    invoke-direct {v0, v3}, Lo/onSkipToNext;->ICustomTabsCallback(Lo/onSkipToNext$extraCallback;)V

    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 115
    :cond_38
    iget-object v1, v0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method

.method public final onMessageChannelReady(Lo/onSkipToNext$extraCallback;)V
    .locals 1

    .line 741
    iget-boolean v0, p0, Lo/onSkipToNext;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 742
    iput-object v0, p1, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Lo/onSkipToNext;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v0, p1}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(II)I
    .locals 4

    .line 472
    iget-object v0, p0, Lo/onSkipToNext;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_6

    .line 474
    iget-object v1, p0, Lo/onSkipToNext;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onSkipToNext$extraCallback;

    .line 475
    iget v2, v1, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 476
    iget v2, v1, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-ne v2, p1, :cond_0

    .line 477
    iget p1, v1, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    goto :goto_1

    .line 479
    :cond_0
    iget v2, v1, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 482
    :cond_1
    iget v1, v1, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    if-gt v1, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 486
    :cond_2
    iget v2, v1, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    if-gt v2, p1, :cond_5

    .line 487
    iget v2, v1, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 488
    iget v2, v1, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v3, v1, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_3

    const/4 p1, -0x1

    return p1

    .line 491
    :cond_3
    iget v1, v1, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr p1, v1

    goto :goto_1

    .line 492
    :cond_4
    iget v2, v1, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 493
    iget v1, v1, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    add-int/2addr p1, v1

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public final onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;
    .locals 1

    .line 727
    iget-object v0, p0, Lo/onSkipToNext;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v0}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onSkipToNext$extraCallback;

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Lo/onSkipToNext$extraCallback;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/onSkipToNext$extraCallback;-><init>(IIILjava/lang/Object;)V

    goto :goto_0

    .line 731
    :cond_0
    iput p1, v0, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    .line 732
    iput p2, v0, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    .line 733
    iput p3, v0, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    .line 734
    iput-object p4, v0, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final onPostMessage()V
    .locals 7

    .line 557
    invoke-virtual {p0}, Lo/onSkipToNext;->extraCallback()V

    .line 558
    iget-object v0, p0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 560
    iget-object v3, p0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/onSkipToNext$extraCallback;

    .line 561
    iget v4, v3, Lo/onSkipToNext$extraCallback;->onPostMessage:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 575
    :cond_0
    iget-object v4, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    invoke-interface {v4, v3}, Lo/onSkipToNext$onPostMessage;->onPostMessage(Lo/onSkipToNext$extraCallback;)V

    .line 576
    iget-object v4, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    iget v5, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v3, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    invoke-interface {v4, v5, v3}, Lo/onSkipToNext$onPostMessage;->onMessageChannelReady(II)V

    goto :goto_1

    .line 571
    :cond_1
    iget-object v4, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    invoke-interface {v4, v3}, Lo/onSkipToNext$onPostMessage;->onPostMessage(Lo/onSkipToNext$extraCallback;)V

    .line 572
    iget-object v4, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    iget v5, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v6, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    iget-object v3, v3, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v3}, Lo/onSkipToNext$onPostMessage;->onNavigationEvent(IILjava/lang/Object;)V

    goto :goto_1

    .line 567
    :cond_2
    iget-object v4, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    invoke-interface {v4, v3}, Lo/onSkipToNext$onPostMessage;->onPostMessage(Lo/onSkipToNext$extraCallback;)V

    .line 568
    iget-object v4, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    iget v5, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v3, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    invoke-interface {v4, v5, v3}, Lo/onSkipToNext$onPostMessage;->onPostMessage(II)V

    goto :goto_1

    .line 563
    :cond_3
    iget-object v4, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    invoke-interface {v4, v3}, Lo/onSkipToNext$onPostMessage;->onPostMessage(Lo/onSkipToNext$extraCallback;)V

    .line 564
    iget-object v4, p0, Lo/onSkipToNext;->onPostMessage:Lo/onSkipToNext$onPostMessage;

    iget v5, v3, Lo/onSkipToNext$extraCallback;->onMessageChannelReady:I

    iget v3, v3, Lo/onSkipToNext$extraCallback;->ICustomTabsCallback:I

    invoke-interface {v4, v5, v3}, Lo/onSkipToNext$onPostMessage;->extraCallback(II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 583
    :cond_4
    iget-object v0, p0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/onSkipToNext;->onPostMessage(Ljava/util/List;)V

    .line 584
    iput v1, p0, Lo/onSkipToNext;->onRelationshipValidationResult:I

    return-void
.end method

.method public final onPostMessage(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/onSkipToNext$extraCallback;",
            ">;)V"
        }
    .end annotation

    .line 748
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 750
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/onSkipToNext$extraCallback;

    .line 10741
    iget-boolean v3, p0, Lo/onSkipToNext;->onMessageChannelReady:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 10742
    iput-object v3, v2, Lo/onSkipToNext$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 10743
    iget-object v3, p0, Lo/onSkipToNext;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v3, v2}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 752
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
