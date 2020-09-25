.class public final Lo/getCardBackgroundColor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:Lo/logWarn;

.field private ICustomTabsCallback$Stub$Proxy:Landroid/graphics/ColorSpace;

.field private asBinder:I

.field public asInterface:I

.field public final extraCallback:Lo/getRootAlpha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRootAlpha<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:Lo/setProgress;

.field public onNavigationEvent:I

.field public final onPostMessage:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation
.end field

.field public onRelationshipValidationResult:I

.field public onTransact:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/getRootAlpha;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRootAlpha<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1062
    sget-object v0, Lo/setProgress;->onPostMessage:Lo/setProgress;

    iput-object v0, p0, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    const/4 v0, -0x1

    .line 1063
    iput v0, p0, Lo/getCardBackgroundColor;->onNavigationEvent:I

    const/4 v1, 0x0

    .line 1064
    iput v1, p0, Lo/getCardBackgroundColor;->ICustomTabsCallback:I

    .line 1065
    iput v0, p0, Lo/getCardBackgroundColor;->asInterface:I

    .line 1066
    iput v0, p0, Lo/getCardBackgroundColor;->onTransact:I

    const/4 v1, 0x1

    .line 1067
    iput v1, p0, Lo/getCardBackgroundColor;->onRelationshipValidationResult:I

    .line 1068
    iput v0, p0, Lo/getCardBackgroundColor;->asBinder:I

    .line 1073
    invoke-static {p1}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    invoke-virtual {p1}, Lo/getRootAlpha;->onPostMessage()Lo/getRootAlpha;

    move-result-object p1

    iput-object p1, p0, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    const/4 p1, 0x0

    .line 1075
    iput-object p1, p0, Lo/getCardBackgroundColor;->onPostMessage:Lo/setPivotX;

    return-void

    .line 1111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private constructor <init>(Lo/setPivotX;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPivotX<",
            "Ljava/io/FileInputStream;",
            ">;)V"
        }
    .end annotation

    .line 2078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2062
    sget-object v0, Lo/setProgress;->onPostMessage:Lo/setProgress;

    iput-object v0, p0, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    const/4 v0, -0x1

    .line 2063
    iput v0, p0, Lo/getCardBackgroundColor;->onNavigationEvent:I

    const/4 v1, 0x0

    .line 2064
    iput v1, p0, Lo/getCardBackgroundColor;->ICustomTabsCallback:I

    .line 2065
    iput v0, p0, Lo/getCardBackgroundColor;->asInterface:I

    .line 2066
    iput v0, p0, Lo/getCardBackgroundColor;->onTransact:I

    const/4 v1, 0x1

    .line 2067
    iput v1, p0, Lo/getCardBackgroundColor;->onRelationshipValidationResult:I

    .line 2068
    iput v0, p0, Lo/getCardBackgroundColor;->asBinder:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2080
    iput-object v0, p0, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    .line 2081
    iput-object p1, p0, Lo/getCardBackgroundColor;->onPostMessage:Lo/setPivotX;

    return-void

    .line 2215
    :cond_0
    throw v0
.end method

