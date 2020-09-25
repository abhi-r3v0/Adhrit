.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final ICustomTabsCallback$Stub:I

.field public final asBinder:I

.field public final asInterface:I

.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onPostMessage:Z

.field public final onRelationshipValidationResult:Z

.field public final onTransact:Z

.field public final warmup:[Lcom/google/android/exoplayer2/audio/AudioProcessor;


# direct methods
.method public constructor <init>(ZIIIIIIIZZ[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 0

    .line 1351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1352
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onPostMessage:Z

    .line 1353
    iput p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onMessageChannelReady:I

    .line 1354
    iput p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->extraCallback:I

    .line 1355
    iput p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback:I

    .line 1356
    iput p5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onNavigationEvent:I

    .line 1357
    iput p6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 1358
    iput p7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asInterface:I

    if-eqz p8, :cond_0

    goto :goto_0

    .line 1359
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback()I

    move-result p8

    :goto_0
    iput p8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asBinder:I

    .line 1360
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onRelationshipValidationResult:Z

    .line 1361
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onTransact:Z

    .line 1362
    iput-object p11, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->warmup:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    return-void
.end method

.method private ICustomTabsCallback()I
    .locals 8

    .line 1458
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onPostMessage:Z

    const-wide/32 v1, 0x3d090

    if-eqz v0, :cond_1

    .line 1459
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asInterface:I

    .line 1460
    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/4 v3, -0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1461
    :goto_0
    invoke-static {v3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    shl-int/lit8 v3, v0, 0x2

    .line 1464
    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback(J)J

    move-result-wide v1

    long-to-int v2, v1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback:I

    mul-int v2, v2, v1

    int-to-long v0, v0

    const-wide/32 v4, 0xb71b0

    .line 1468
    invoke-virtual {p0, v4, v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback(J)J

    move-result-wide v4

    iget v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback:I

    int-to-long v6, v6

    mul-long v4, v4, v6

    .line 1467
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 1469
    invoke-static {v3, v2, v1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(III)I

    move-result v0

    return v0

    .line 1471
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asInterface:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onNavigationEvent(I)I

    move-result v0

    .line 1472
    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asInterface:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    shl-int/lit8 v0, v0, 0x1

    :cond_2
    int-to-long v3, v0

    mul-long v3, v3, v1

    const-wide/32 v0, 0xf4240

    .line 1475
    div-long/2addr v3, v0

    long-to-int v0, v3

    return v0
.end method

.method private ICustomTabsCallback(ZLo/u$b;I)Landroid/media/AudioTrack;
    .locals 6

    if-eqz p1, :cond_0

    .line 1432
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 p2, 0x3

    .line 1434
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/16 p2, 0x10

    .line 1435
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 1436
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 1437
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    goto :goto_0

    .line 1439
    :cond_0
    invoke-virtual {p2}, Lo/u$b;->ICustomTabsCallback()Landroid/media/AudioAttributes;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 1441
    new-instance p1, Landroid/media/AudioFormat$Builder;

    invoke-direct {p1}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 1443
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    iget p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asInterface:I

    .line 1444
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    iget p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onNavigationEvent:I

    .line 1445
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 1446
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 1447
    new-instance p1, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asBinder:I

    const/4 v4, 0x1

    if-eqz p3, :cond_1

    move v5, p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    const/4 v5, 0x0

    :goto_1
    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback(J)J
    .locals 2

    .line 1380
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onNavigationEvent:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final extraCallback(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 1372
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->extraCallback:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final onMessageChannelReady(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 1376
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onNavigationEvent:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final onMessageChannelReady(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;)Z
    .locals 2

    .line 1366
    iget v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asInterface:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asInterface:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onNavigationEvent:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onNavigationEvent:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback$Stub:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage(ZLo/u$b;I)Landroid/media/AudioTrack;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 1387
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1388
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback(ZLo/u$b;I)Landroid/media/AudioTrack;

    move-result-object p1

    goto :goto_0

    .line 1390
    :cond_0
    iget p1, p2, Lo/u$b;->onNavigationEvent:I

    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(I)I

    move-result v1

    if-nez p3, :cond_1

    .line 1392
    new-instance p1, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asInterface:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asBinder:I

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_0

    .line 1402
    :cond_1
    new-instance p1, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asInterface:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asBinder:I

    const/4 v6, 0x1

    move-object v0, p1

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 1414
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    return-object p1

    .line 1417
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    :catch_0
    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->onNavigationEvent:I

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onNavigationEvent;->asBinder:I

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;-><init>(IIII)V

    throw p1
.end method
