.class final Lo/getChildPosition$validateRelationship;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/postEvents;",
        "Lo/nextTransactionOrder<",
        "Lo/isFromUser;",
        "Lo/setSessionPersistenceKey<",
        "-",
        "Lo/addWrites;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private synthetic onMessageChannelReady:Lo/findChildViewUnder$onMessageChannelReady;

.field private onNavigationEvent:Lo/isFromUser;

.field private synthetic onPostMessage:Lo/getChildPosition;


# direct methods
.method constructor <init>(Lo/getChildPosition;Lo/findChildViewUnder$onMessageChannelReady;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/getChildPosition$validateRelationship;->onPostMessage:Lo/getChildPosition;

    iput-object p2, p0, Lo/getChildPosition$validateRelationship;->onMessageChannelReady:Lo/findChildViewUnder$onMessageChannelReady;

    invoke-direct {p0, p3}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 556
    iget v1, p0, Lo/getChildPosition$validateRelationship;->ICustomTabsCallback:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    .line 5126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 602
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_2
    instance-of v1, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v1, :cond_5

    .line 557
    iget-object p1, p0, Lo/getChildPosition$validateRelationship;->onMessageChannelReady:Lo/findChildViewUnder$onMessageChannelReady;

    .line 2039
    iget-boolean p1, p1, Lo/findChildViewUnder$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz p1, :cond_4

    .line 559
    iget-object p1, p0, Lo/getChildPosition$validateRelationship;->onPostMessage:Lo/getChildPosition;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->noSpinsTitleText:I

    invoke-virtual {p1, v1}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    .line 3021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "Resources.getSystem()"

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v5, 0x42000000    # 32.0f

    .line 3022
    invoke-static {v3, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 560
    invoke-virtual {p1, v1}, Lo/createFullSpanItemFromEnd;->setTranslationY(F)V

    const/4 v1, 0x0

    .line 561
    invoke-virtual {p1, v1}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 563
    iget-object p1, p0, Lo/getChildPosition$validateRelationship;->onPostMessage:Lo/getChildPosition;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->noSpinsSubTitleText:I

    invoke-virtual {p1, v6}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    .line 4021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 4022
    invoke-static {v3, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    .line 564
    invoke-virtual {p1, v6}, Lo/createFullSpanItemFromEnd;->setTranslationY(F)V

    .line 565
    invoke-virtual {p1, v1}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 567
    iget-object p1, p0, Lo/getChildPosition$validateRelationship;->onPostMessage:Lo/getChildPosition;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->noSpinsButton:I

    invoke-virtual {p1, v6}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    .line 568
    invoke-virtual {p1, v1}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 5021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 5022
    invoke-static {v3, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 569
    invoke-virtual {p1, v4}, Lo/createFullSpanItemFromEnd;->setTranslationY(F)V

    .line 571
    iget-object p1, p0, Lo/getChildPosition$validateRelationship;->onPostMessage:Lo/getChildPosition;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->noSpinsLeftLayout:I

    invoke-virtual {p1, v4}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v4, "noSpinsLeftLayout"

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 572
    iget-object p1, p0, Lo/getChildPosition$validateRelationship;->onPostMessage:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->noSpinsLeftLayout:I

    invoke-virtual {p1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    .line 691
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 576
    iget-object p1, p0, Lo/getChildPosition$validateRelationship;->onPostMessage:Lo/getChildPosition;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->noSpinsLeftLayout:I

    invoke-virtual {p1, v4}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 577
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v5, 0x1f4

    .line 578
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string v7, "noSpinsLeftLayout.animat\u2026       .setDuration(500L)"

    invoke-static {p1, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v7, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 580
    iget-object p1, p0, Lo/getChildPosition$validateRelationship;->onPostMessage:Lo/getChildPosition;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->noSpinsTitleText:I

    invoke-virtual {p1, v7}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-virtual {p1}, Lo/createFullSpanItemFromEnd;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 581
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 582
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 583
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 584
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string v5, "noSpinsTitleText.animate\u2026     .setStartDelay(500L)"

    invoke-static {p1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v5, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 586
    iget-object p1, p0, Lo/getChildPosition$validateRelationship;->onPostMessage:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->noSpinsSubTitleText:I

    invoke-virtual {p1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-virtual {p1}, Lo/createFullSpanItemFromEnd;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 587
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 588
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v5, 0x190

    .line 589
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v7, 0x2bc

    .line 590
    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string v7, "noSpinsSubTitleText.anim\u2026     .setStartDelay(700L)"

    invoke-static {p1, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v7, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 592
    iget-object p1, p0, Lo/getChildPosition$validateRelationship;->onPostMessage:Lo/getChildPosition;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->noSpinsButton:I

    invoke-virtual {p1, v7}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-virtual {p1}, Lo/createFullSpanItemFromEnd;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 593
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 594
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 595
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v4, 0x384

    .line 596
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 597
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string v1, "noSpinsButton.animate()\n\u2026(OvershootInterpolator())"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput v3, p0, Lo/getChildPosition$validateRelationship;->ICustomTabsCallback:I

    .line 598
    invoke-static {p1, p0}, Lo/extraCallback;->onPostMessage(Landroid/view/ViewPropertyAnimator;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 600
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/getChildPosition$validateRelationship;->onMessageChannelReady:Lo/findChildViewUnder$onMessageChannelReady;

    .line 6039
    iput-boolean v2, p1, Lo/findChildViewUnder$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 602
    :cond_4
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_5
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/getChildPosition$validateRelationship;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/getChildPosition$validateRelationship;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/setSessionPersistenceKey<",
            "*>;)",
            "Lo/setSessionPersistenceKey<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/getChildPosition$validateRelationship;

    iget-object v1, p0, Lo/getChildPosition$validateRelationship;->onPostMessage:Lo/getChildPosition;

    iget-object v2, p0, Lo/getChildPosition$validateRelationship;->onMessageChannelReady:Lo/findChildViewUnder$onMessageChannelReady;

    invoke-direct {v0, v1, v2, p2}, Lo/getChildPosition$validateRelationship;-><init>(Lo/getChildPosition;Lo/findChildViewUnder$onMessageChannelReady;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/getChildPosition$validateRelationship;->onNavigationEvent:Lo/isFromUser;

    return-object v0
.end method
