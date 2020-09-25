.class final Lo/stopInterceptRequestLayout$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/stopInterceptRequestLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/stopInterceptRequestLayout;

.field private synthetic extraCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    iput-object p2, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 527
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    const-string v1, "form"

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-eqz v0, :cond_3

    .line 528
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 1039
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 1191
    invoke-virtual {v0}, Lo/pullGlows;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CRED_POINTS"

    invoke-static {v6, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lo/pullGlows;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    const-string v6, "GEMS"

    invoke-static {v0, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 529
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 2036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->getInterfaceDescriptor:Landroid/widget/TextView;

    .line 529
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 3036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 530
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    :cond_2
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 4036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->ICustomTabsService$Stub$Proxy:Landroid/view/View;

    .line 5001
    invoke-static {v0, v4}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 533
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 5036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->validateRelationship:Landroid/view/View;

    .line 6001
    invoke-static {v0, v4}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 534
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 6036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService:Landroid/view/View;

    .line 7001
    invoke-static {v0, v4}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 535
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 7077
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->ICustomTabsService$Stub:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 535
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 536
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 8036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService$Stub:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 536
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 537
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 9036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->INotificationSideChannel:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 537
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 538
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 9080
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->notify:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 538
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 539
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 10036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->cancelAll:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 539
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 540
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 11036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService$Stub$Proxy:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 540
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void

    .line 541
    :cond_3
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    const-string v6, "dropdown"

    invoke-static {v0, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    const-string v6, "checkbox"

    invoke-static {v0, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    const-string/jumbo v6, "user_input"

    invoke-static {v0, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    const-string v6, "address"

    invoke-static {v0, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 546
    :cond_4
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    const-string/jumbo v6, "slider"

    invoke-static {v0, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 547
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 15036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService:Landroid/view/View;

    .line 16001
    invoke-static {v0, v3}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 548
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 16036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService$Stub:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 548
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 549
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 17036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->INotificationSideChannel:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 549
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 550
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 17080
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->notify:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 550
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void

    .line 551
    :cond_5
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    const-string/jumbo v6, "store_payment_slider "

    invoke-static {v0, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v6, "state"

    if-eqz v0, :cond_6

    .line 552
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 18036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->getInterfaceDescriptor:Landroid/widget/TextView;

    .line 552
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 19036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 553
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 20036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->ICustomTabsService$Stub$Proxy:Landroid/view/View;

    .line 21001
    invoke-static {v0, v3}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 555
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 21036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->validateRelationship:Landroid/view/View;

    .line 22001
    invoke-static {v0, v4}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 556
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 22036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService:Landroid/view/View;

    .line 23001
    invoke-static {v0, v4}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 557
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 23036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->cancel:Lo/createFullSpanItemFromEnd;

    .line 557
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 24036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService$Stub:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 558
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 559
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 25036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->INotificationSideChannel:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 559
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 560
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 25080
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->notify:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 560
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 561
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 26036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService$Stub$Proxy:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 561
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 562
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 27036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->cancelAll:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 562
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 563
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 28036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->requestPostMessageChannel:Lo/isLayoutSuppressed;

    .line 563
    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-static {v1, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28140
    iget-object v0, v0, Lo/isLayoutSuppressed;->ICustomTabsService:Lo/recycleFromEnd;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void

    .line 564
    :cond_6
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    const-string v7, "post_slider_form "

    invoke-static {v0, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 565
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 29036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService:Landroid/view/View;

    .line 30001
    invoke-static {v0, v4}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 566
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 30036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->validateRelationship:Landroid/view/View;

    .line 31001
    invoke-static {v0, v3}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 567
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 31036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService$Stub:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 567
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 568
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 32036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService$Stub$Proxy:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 568
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void

    .line 569
    :cond_7
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    const-string v7, "redeemed"

    invoke-static {v0, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 570
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 33036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->cancel:Lo/createFullSpanItemFromEnd;

    .line 570
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 34036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->getInterfaceDescriptor:Landroid/widget/TextView;

    .line 571
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 35036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 572
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 36036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->onRelationshipValidationResult:Lo/onChildrenLoaded;

    .line 573
    check-cast v0, Landroid/view/View;

    .line 37001
    invoke-static {v0, v4}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 574
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 37036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService:Landroid/view/View;

    .line 38001
    invoke-static {v0, v3}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 575
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 38077
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->ICustomTabsService$Stub:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 575
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 576
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 39036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->cancelAll:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 576
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 577
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 40036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService$Stub:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 577
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 578
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 41036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->INotificationSideChannel:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 578
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 579
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 41080
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->notify:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 579
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 580
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 42036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->cancelAll:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 580
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 581
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 43036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService$Stub$Proxy:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 581
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 582
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 44036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->requestPostMessageChannel:Lo/isLayoutSuppressed;

    .line 582
    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->ICustomTabsCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-static {v1, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44140
    iget-object v0, v0, Lo/isLayoutSuppressed;->ICustomTabsService:Lo/recycleFromEnd;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 583
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 45037
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 583
    invoke-virtual {v0}, Lo/releaseGlows;->extraCallback()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "reward_claimed_state_screen_load"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_8
    return-void

    .line 542
    :cond_9
    :goto_1
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 12036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService:Landroid/view/View;

    .line 13001
    invoke-static {v0, v3}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 543
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 13036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService$Stub:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 543
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 544
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 14036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->INotificationSideChannel:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 544
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 545
    iget-object v0, p0, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 14080
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->notify:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 545
    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void
.end method
