.class public final Lo/measureChildCollapseMargins$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/updateBitmap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/measureChildCollapseMargins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/payments/checkout/paymentstatus/list/CheckoutSuccessAdapter$Companion;",
        "",
        "()V",
        "ITEM_HEADER",
        "",
        "ITEM_ITEM",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/removeAllAnimatorListeners;

.field private onNavigationEvent:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/removeAllAnimatorListeners;)V
    .locals 2

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 1021
    iput-wide v0, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->onNavigationEvent:J

    .line 1024
    iput-object p1, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->extraCallback:Lo/removeAllAnimatorListeners;

    return-void
.end method

.method private onMessageChannelReady()J
    .locals 6

    .line 2041
    iget-wide v0, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->onNavigationEvent:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    .line 2044
    iput-wide v0, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->onNavigationEvent:J

    .line 2045
    iget-object v0, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->extraCallback:Lo/removeAllAnimatorListeners;

    invoke-interface {v0}, Lo/removeAllAnimatorListeners;->extraCallback()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2047
    iget-wide v2, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->onNavigationEvent:J

    iget-object v4, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->extraCallback:Lo/removeAllAnimatorListeners;

    invoke-interface {v4, v1}, Lo/removeAllAnimatorListeners;->onNavigationEvent(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->onNavigationEvent:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2049
    :cond_1
    iget-wide v0, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->onNavigationEvent:J

    return-wide v0
.end method


# virtual methods
.method public final extraCallback(J)J
    .locals 12

    .line 2063
    invoke-direct {p0}, Lo/measureChildCollapseMargins$onMessageChannelReady;->onMessageChannelReady()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    return-wide v2

    .line 2092
    :cond_0
    iget-object v6, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->extraCallback:Lo/removeAllAnimatorListeners;

    invoke-interface {v6}, Lo/removeAllAnimatorListeners;->onNavigationEvent()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_2

    .line 2069
    invoke-direct {p0}, Lo/measureChildCollapseMargins$onMessageChannelReady;->onMessageChannelReady()J

    move-result-wide v8

    div-long v8, p1, v8

    .line 2070
    iget-object v6, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->extraCallback:Lo/removeAllAnimatorListeners;

    invoke-interface {v6}, Lo/removeAllAnimatorListeners;->onNavigationEvent()I

    move-result v6

    int-to-long v10, v6

    cmp-long v6, v8, v10

    if-ltz v6, :cond_2

    return-wide v2

    .line 2075
    :cond_2
    rem-long v0, p1, v0

    .line 2079
    iget-object v2, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->extraCallback:Lo/removeAllAnimatorListeners;

    invoke-interface {v2}, Lo/removeAllAnimatorListeners;->extraCallback()I

    move-result v2

    :goto_1
    if-ge v7, v2, :cond_3

    cmp-long v3, v4, v0

    if-gtz v3, :cond_3

    .line 2081
    iget-object v3, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->extraCallback:Lo/removeAllAnimatorListeners;

    invoke-interface {v3, v7}, Lo/removeAllAnimatorListeners;->onNavigationEvent(I)I

    move-result v3

    int-to-long v8, v3

    add-long/2addr v4, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    sub-long/2addr v4, v0

    add-long/2addr p1, v4

    return-wide p1
.end method

.method public final onMessageChannelReady(J)I
    .locals 7

    .line 1092
    iget-object v0, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->extraCallback:Lo/removeAllAnimatorListeners;

    invoke-interface {v0}, Lo/removeAllAnimatorListeners;->onNavigationEvent()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1030
    invoke-direct {p0}, Lo/measureChildCollapseMargins$onMessageChannelReady;->onMessageChannelReady()J

    move-result-wide v3

    div-long v3, p1, v3

    .line 1031
    iget-object v0, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->extraCallback:Lo/removeAllAnimatorListeners;

    invoke-interface {v0}, Lo/removeAllAnimatorListeners;->onNavigationEvent()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 1035
    :cond_1
    invoke-direct {p0}, Lo/measureChildCollapseMargins$onMessageChannelReady;->onMessageChannelReady()J

    move-result-wide v3

    rem-long/2addr p1, v3

    const-wide/16 v3, 0x0

    .line 1100
    :cond_2
    iget-object v0, p0, Lo/measureChildCollapseMargins$onMessageChannelReady;->extraCallback:Lo/removeAllAnimatorListeners;

    invoke-interface {v0, v1}, Lo/removeAllAnimatorListeners;->onNavigationEvent(I)I

    move-result v0

    int-to-long v5, v0

    add-long/2addr v3, v5

    add-int/2addr v1, v2

    cmp-long v0, p1, v3

    if-gez v0, :cond_2

    sub-int/2addr v1, v2

    return v1
.end method
