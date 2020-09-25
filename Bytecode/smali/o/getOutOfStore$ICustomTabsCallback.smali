.class final Lo/getOutOfStore$ICustomTabsCallback;
.super Lo/getOutOfStore$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getOutOfStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback$Stub:Lo/AFExecutor$1$1;

.field private final asInterface:Lo/getContentPaddingBottom$onNavigationEvent;

.field private onTransact:I


# direct methods
.method public constructor <init>(Lo/getOutOfStore;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;Lo/getContentPaddingBottom$onNavigationEvent;Lo/AFExecutor$1$1;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;",
            "Lo/setPreinstallAttribution;",
            "Lo/getContentPaddingBottom$onNavigationEvent;",
            "Lo/AFExecutor$1$1;",
            "ZI)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move v5, p7

    .line 550
    invoke-direct/range {v0 .. v5}, Lo/getOutOfStore$onPostMessage;-><init>(Lo/getOutOfStore;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;ZI)V

    .line 551
    check-cast p4, Lo/getContentPaddingBottom$onNavigationEvent;

    iput-object p4, p0, Lo/getOutOfStore$ICustomTabsCallback;->asInterface:Lo/getContentPaddingBottom$onNavigationEvent;

    if-eqz p5, :cond_0

    .line 552
    check-cast p5, Lo/AFExecutor$1$1;

    iput-object p5, p0, Lo/getOutOfStore$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/AFExecutor$1$1;

    const/4 p1, 0x0

    .line 553
    iput p1, p0, Lo/getOutOfStore$ICustomTabsCallback;->onTransact:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2215
    throw p1
.end method


# virtual methods
.method protected final ICustomTabsCallback(Lo/getCardBackgroundColor;)I
    .locals 0

    .line 584
    iget-object p1, p0, Lo/getOutOfStore$ICustomTabsCallback;->asInterface:Lo/getContentPaddingBottom$onNavigationEvent;

    .line 8254
    iget p1, p1, Lo/getContentPaddingBottom$onNavigationEvent;->onNavigationEvent:I

    return p1
.end method

.method protected final onMessageChannelReady()Lo/AFKeystoreWrapper;
    .locals 2

    .line 589
    iget-object v0, p0, Lo/getOutOfStore$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/AFExecutor$1$1;

    iget-object v1, p0, Lo/getOutOfStore$ICustomTabsCallback;->asInterface:Lo/getContentPaddingBottom$onNavigationEvent;

    .line 8259
    iget v1, v1, Lo/getContentPaddingBottom$onNavigationEvent;->ICustomTabsCallback:I

    .line 589
    invoke-interface {v0, v1}, Lo/AFExecutor$1$1;->ICustomTabsCallback(I)Lo/AFKeystoreWrapper;

    move-result-object v0

    return-object v0
.end method

.method protected final declared-synchronized onNavigationEvent(Lo/getCardBackgroundColor;I)Z
    .locals 5

    monitor-enter p0

    .line 558
    :try_start_0
    invoke-super {p0, p1, p2}, Lo/getOutOfStore$onPostMessage;->onNavigationEvent(Lo/getCardBackgroundColor;I)Z

    move-result v0

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v3

    if-nez v1, :cond_2

    and-int/lit8 v1, p2, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_a

    :cond_2
    const/4 v1, 0x4

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_a

    if-eqz p1, :cond_4

    .line 5435
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onNavigationEvent()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_a

    .line 6326
    iget p2, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz p2, :cond_5

    iget p2, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez p2, :cond_6

    .line 6327
    :cond_5
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 6209
    :cond_6
    iget-object p2, p1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 562
    sget-object v1, Lo/getFrame;->ICustomTabsCallback:Lo/setProgress;

    if-ne p2, v1, :cond_a

    .line 563
    iget-object p2, p0, Lo/getOutOfStore$ICustomTabsCallback;->asInterface:Lo/getContentPaddingBottom$onNavigationEvent;

    invoke-virtual {p2, p1}, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady(Lo/getCardBackgroundColor;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_7

    .line 564
    monitor-exit p0

    return v2

    .line 566
    :cond_7
    :try_start_1
    iget-object p1, p0, Lo/getOutOfStore$ICustomTabsCallback;->asInterface:Lo/getContentPaddingBottom$onNavigationEvent;

    .line 7259
    iget p1, p1, Lo/getContentPaddingBottom$onNavigationEvent;->ICustomTabsCallback:I

    .line 567
    iget p2, p0, Lo/getOutOfStore$ICustomTabsCallback;->onTransact:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p1, p2, :cond_8

    .line 569
    monitor-exit p0

    return v2

    .line 571
    :cond_8
    :try_start_2
    iget-object p2, p0, Lo/getOutOfStore$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/AFExecutor$1$1;

    iget v1, p0, Lo/getOutOfStore$ICustomTabsCallback;->onTransact:I

    invoke-interface {p2, v1}, Lo/AFExecutor$1$1;->onNavigationEvent(I)I

    move-result p2

    if-ge p1, p2, :cond_9

    iget-object p2, p0, Lo/getOutOfStore$ICustomTabsCallback;->asInterface:Lo/getContentPaddingBottom$onNavigationEvent;

    .line 7264
    iget-boolean p2, p2, Lo/getContentPaddingBottom$onNavigationEvent;->extraCallback:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_9

    .line 575
    monitor-exit p0

    return v2

    .line 577
    :cond_9
    :try_start_3
    iput p1, p0, Lo/getOutOfStore$ICustomTabsCallback;->onTransact:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 579
    :cond_a
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
