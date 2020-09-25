.class final Lo/sendAdRevenue$extraCallback;
.super Lo/setAdditionalData;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendAdRevenue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAdditionalData<",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;>;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/getRootAlpha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Z


# direct methods
.method private constructor <init>(Lo/sendAdRevenue;Lo/sendAdRevenue$onMessageChannelReady;Lo/setPreinstallAttribution;)V
    .locals 0

    .line 341
    invoke-direct {p0, p2}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    const/4 p1, 0x0

    .line 330
    iput-boolean p1, p0, Lo/sendAdRevenue$extraCallback;->extraCallback:Z

    const/4 p1, 0x0

    .line 333
    iput-object p1, p0, Lo/sendAdRevenue$extraCallback;->ICustomTabsCallback:Lo/getRootAlpha;

    .line 343
    new-instance p1, Lo/sendAdRevenue$extraCallback$5;

    invoke-direct {p1, p0}, Lo/sendAdRevenue$extraCallback$5;-><init>(Lo/sendAdRevenue$extraCallback;)V

    invoke-interface {p3, p1}, Lo/setPreinstallAttribution;->onPostMessage(Lo/releaseGlows$onPostMessage$onMessageChannelReady;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/sendAdRevenue;Lo/sendAdRevenue$onMessageChannelReady;Lo/setSharingFilter;Lo/setPreinstallAttribution;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1, p2, p4}, Lo/sendAdRevenue$extraCallback;-><init>(Lo/sendAdRevenue;Lo/sendAdRevenue$onMessageChannelReady;Lo/setPreinstallAttribution;)V

    return-void
.end method


# virtual methods
.method final extraCallback()Z
    .locals 2

    .line 413
    monitor-enter p0

    .line 414
    :try_start_0
    iget-boolean v0, p0, Lo/sendAdRevenue$extraCallback;->extraCallback:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 415
    monitor-exit p0

    return v0

    .line 417
    :cond_0
    iget-object v0, p0, Lo/sendAdRevenue$extraCallback;->ICustomTabsCallback:Lo/getRootAlpha;

    const/4 v1, 0x0

    .line 418
    iput-object v1, p0, Lo/sendAdRevenue$extraCallback;->ICustomTabsCallback:Lo/getRootAlpha;

    const/4 v1, 0x1

    .line 419
    iput-boolean v1, p0, Lo/sendAdRevenue$extraCallback;->extraCallback:Z

    .line 420
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return v1

    :catchall_0
    move-exception v0

    .line 420
    monitor-exit p0

    throw v0
.end method

.method protected final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 2

    .line 325
    check-cast p1, Lo/getRootAlpha;

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    xor-int/2addr p2, v0

    if-nez p2, :cond_3

    .line 4401
    monitor-enter p0

    .line 4402
    :try_start_0
    iget-boolean p2, p0, Lo/sendAdRevenue$extraCallback;->extraCallback:Z

    if-eqz p2, :cond_1

    .line 4403
    monitor-exit p0

    goto :goto_1

    .line 4405
    :cond_1
    iget-object p2, p0, Lo/sendAdRevenue$extraCallback;->ICustomTabsCallback:Lo/getRootAlpha;

    .line 4406
    invoke-static {p1}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p1

    iput-object p1, p0, Lo/sendAdRevenue$extraCallback;->ICustomTabsCallback:Lo/getRootAlpha;

    .line 4407
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4408
    invoke-static {p2}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 5386
    :goto_1
    monitor-enter p0

    .line 5387
    :try_start_1
    iget-boolean p1, p0, Lo/sendAdRevenue$extraCallback;->extraCallback:Z

    if-eqz p1, :cond_2

    .line 5388
    monitor-exit p0

    return-void

    .line 5390
    :cond_2
    iget-object p1, p0, Lo/sendAdRevenue$extraCallback;->ICustomTabsCallback:Lo/getRootAlpha;

    invoke-static {p1}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p1

    .line 5391
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6020
    :try_start_2
    iget-object p2, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 5393
    invoke-interface {p2, p1, v1}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5395
    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p2

    :catchall_1
    move-exception p1

    .line 5391
    monitor-exit p0

    throw p1

    :catchall_2
    move-exception p1

    .line 4407
    monitor-exit p0

    throw p1

    :cond_3
    return-void
.end method

.method protected final onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 1

    .line 367
    invoke-virtual {p0}, Lo/sendAdRevenue$extraCallback;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 368
    invoke-interface {v0, p1}, Lo/waitForCustomerUserId;->onPostMessage(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected final onNavigationEvent()V
    .locals 1

    .line 374
    invoke-virtual {p0}, Lo/sendAdRevenue$extraCallback;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 375
    invoke-interface {v0}, Lo/waitForCustomerUserId;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method
