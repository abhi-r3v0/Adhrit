.class public final Lo/addQueueItem$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/addQueueItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field ICustomTabsCallback:F

.field ICustomTabsCallback$Stub:I

.field asBinder:J

.field asInterface:I

.field extraCallback:F

.field onMessageChannelReady:J

.field onNavigationEvent:I

.field onPostMessage:I

.field onRelationshipValidationResult:F

.field onTransact:J

.field warmup:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 757
    iput-wide v0, p0, Lo/addQueueItem$onPostMessage;->onMessageChannelReady:J

    const-wide/16 v0, -0x1

    .line 758
    iput-wide v0, p0, Lo/addQueueItem$onPostMessage;->onTransact:J

    const-wide/16 v0, 0x0

    .line 759
    iput-wide v0, p0, Lo/addQueueItem$onPostMessage;->asBinder:J

    const/4 v0, 0x0

    .line 760
    iput v0, p0, Lo/addQueueItem$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 761
    iput v0, p0, Lo/addQueueItem$onPostMessage;->asInterface:I

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 4

    .line 788
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 789
    iget-wide v2, p0, Lo/addQueueItem$onPostMessage;->onMessageChannelReady:J

    sub-long v2, v0, v2

    long-to-int v3, v2

    iget v2, p0, Lo/addQueueItem$onPostMessage;->onPostMessage:I

    invoke-static {v3, v2}, Lo/addQueueItem;->extraCallback(II)I

    move-result v2

    iput v2, p0, Lo/addQueueItem$onPostMessage;->warmup:I

    .line 790
    invoke-virtual {p0, v0, v1}, Lo/addQueueItem$onPostMessage;->onPostMessage(J)F

    move-result v2

    iput v2, p0, Lo/addQueueItem$onPostMessage;->onRelationshipValidationResult:F

    .line 791
    iput-wide v0, p0, Lo/addQueueItem$onPostMessage;->onTransact:J

    return-void
.end method

.method final onPostMessage(J)F
    .locals 7

    .line 800
    iget-wide v0, p0, Lo/addQueueItem$onPostMessage;->onMessageChannelReady:J

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gez v3, :cond_0

    return v2

    .line 802
    :cond_0
    iget-wide v0, p0, Lo/addQueueItem$onPostMessage;->onTransact:J

    const-wide/16 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmp-long v6, v0, v3

    if-ltz v6, :cond_2

    cmp-long v3, p1, v0

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    sub-long/2addr p1, v0

    .line 807
    iget v0, p0, Lo/addQueueItem$onPostMessage;->onRelationshipValidationResult:F

    sub-float v1, v5, v0

    long-to-float p1, p1

    iget p2, p0, Lo/addQueueItem$onPostMessage;->warmup:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 808
    invoke-static {p1, v2, v5}, Lo/addQueueItem;->ICustomTabsCallback(FFF)F

    move-result p1

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    return v1

    .line 803
    :cond_2
    :goto_0
    iget-wide v0, p0, Lo/addQueueItem$onPostMessage;->onMessageChannelReady:J

    sub-long/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    long-to-float p1, p1

    .line 804
    iget p2, p0, Lo/addQueueItem$onPostMessage;->onNavigationEvent:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1, v2, v5}, Lo/addQueueItem;->ICustomTabsCallback(FFF)F

    move-result p1

    mul-float p1, p1, v0

    return p1
.end method
