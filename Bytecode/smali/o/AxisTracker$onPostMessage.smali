.class public Lo/AxisTracker$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AxisTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:J

.field private ICustomTabsCallback$Stub:J

.field private extraCallback:J

.field private final onMessageChannelReady:J

.field private final onNavigationEvent:J

.field private final onPostMessage:J

.field private onRelationshipValidationResult:J

.field private onTransact:J


# direct methods
.method protected constructor <init>(JJJJJJJ)V
    .locals 0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-wide p1, p0, Lo/AxisTracker$onPostMessage;->onPostMessage:J

    .line 347
    iput-wide p3, p0, Lo/AxisTracker$onPostMessage;->onMessageChannelReady:J

    .line 348
    iput-wide p5, p0, Lo/AxisTracker$onPostMessage;->extraCallback:J

    .line 349
    iput-wide p7, p0, Lo/AxisTracker$onPostMessage;->ICustomTabsCallback:J

    .line 350
    iput-wide p9, p0, Lo/AxisTracker$onPostMessage;->onTransact:J

    .line 351
    iput-wide p11, p0, Lo/AxisTracker$onPostMessage;->onRelationshipValidationResult:J

    .line 352
    iput-wide p13, p0, Lo/AxisTracker$onPostMessage;->onNavigationEvent:J

    .line 354
    invoke-static/range {p3 .. p14}, Lo/AxisTracker$onPostMessage;->ICustomTabsCallback(JJJJJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lo/AxisTracker$onPostMessage;->ICustomTabsCallback$Stub:J

    return-void
.end method

.method private ICustomTabsCallback()J
    .locals 2

    .line 376
    iget-wide v0, p0, Lo/AxisTracker$onPostMessage;->onRelationshipValidationResult:J

    return-wide v0
.end method

.method protected static ICustomTabsCallback(JJJJJJ)J
    .locals 7

    const-wide/16 v0, 0x1

    add-long v2, p6, v0

    cmp-long v4, v2, p8

    if-gez v4, :cond_1

    add-long v2, p2, v0

    cmp-long v4, v2, p4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    sub-long v2, p0, p2

    sub-long v4, p8, p6

    long-to-float v4, v4

    sub-long v5, p4, p2

    long-to-float v5, v5

    div-float/2addr v4, v5

    long-to-float v2, v2

    mul-float v2, v2, v4

    float-to-long v2, v2

    const-wide/16 v4, 0x14

    .line 332
    div-long v4, v2, v4

    add-long/2addr v2, p6

    sub-long v2, v2, p10

    sub-long/2addr v2, v4

    sub-long v0, p8, v0

    move-wide p0, v2

    move-wide p2, p6

    move-wide p4, v0

    .line 335
    invoke-static/range {p0 .. p5}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    return-wide p6
.end method

.method static synthetic ICustomTabsCallback(Lo/AxisTracker$onPostMessage;)J
    .locals 2

    .line 296
    invoke-direct {p0}, Lo/AxisTracker$onPostMessage;->extraCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method private extraCallback()J
    .locals 2

    .line 386
    iget-wide v0, p0, Lo/AxisTracker$onPostMessage;->onPostMessage:J

    return-wide v0
.end method

.method static synthetic extraCallback(Lo/AxisTracker$onPostMessage;)J
    .locals 2

    .line 296
    invoke-direct {p0}, Lo/AxisTracker$onPostMessage;->ICustomTabsCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method private extraCallback(JJ)V
    .locals 0

    .line 398
    iput-wide p1, p0, Lo/AxisTracker$onPostMessage;->ICustomTabsCallback:J

    .line 399
    iput-wide p3, p0, Lo/AxisTracker$onPostMessage;->onRelationshipValidationResult:J

    .line 400
    invoke-direct {p0}, Lo/AxisTracker$onPostMessage;->onRelationshipValidationResult()V

    return-void
.end method

.method static synthetic extraCallback(Lo/AxisTracker$onPostMessage;JJ)V
    .locals 0

    .line 296
    invoke-direct {p0, p1, p2, p3, p4}, Lo/AxisTracker$onPostMessage;->onNavigationEvent(JJ)V

    return-void
.end method

.method private onMessageChannelReady()J
    .locals 2

    .line 368
    iget-wide v0, p0, Lo/AxisTracker$onPostMessage;->onTransact:J

    return-wide v0
.end method

.method static synthetic onMessageChannelReady(Lo/AxisTracker$onPostMessage;)J
    .locals 2

    .line 296
    invoke-direct {p0}, Lo/AxisTracker$onPostMessage;->onNavigationEvent()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic onMessageChannelReady(Lo/AxisTracker$onPostMessage;JJ)V
    .locals 0

    .line 296
    invoke-direct {p0, p1, p2, p3, p4}, Lo/AxisTracker$onPostMessage;->extraCallback(JJ)V

    return-void
.end method

.method private onNavigationEvent()J
    .locals 2

    .line 381
    iget-wide v0, p0, Lo/AxisTracker$onPostMessage;->onMessageChannelReady:J

    return-wide v0
.end method

.method static synthetic onNavigationEvent(Lo/AxisTracker$onPostMessage;)J
    .locals 2

    .line 296
    invoke-direct {p0}, Lo/AxisTracker$onPostMessage;->onMessageChannelReady()J

    move-result-wide v0

    return-wide v0
.end method

.method private onNavigationEvent(JJ)V
    .locals 0

    .line 391
    iput-wide p1, p0, Lo/AxisTracker$onPostMessage;->extraCallback:J

    .line 392
    iput-wide p3, p0, Lo/AxisTracker$onPostMessage;->onTransact:J

    .line 393
    invoke-direct {p0}, Lo/AxisTracker$onPostMessage;->onRelationshipValidationResult()V

    return-void
.end method

.method private onPostMessage()J
    .locals 2

    .line 405
    iget-wide v0, p0, Lo/AxisTracker$onPostMessage;->ICustomTabsCallback$Stub:J

    return-wide v0
.end method

.method static synthetic onPostMessage(Lo/AxisTracker$onPostMessage;)J
    .locals 2

    .line 296
    invoke-direct {p0}, Lo/AxisTracker$onPostMessage;->onPostMessage()J

    move-result-wide v0

    return-wide v0
.end method

.method private onRelationshipValidationResult()V
    .locals 12

    .line 409
    iget-wide v0, p0, Lo/AxisTracker$onPostMessage;->onMessageChannelReady:J

    iget-wide v2, p0, Lo/AxisTracker$onPostMessage;->extraCallback:J

    iget-wide v4, p0, Lo/AxisTracker$onPostMessage;->ICustomTabsCallback:J

    iget-wide v6, p0, Lo/AxisTracker$onPostMessage;->onTransact:J

    iget-wide v8, p0, Lo/AxisTracker$onPostMessage;->onRelationshipValidationResult:J

    iget-wide v10, p0, Lo/AxisTracker$onPostMessage;->onNavigationEvent:J

    .line 410
    invoke-static/range {v0 .. v11}, Lo/AxisTracker$onPostMessage;->ICustomTabsCallback(JJJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lo/AxisTracker$onPostMessage;->ICustomTabsCallback$Stub:J

    return-void
.end method
