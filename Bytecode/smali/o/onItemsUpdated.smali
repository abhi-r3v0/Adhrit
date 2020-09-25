.class public final Lo/onItemsUpdated;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/createScroller;
.implements Lo/getColumnCountForAccessibility;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onItemsUpdated$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 !2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0010\u001a\u00020\u000cJ\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000cH\u0016J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\u000c\u0010\u0016\u001a\u00060\u000cj\u0002`\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 H\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/interstitial/ui/ntu/InterstitialNtuFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/dreamplug/utils/BackKeyHandler;",
        "Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialTemplateInterface;",
        "()V",
        "data",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "getData",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "setData",
        "(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V",
        "isNavInterstitial",
        "",
        "()Z",
        "setNavInterstitial",
        "(Z)V",
        "canDismiss",
        "dismissTemplate",
        "",
        "markDismiss",
        "getInterstitialContainer",
        "Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer;",
        "onBackPressed",
        "Lcom/dreamplug/utils/IsHandled;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "setCard",
        "card",
        "Lcom/dreamplug/fabrik/ui/nba/helper/Card;",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/onItemsUpdated$ICustomTabsCallback;


# instance fields
.field private ICustomTabsCallback:Ljava/util/HashMap;

.field private onNavigationEvent:Z

.field private onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/onItemsUpdated$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/onItemsUpdated$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/onItemsUpdated;->extraCallback:Lo/onItemsUpdated$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e00ae

    .line 33
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    return-void
.end method

.method private extraCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/onItemsUpdated;->ICustomTabsCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/onItemsUpdated;->ICustomTabsCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/onItemsUpdated;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/onItemsUpdated;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static final synthetic onNavigationEvent(Lo/onItemsUpdated;)Lo/getItemOffsets;
    .locals 2

    .line 35171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of v0, p0, Lo/drawHorizontal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p0, v1

    :cond_0
    check-cast p0, Lo/drawHorizontal;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lo/drawHorizontal;->extraCallback()Lo/getItemOffsets;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final ICustomTabsCallback(Z)V
    .locals 3

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010044

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-string v1, "animation"

    .line 161
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    new-instance v1, Lo/setDrawerListener$onPostMessage;

    invoke-direct {v1}, Lo/setDrawerListener$onPostMessage;-><init>()V

    .line 162
    new-instance v2, Lo/onItemsUpdated$onPostMessage;

    invoke-direct {v2, p0, p1}, Lo/onItemsUpdated$onPostMessage;-><init>(Lo/onItemsUpdated;Z)V

    check-cast v2, Lo/onDisconnectSetValue;

    const-string p1, "func"

    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35031
    iput-object v2, v1, Lo/setDrawerListener$onPostMessage;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 199
    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lo/onItemsUpdated$onMessageChannelReady;

    invoke-direct {v1, p0, v0}, Lo/onItemsUpdated$onMessageChannelReady;-><init>(Lo/onItemsUpdated;Landroid/view/animation/Animation;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 2

    .line 33151
    iget-object v0, p0, Lo/onItemsUpdated;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v0, :cond_0

    const-string v1, "data"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 34022
    :cond_0
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    if-eqz v0, :cond_1

    .line 34127
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;->extraCallback:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 33151
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {p0, v1}, Lo/onItemsUpdated;->ICustomTabsCallback(Z)V

    :cond_2
    return v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "$this$getParcelExtra"

    .line 40
    invoke-static {p0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 40
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    check-cast p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    iput-object p1, p0, Lo/onItemsUpdated;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "isNavInterstitial"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lo/onItemsUpdated;->onNavigationEvent:Z

    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 36000
    iget-object v0, p0, Lo/onItemsUpdated;->ICustomTabsCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "view"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-super/range {p0 .. p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v3, v2, Lo/drawHorizontal;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v2, v4

    :cond_0
    check-cast v2, Lo/drawHorizontal;

    if-eqz v2, :cond_1

    const v3, 0x7f0601a9

    invoke-interface {v2, v3}, Lo/drawHorizontal;->onNavigationEvent(I)V

    .line 47
    :cond_1
    iget-object v2, v0, Lo/onItemsUpdated;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    const-string v3, "data"

    if-nez v2, :cond_2

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2024
    :cond_2
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 2035
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/Footer;

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 2117
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Footer;->onMessageChannelReady:Ljava/util/List;

    if-eqz v2, :cond_4

    const-string v6, "$this$firstOrNull"

    .line 47
    invoke-static {v2, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2243
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v2, v4

    goto :goto_0

    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 47
    :goto_0
    check-cast v2, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    goto :goto_1

    :cond_4
    move-object v2, v4

    .line 48
    :goto_1
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->payLater:I

    invoke-direct {v0, v6}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/createFullSpanItemFromEnd;

    const-string v7, "payLater"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    const/4 v8, 0x1

    if-eqz v2, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    const/16 v10, 0x8

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_3

    :cond_6
    const/16 v9, 0x8

    .line 184
    :goto_3
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_9

    .line 50
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->payLater:I

    invoke-direct {v0, v6}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/createFullSpanItemFromEnd;

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/TextView;

    .line 187
    new-instance v9, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "context"

    invoke-static {v11, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v11}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    const-string v11, " "

    .line 51
    invoke-virtual {v9, v11}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getTitle()Lo/getTargetScrollPosition;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 3000
    iget-object v11, v11, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v11}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    if-nez v11, :cond_8

    :cond_7
    const-string v11, ""

    .line 53
    check-cast v11, Ljava/lang/CharSequence;

    :cond_8
    new-instance v12, Lo/findFirstCompletelyVisibleItemPositions;

    .line 3047
    iget-object v13, v9, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent:Landroid/content/Context;

    const v14, 0x7f060231

    .line 53
    invoke-static {v13, v14}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v13

    invoke-direct {v12, v13}, Lo/findFirstCompletelyVisibleItemPositions;-><init>(I)V

    .line 52
    invoke-static {v11, v12}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    const-string/jumbo v12, "span"

    invoke-static {v11, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3059
    iget-object v12, v9, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v12, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3156
    iget-object v9, v9, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast v9, Ljava/lang/CharSequence;

    .line 192
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->payLater:I

    invoke-direct {v0, v6}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/createFullSpanItemFromEnd;

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    new-instance v7, Lo/onItemsUpdated$extraCallback;

    invoke-direct {v7, v2, v0}, Lo/onItemsUpdated$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Lo/onItemsUpdated;)V

    check-cast v7, Lo/onDisconnectSetValue;

    invoke-static {v6, v7}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 61
    :cond_9
    iget-object v2, v0, Lo/onItemsUpdated;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v2, :cond_a

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4024
    :cond_a
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 4033
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v2, :cond_b

    const-string/jumbo v6, "text_1"

    .line 61
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getTargetScrollPosition;

    if-eqz v2, :cond_b

    .line 5000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_b
    move-object v2, v4

    .line 62
    :goto_4
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-direct {v0, v6}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v7, "text1"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->hintListContainer:I

    invoke-direct {v0, v2}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    iget-object v2, v0, Lo/onItemsUpdated;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v2, :cond_c

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 5024
    :cond_c
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 5041
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->newSession:Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;

    if-eqz v2, :cond_f

    .line 5168
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;->onMessageChannelReady:Ljava/util/List;

    if-eqz v2, :cond_f

    .line 66
    check-cast v2, Ljava/lang/Iterable;

    .line 195
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;

    .line 67
    sget v7, Lo/getSwitchMinWidth$onPostMessage;->hintListContainer:I

    invoke-direct {v0, v7}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const-string v9, "hintListContainer"

    invoke-static {v7, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    const v9, 0x7f0e0164

    const-string v11, "$this$inflate"

    .line 6010
    invoke-static {v7, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6011
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    invoke-virtual {v11, v9, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const-string v9, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {v7, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget v9, Lo/getSwitchMinWidth$onPostMessage;->image:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lo/setSpeed;

    const-string v9, "hintItem.image"

    invoke-static {v11, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6087
    iget-object v12, v6, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;->extraCallback:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3e

    .line 68
    invoke-static/range {v11 .. v18}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 69
    sget v9, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string v11, "hintItem.text1"

    invoke-static {v9, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7085
    iget-object v11, v6, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v11, :cond_d

    .line 8000
    iget-object v11, v11, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v11}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    goto :goto_6

    :cond_d
    move-object v11, v4

    .line 69
    :goto_6
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget v9, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string v11, "hintItem.text2"

    invoke-static {v9, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8086
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v6, :cond_e

    .line 9000
    iget-object v6, v6, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_7

    :cond_e
    move-object v6, v4

    .line 70
    :goto_7
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->hintListContainer:I

    invoke-direct {v0, v6}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 74
    :cond_f
    iget-object v2, v0, Lo/onItemsUpdated;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v2, :cond_10

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9024
    :cond_10
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 9041
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->newSession:Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;

    if-eqz v2, :cond_11

    .line 9167
    iget-object v6, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;->onPostMessage:Ljava/lang/String;

    goto :goto_8

    :cond_11
    move-object v6, v4

    :goto_8
    const-string v7, "bottomImage1"

    const-string v9, "bottomText1"

    const-string v11, "$this$gone"

    if-nez v6, :cond_13

    if-eqz v2, :cond_12

    .line 10166
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;->onNavigationEvent:Lo/getTargetScrollPosition;

    goto :goto_9

    :cond_12
    move-object v2, v4

    :goto_9
    if-nez v2, :cond_13

    .line 76
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->bottomText1:I

    invoke-direct {v0, v2}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11017
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 77
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->bottomImage1:I

    invoke-direct {v0, v2}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setSpeed;

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12017
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 78
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->dividerView2:I

    invoke-direct {v0, v2}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/getAdapterPosition;

    const-string v6, "dividerView2"

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13017
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 80
    :cond_13
    iget-object v2, v0, Lo/onItemsUpdated;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v2, :cond_14

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 13024
    :cond_14
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 13041
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->newSession:Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;

    if-eqz v2, :cond_15

    .line 13166
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;->onNavigationEvent:Lo/getTargetScrollPosition;

    goto :goto_a

    :cond_15
    move-object v2, v4

    .line 81
    :goto_a
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->bottomText1:I

    invoke-direct {v0, v6}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/createFullSpanItemFromEnd;

    invoke-static {v6, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_16

    .line 14000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_b

    :cond_16
    move-object v2, v4

    .line 81
    :goto_b
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v0, Lo/onItemsUpdated;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v2, :cond_17

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 14024
    :cond_17
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 14041
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->newSession:Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;

    if-eqz v2, :cond_18

    .line 14167
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;->onPostMessage:Ljava/lang/String;

    move-object v13, v2

    goto :goto_c

    :cond_18
    move-object v13, v4

    .line 84
    :goto_c
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->bottomImage1:I

    invoke-direct {v0, v2}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lo/setSpeed;

    invoke-static {v12, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x2e

    invoke-static/range {v12 .. v19}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 90
    :goto_d
    iget-object v2, v0, Lo/onItemsUpdated;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v2, :cond_19

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 15024
    :cond_19
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 15040
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/nba/helper/Card;

    if-eqz v2, :cond_31

    .line 15102
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->cardSectionContainer:I

    invoke-direct {v0, v6}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    const-string v7, "cardSectionContainer"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->text11:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v9, "cardSectionContainer.text11"

    invoke-static {v6, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16061
    iget-object v9, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->ICustomTabsCallback$Stub:Lo/getTargetScrollPosition;

    if-eqz v9, :cond_1a

    .line 17000
    iget-object v9, v9, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v9}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    goto :goto_e

    :cond_1a
    move-object v9, v4

    .line 15102
    :goto_e
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15103
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->cardSectionContainer:I

    invoke-direct {v0, v6}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->text22:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v9, "cardSectionContainer.text22"

    invoke-static {v6, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17062
    iget-object v9, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->onTransact:Lo/getTargetScrollPosition;

    if-eqz v9, :cond_1b

    .line 18000
    iget-object v9, v9, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v9}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    goto :goto_f

    :cond_1b
    move-object v9, v4

    .line 15103
    :goto_f
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15104
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->cardSectionContainer:I

    invoke-direct {v0, v6}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->text3:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v9, "cardSectionContainer.text3"

    invoke-static {v6, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18063
    iget-object v9, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->asBinder:Lo/getTargetScrollPosition;

    if-eqz v9, :cond_1c

    .line 19000
    iget-object v9, v9, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v9}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    goto :goto_10

    :cond_1c
    move-object v9, v4

    .line 15104
    :goto_10
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15105
    iget-object v6, v0, Lo/onItemsUpdated;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v6, :cond_1d

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 19024
    :cond_1d
    iget-object v3, v6, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 19035
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/Footer;

    if-eqz v3, :cond_1f

    .line 19116
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/Footer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz v3, :cond_1f

    .line 15106
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->cardSectionContainer:I

    invoke-direct {v0, v6}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/saveOldPosition;

    const-string v9, "cardSectionContainer.ctaPrimary"

    invoke-static {v6, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getTitle()Lo/getTargetScrollPosition;

    move-result-object v12

    if-eqz v12, :cond_1e

    .line 20000
    iget-object v12, v12, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v12}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    goto :goto_11

    :cond_1e
    move-object v12, v4

    .line 15106
    :goto_11
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15107
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->cardSectionContainer:I

    invoke-direct {v0, v6}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/saveOldPosition;

    invoke-static {v6, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    new-instance v7, Lo/onItemsUpdated$asBinder;

    invoke-direct {v7, v3, v0}, Lo/onItemsUpdated$asBinder;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Lo/onItemsUpdated;)V

    check-cast v7, Lo/onDisconnectSetValue;

    invoke-static {v6, v7}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 15112
    :cond_1f
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->cardBankName:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v6, "cardBankName"

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20059
    iget-object v6, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->extraCallback:Ljava/lang/String;

    .line 15112
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15113
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->cardNumberTv:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v6, "cardNumberTv"

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21058
    iget-object v6, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->ICustomTabsCallback:Ljava/lang/String;

    .line 15113
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15114
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->cardNameTv:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v6, "cardNameTv"

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21060
    iget-object v6, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->onPostMessage:Ljava/lang/String;

    .line 15114
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15116
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->cardTypeIv:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lo/setSpeed;

    const-string v3, "cardTypeIv"

    invoke-static {v12, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22057
    iget-object v13, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->onNavigationEvent:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 15116
    sget-object v16, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x36

    invoke-static/range {v12 .. v19}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 15117
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->cardBankLogo:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lo/setSpeed;

    const-string v3, "cardBankLogo"

    invoke-static {v12, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23056
    iget-object v13, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->onMessageChannelReady:Ljava/lang/String;

    .line 15117
    sget-object v16, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    invoke-static/range {v12 .. v19}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 23059
    iget-object v3, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->extraCallback:Ljava/lang/String;

    if-nez v3, :cond_20

    const/4 v3, 0x0

    goto :goto_12

    :cond_20
    const-string v6, "amex"

    .line 24056
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    :goto_12
    const-string v6, "centerImage"

    const-string v7, "cardBgPattern"

    if-eqz v3, :cond_21

    .line 15120
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->centerImage:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15121
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->cardBgPattern:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/setSpeed;

    invoke-static {v3, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x3e6147ae    # 0.22f

    invoke-virtual {v3, v6}, Lo/setSpeed;->setAlpha(F)V

    goto :goto_13

    .line 15123
    :cond_21
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->centerImage:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15124
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->cardBgPattern:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/setSpeed;

    invoke-static {v3, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x3d851eb8    # 0.065f

    invoke-virtual {v3, v6}, Lo/setSpeed;->setAlpha(F)V

    .line 24066
    :goto_13
    iget-object v3, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/nba/helper/Nudge;

    const-string v6, "Resources.getSystem()"

    const-string v9, "nudgeLayout"

    if-eqz v3, :cond_2d

    .line 15128
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->nudgeLayout:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    const-string v9, "$this$visible"

    invoke-static {v3, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25009
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 15129
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->nudgeBackground:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/setSpeed;

    const-string v12, "nudgeBackground"

    invoke-static {v3, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v3

    check-cast v13, Landroid/view/View;

    .line 25066
    iget-object v3, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/nba/helper/Nudge;

    .line 25073
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/Nudge;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v3, :cond_22

    .line 25104
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onMessageChannelReady:Ljava/lang/String;

    if-nez v3, :cond_23

    :cond_22
    const-string v3, "#337FFFB1"

    :cond_23
    move-object v14, v3

    .line 26009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v15, 0x40c00000    # 6.0f

    .line 26010
    invoke-static {v8, v15, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v15

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x14

    const-string v17, "#337FFFB1"

    .line 15129
    invoke-static/range {v13 .. v19}, Lo/missCount;->ICustomTabsCallback(Landroid/view/View;Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 26066
    iget-object v3, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/nba/helper/Nudge;

    .line 26073
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/Nudge;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v3, :cond_24

    .line 26105
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onPostMessage:Ljava/lang/String;

    move-object v14, v3

    goto :goto_14

    :cond_24
    move-object v14, v4

    .line 15132
    :goto_14
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->nudgeBackground:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lo/setSpeed;

    invoke-static {v13, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x36

    invoke-static/range {v13 .. v20}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 15133
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->nudgeBackground:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/setSpeed;

    invoke-static {v3, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26116
    iget-object v3, v3, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 26216
    iget-object v3, v3, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v3, :cond_2c

    check-cast v3, Lo/setMaxFrame;

    .line 15133
    check-cast v3, Lo/getComposition;

    const-string v12, "nudgeBackground.hierarchy"

    invoke-static {v3, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->asInterface()Lo/setFailureListener$extraCallback;

    move-result-object v12

    if-eqz v12, :cond_2b

    const/4 v13, 0x2

    .line 28369
    invoke-virtual {v3, v13}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v3

    .line 28370
    instance-of v13, v3, Lo/fromAssets;

    if-eqz v13, :cond_25

    .line 28371
    check-cast v3, Lo/fromAssets;

    goto :goto_15

    .line 28373
    :cond_25
    sget-object v13, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v3, v13}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v3

    .line 29094
    :goto_15
    iget-object v13, v3, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v13, v12, :cond_27

    if-eqz v13, :cond_26

    .line 30053
    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    goto :goto_16

    :cond_26
    const/4 v13, 0x0

    goto :goto_17

    :cond_27
    :goto_16
    const/4 v13, 0x1

    :goto_17
    if-nez v13, :cond_28

    .line 29098
    iput-object v12, v3, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 29099
    iput-object v4, v3, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 29100
    invoke-virtual {v3}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 29101
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 30066
    :cond_28
    iget-object v3, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/nba/helper/Nudge;

    .line 30075
    iget-object v13, v3, Lcom/dreamplug/fabrik/ui/nba/helper/Nudge;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "nudgeImage"

    if-eqz v13, :cond_29

    .line 15136
    sget v10, Lo/getSwitchMinWidth$onPostMessage;->nudgeImage:I

    invoke-direct {v0, v10}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lo/setSpeed;

    invoke-static {v10, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/view/View;

    invoke-static {v10, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31009
    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    .line 15137
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->nudgeImage:I

    invoke-direct {v0, v5}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lo/setSpeed;

    invoke-static {v12, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x36

    invoke-static/range {v12 .. v19}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    goto :goto_18

    .line 15139
    :cond_29
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->nudgeImage:I

    invoke-direct {v0, v5}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/setSpeed;

    invoke-static {v5, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    invoke-static {v5, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31017
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 15142
    :goto_18
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->nudgeText:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/createFullSpanItemFromEnd;

    const-string v5, "nudgeText"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31066
    iget-object v5, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/nba/helper/Nudge;

    .line 31077
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/Nudge;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz v5, :cond_2a

    .line 32000
    iget-object v5, v5, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_19

    :cond_2a
    move-object v5, v4

    .line 15142
    :goto_19
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 28215
    :cond_2b
    throw v4

    .line 27215
    :cond_2c
    throw v4

    .line 15144
    :cond_2d
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->nudgeLayout:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-static {v3, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32017
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 15147
    :goto_1a
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->cardBackgroundView:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v9

    const-string v3, "cardBackgroundView"

    invoke-static {v9, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32065
    iget-object v3, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v3, :cond_2e

    .line 32104
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onMessageChannelReady:Ljava/lang/String;

    if-nez v3, :cond_2f

    :cond_2e
    const-string v3, "#b2b2b2"

    :cond_2f
    move-object v10, v3

    .line 33009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v5, 0x41600000    # 14.0f

    .line 33010
    invoke-static {v8, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1c

    .line 15147
    invoke-static/range {v9 .. v15}, Lo/missCount;->ICustomTabsCallback(Landroid/view/View;Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 15148
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->cardBgPattern:I

    invoke-direct {v0, v3}, Lo/onItemsUpdated;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lo/setSpeed;

    invoke-static {v8, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33065
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Card;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v2, :cond_30

    .line 33105
    iget-object v4, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onPostMessage:Ljava/lang/String;

    :cond_30
    move-object v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 15148
    sget-object v12, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x36

    invoke-static/range {v8 .. v15}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 94
    :cond_31
    iget-boolean v2, v0, Lo/onItemsUpdated;->onNavigationEvent:Z

    if-eqz v2, :cond_32

    .line 95
    sget-object v2, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v3

    new-instance v4, Lo/onItemsUpdated$onNavigationEvent;

    invoke-direct {v4, v1}, Lo/onItemsUpdated$onNavigationEvent;-><init>(Landroid/view/View;)V

    check-cast v4, Lo/setPlaybackToRemote;

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    :cond_32
    return-void
.end method