.method private constructor <init>(Lo/setPivotX;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPivotX<",
            "Ljava/io/FileInputStream;",
            ">;I)V"
        }
    .end annotation

    .line 3085
    invoke-direct {p0, p1}, Lo/getCardBackgroundColor;-><init>(Lo/setPivotX;)V

    .line 3086
    iput p2, p0, Lo/getCardBackgroundColor;->asBinder:I

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/view/View;Lo/getContentPaddingRight;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 81
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x320

    .line 82
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 83
    new-instance v0, Lo/getCardBackgroundColor$4;

    invoke-direct {v0, p1}, Lo/getCardBackgroundColor$4;-><init>(Lo/getContentPaddingRight;)V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static onMessageChannelReady(Landroid/view/View;Lo/getContentPaddingRight;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 61
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x320

    .line 62
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 63
    new-instance v0, Lo/getCardBackgroundColor$3;

    invoke-direct {v0, p1}, Lo/getCardBackgroundColor$3;-><init>(Lo/getContentPaddingRight;)V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private onTransact()Lo/initState$onPostMessage;
    .locals 4

    .line 6374
    :try_start_0
    invoke-virtual {p0}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6375
    :try_start_1
    invoke-static {v0}, Lo/setDeepLinkData;->onMessageChannelReady(Ljava/io/InputStream;)Lo/initState$onPostMessage;

    move-result-object v1

    .line 7029
    iget-object v2, v1, Lo/initState$onPostMessage;->onPostMessage:Landroid/graphics/ColorSpace;

    .line 6376
    iput-object v2, p0, Lo/getCardBackgroundColor;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/ColorSpace;

    .line 8025
    iget-object v2, v1, Lo/initState$onPostMessage;->onNavigationEvent:Landroid/util/Pair;

    if-eqz v2, :cond_0

    .line 6379
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iput v3, p0, Lo/getCardBackgroundColor;->asInterface:I

    .line 6380
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput v2, p0, Lo/getCardBackgroundColor;->onTransact:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 6385
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 6388
    :catch_1
    :cond_2
    throw v1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getCardBackgroundColor;
    .locals 3

    .line 3100
    iget-object v0, p0, Lo/getCardBackgroundColor;->onPostMessage:Lo/setPivotX;

    if-eqz v0, :cond_0

    .line 3101
    new-instance v1, Lo/getCardBackgroundColor;

    iget v2, p0, Lo/getCardBackgroundColor;->asBinder:I

    invoke-direct {v1, v0, v2}, Lo/getCardBackgroundColor;-><init>(Lo/setPivotX;I)V

    goto :goto_1

    .line 3103
    :cond_0
    iget-object v0, p0, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    .line 3104
    invoke-static {v0}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 3106
    :cond_1
    :try_start_0
    new-instance v1, Lo/getCardBackgroundColor;

    invoke-direct {v1, v0}, Lo/getCardBackgroundColor;-><init>(Lo/getRootAlpha;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3109
    :goto_0
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    :goto_1
    if-eqz v1, :cond_2

    .line 3113
    invoke-virtual {v1, p0}, Lo/getCardBackgroundColor;->ICustomTabsCallback(Lo/getCardBackgroundColor;)V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    .line 3109
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw v1
.end method

.method public final ICustomTabsCallback(Lo/getCardBackgroundColor;)V
    .locals 1

    .line 9326
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_0

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_1

    .line 9327
    :cond_0
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 9209
    :cond_1
    iget-object v0, p1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 8400
    iput-object v0, p0, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 10326
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_2

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_3

    .line 10327
    :cond_2
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 10230
    :cond_3
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    .line 8401
    iput v0, p0, Lo/getCardBackgroundColor;->asInterface:I

    .line 11326
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_4

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_5

    .line 11327
    :cond_4
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 11236
    :cond_5
    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    .line 8402
    iput v0, p0, Lo/getCardBackgroundColor;->onTransact:I

    .line 12326
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_6

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_7

    .line 12327
    :cond_6
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 12218
    :cond_7
    iget v0, p1, Lo/getCardBackgroundColor;->onNavigationEvent:I

    .line 8403
    iput v0, p0, Lo/getCardBackgroundColor;->onNavigationEvent:I

    .line 13326
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_8

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_9

    .line 13327
    :cond_8
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 13224
    :cond_9
    iget v0, p1, Lo/getCardBackgroundColor;->ICustomTabsCallback:I

    .line 8404
    iput v0, p0, Lo/getCardBackgroundColor;->ICustomTabsCallback:I

    .line 14255
    iget v0, p1, Lo/getCardBackgroundColor;->onRelationshipValidationResult:I

    .line 8405
    iput v0, p0, Lo/getCardBackgroundColor;->onRelationshipValidationResult:I

    .line 8406
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onMessageChannelReady()I

    move-result v0

    iput v0, p0, Lo/getCardBackgroundColor;->asBinder:I

    .line 14260
    iget-object v0, p1, Lo/getCardBackgroundColor;->ICustomTabsCallback$Stub:Lo/logWarn;

    .line 8407
    iput-object v0, p0, Lo/getCardBackgroundColor;->ICustomTabsCallback$Stub:Lo/logWarn;

    .line 15326
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_a

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_b

    .line 15327
    :cond_a
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 15246
    :cond_b
    iget-object p1, p1, Lo/getCardBackgroundColor;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/ColorSpace;

    .line 8408
    iput-object p1, p0, Lo/getCardBackgroundColor;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public final close()V
    .locals 1

    .line 3121
    iget-object v0, p0, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-void
.end method

.method public final extraCallback()Ljava/io/InputStream;
    .locals 3

    .line 3148
    iget-object v0, p0, Lo/getCardBackgroundColor;->onPostMessage:Lo/setPivotX;

    if-eqz v0, :cond_0

    .line 3149
    invoke-interface {v0}, Lo/setPivotX;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 3151
    :cond_0
    iget-object v0, p0, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    .line 3152
    invoke-static {v0}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3155
    :try_start_0
    new-instance v1, Lo/getAlpha;

    invoke-virtual {v0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-direct {v1, v2}, Lo/getAlpha;-><init>(Lcom/facebook/common/memory/PooledByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3157
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 3289
    iget-object v0, p0, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3290
    iget-object v0, p0, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    invoke-virtual {v0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->onNavigationEvent()I

    move-result v0

    return v0

    .line 3292
    :cond_0
    iget v0, p0, Lo/getCardBackgroundColor;->asBinder:I

    return v0
.end method

.method public final declared-synchronized onNavigationEvent()Z
    .locals 1

    monitor-enter p0

    .line 3129
    :try_start_0
    iget-object v0, p0, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getCardBackgroundColor;->onPostMessage:Lo/setPivotX;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 7

    .line 4138
    iget-object v0, p0, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 3305
    :cond_0
    invoke-virtual {p0}, Lo/getCardBackgroundColor;->onMessageChannelReady()I

    move-result v2

    const/16 v3, 0xa

    .line 3306
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3307
    new-array v3, v2, [B

    .line 3309
    :try_start_0
    invoke-virtual {v0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/common/memory/PooledByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 3315
    invoke-virtual {v0}, Lo/getRootAlpha;->close()V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 3313
    :try_start_1
    invoke-interface {v4, v1, v3, v1, v2}, Lcom/facebook/common/memory/PooledByteBuffer;->onMessageChannelReady(I[BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3315
    invoke-virtual {v0}, Lo/getRootAlpha;->close()V

    .line 3317
    new-instance v0, Ljava/lang/StringBuilder;

    shl-int/lit8 v4, v2, 0x1

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 3318
    aget-byte v5, v3, v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 3319
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v6, v1

    const-string v5, "%02X"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3321
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 3315
    invoke-virtual {v0}, Lo/getRootAlpha;->close()V

    throw v1
.end method

.method public final onRelationshipValidationResult()V
    .locals 4

    .line 4334
    invoke-virtual {p0}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lo/pauseAnimation;->onPostMessage(Ljava/io/InputStream;)Lo/setProgress;

    move-result-object v0

    .line 4335
    iput-object v0, p0, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 4339
    invoke-static {v0}, Lo/getFrame;->onPostMessage(Lo/setProgress;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4361
    invoke-virtual {p0}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lo/extraCallback;->onNavigationEvent(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4363
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput v2, p0, Lo/getCardBackgroundColor;->asInterface:I

    .line 4364
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput v2, p0, Lo/getCardBackgroundColor;->onTransact:I

    goto :goto_0

    .line 4342
    :cond_0
    invoke-direct {p0}, Lo/getCardBackgroundColor;->onTransact()Lo/initState$onPostMessage;

    move-result-object v1

    .line 5025
    iget-object v1, v1, Lo/initState$onPostMessage;->onNavigationEvent:Landroid/util/Pair;

    .line 4344
    :cond_1
    :goto_0
    sget-object v2, Lo/getFrame;->ICustomTabsCallback:Lo/setProgress;

    const/4 v3, -0x1

    if-ne v0, v2, :cond_2

    iget v2, p0, Lo/getCardBackgroundColor;->onNavigationEvent:I

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_5

    .line 4347
    invoke-virtual {p0}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback;->extraCallback(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lo/getCardBackgroundColor;->ICustomTabsCallback:I

    .line 5045
    invoke-static {v0}, Lo/ɹ;->extraCallback(I)I

    move-result v0

    .line 4348
    iput v0, p0, Lo/getCardBackgroundColor;->onNavigationEvent:I

    return-void

    .line 4350
    :cond_2
    sget-object v1, Lo/getFrame;->ICustomTabsCallback$Stub$Proxy:Lo/setProgress;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lo/getCardBackgroundColor;->onNavigationEvent:I

    if-ne v0, v3, :cond_4

    .line 4352
    invoke-virtual {p0}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object v0

    .line 6028
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_3

    .line 6029
    invoke-static {v0}, Lcom/facebook/imageutils/HeifExifUtil$HeifExifUtilAndroidN;->onNavigationEvent(Ljava/io/InputStream;)I

    move-result v2

    goto :goto_1

    :cond_3
    const-string v0, "HeifExifUtil"

    const-string v1, "Trying to read Heif Exif information before Android N -> ignoring"

    .line 6031
    invoke-static {v0, v1}, Lo/setTranslateX;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 4352
    :goto_1
    iput v2, p0, Lo/getCardBackgroundColor;->ICustomTabsCallback:I

    .line 6045
    invoke-static {v2}, Lo/ɹ;->extraCallback(I)I

    move-result v0

    .line 4353
    iput v0, p0, Lo/getCardBackgroundColor;->onNavigationEvent:I

    return-void

    .line 4354
    :cond_4
    iget v0, p0, Lo/getCardBackgroundColor;->onNavigationEvent:I

    if-ne v0, v3, :cond_5

    .line 4355
    iput v2, p0, Lo/getCardBackgroundColor;->onNavigationEvent:I

    :cond_5
    return-void
.end method
