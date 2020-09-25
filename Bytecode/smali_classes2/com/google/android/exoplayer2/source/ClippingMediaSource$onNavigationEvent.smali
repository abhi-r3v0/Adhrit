.class final Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;
.super Lo/toJson;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final ICustomTabsCallback:J

.field private final asInterface:Z

.field private final onNavigationEvent:J

.field private final onPostMessage:J


# direct methods
.method public constructor <init>(Lo/t;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;
        }
    .end annotation

    .line 319
    invoke-direct {p0, p1}, Lo/toJson;-><init>(Lo/t;)V

    .line 320
    invoke-virtual {p1}, Lo/t;->onPostMessage()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 323
    new-instance v0, Lo/t$onMessageChannelReady;

    invoke-direct {v0}, Lo/t$onMessageChannelReady;-><init>()V

    invoke-virtual {p1, v1, v0}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    move-result-object p1

    const-wide/16 v3, 0x0

    .line 324
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, p4, v5

    if-nez v0, :cond_0

    .line 325
    iget-wide p4, p1, Lo/t$onMessageChannelReady;->asBinder:J

    goto :goto_0

    :cond_0
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    .line 326
    :goto_0
    iget-wide v5, p1, Lo/t$onMessageChannelReady;->asBinder:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v7

    if-eqz v0, :cond_5

    .line 327
    iget-wide v5, p1, Lo/t$onMessageChannelReady;->asBinder:J

    cmp-long v0, p4, v5

    if-lez v0, :cond_1

    .line 328
    iget-wide p4, p1, Lo/t$onMessageChannelReady;->asBinder:J

    :cond_1
    cmp-long v0, p2, v3

    if-eqz v0, :cond_3

    .line 330
    iget-boolean v0, p1, Lo/t$onMessageChannelReady;->onPostMessage:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 331
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    :cond_3
    :goto_1
    cmp-long v0, p2, p4

    if-gtz v0, :cond_4

    goto :goto_2

    .line 334
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    .line 337
    :cond_5
    :goto_2
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;->ICustomTabsCallback:J

    .line 338
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;->onNavigationEvent:J

    cmp-long v0, p4, v7

    if-nez v0, :cond_6

    move-wide p2, v7

    goto :goto_3

    :cond_6
    sub-long p2, p4, p2

    .line 339
    :goto_3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;->onPostMessage:J

    .line 340
    iget-boolean p2, p1, Lo/t$onMessageChannelReady;->onMessageChannelReady:Z

    if-eqz p2, :cond_8

    if-eqz v0, :cond_7

    iget-wide p2, p1, Lo/t$onMessageChannelReady;->asBinder:J

    cmp-long v0, p2, v7

    if-eqz v0, :cond_8

    iget-wide p1, p1, Lo/t$onMessageChannelReady;->asBinder:J

    cmp-long p3, p4, p1

    if-nez p3, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;->asInterface:Z

    return-void

    .line 321
    :cond_9
    new-instance p1, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public final onNavigationEvent(ILo/t$onMessageChannelReady;ZJ)Lo/t$onMessageChannelReady;
    .locals 6

    .line 349
    iget-object v0, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lo/t;->onNavigationEvent(ILo/t$onMessageChannelReady;ZJ)Lo/t$onMessageChannelReady;

    .line 351
    iget-wide p3, p2, Lo/t$onMessageChannelReady;->onRelationshipValidationResult:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;->ICustomTabsCallback:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Lo/t$onMessageChannelReady;->onRelationshipValidationResult:J

    .line 352
    iget-wide p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;->onPostMessage:J

    iput-wide p3, p2, Lo/t$onMessageChannelReady;->asBinder:J

    .line 353
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;->asInterface:Z

    iput-boolean p1, p2, Lo/t$onMessageChannelReady;->onMessageChannelReady:Z

    .line 354
    iget-wide p3, p2, Lo/t$onMessageChannelReady;->asInterface:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    .line 355
    iget-wide p3, p2, Lo/t$onMessageChannelReady;->asInterface:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;->ICustomTabsCallback:J

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Lo/t$onMessageChannelReady;->asInterface:J

    .line 356
    iget-wide p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;->onNavigationEvent:J

    cmp-long p1, p3, v0

    iget-wide p3, p2, Lo/t$onMessageChannelReady;->asInterface:J

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;->onNavigationEvent:J

    .line 357
    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    iput-wide p3, p2, Lo/t$onMessageChannelReady;->asInterface:J

    .line 358
    iget-wide p3, p2, Lo/t$onMessageChannelReady;->asInterface:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;->ICustomTabsCallback:J

    sub-long/2addr p3, v2

    iput-wide p3, p2, Lo/t$onMessageChannelReady;->asInterface:J

    .line 360
    :cond_1
    iget-wide p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;->ICustomTabsCallback:J

    invoke-static {p3, p4}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide p3

    .line 361
    iget-wide v2, p2, Lo/t$onMessageChannelReady;->onNavigationEvent:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    .line 362
    iget-wide v2, p2, Lo/t$onMessageChannelReady;->onNavigationEvent:J

    add-long/2addr v2, p3

    iput-wide v2, p2, Lo/t$onMessageChannelReady;->onNavigationEvent:J

    .line 364
    :cond_2
    iget-wide v2, p2, Lo/t$onMessageChannelReady;->extraCallback:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_3

    .line 365
    iget-wide v0, p2, Lo/t$onMessageChannelReady;->extraCallback:J

    add-long/2addr v0, p3

    iput-wide v0, p2, Lo/t$onMessageChannelReady;->extraCallback:J

    :cond_3
    return-object p2
.end method

.method public final onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;
    .locals 12

    .line 372
    iget-object p1, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lo/t;->onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;

    .line 373
    invoke-virtual {p2}, Lo/t$onPostMessage;->onMessageChannelReady()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;->ICustomTabsCallback:J

    sub-long v10, v0, v2

    .line 374
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;->onPostMessage:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    move-wide v8, v2

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v10

    move-wide v8, v0

    .line 376
    :goto_0
    iget-object v5, p2, Lo/t$onPostMessage;->onPostMessage:Ljava/lang/Object;

    iget-object v6, p2, Lo/t$onPostMessage;->extraCallback:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v11}, Lo/t$onPostMessage;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lo/t$onPostMessage;

    move-result-object p1

    return-object p1
.end method
