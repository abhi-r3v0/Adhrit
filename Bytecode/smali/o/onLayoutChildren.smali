.class public final Lo/onLayoutChildren;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/createScroller;
.implements Lo/getColumnCountForAccessibility;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onLayoutChildren$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001e2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0010\u001a\u00020\u000cJ\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000cH\u0016J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\u000c\u0010\u0016\u001a\u00060\u000cj\u0002`\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/interstitial/ui/launcht1/InterstitialLaunchT1Fragment;",
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
.field public static final ICustomTabsCallback:Lo/onLayoutChildren$onMessageChannelReady;


# instance fields
.field private extraCallback:Ljava/util/HashMap;

.field private onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

.field private onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/onLayoutChildren$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/onLayoutChildren$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/onLayoutChildren;->ICustomTabsCallback:Lo/onLayoutChildren$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e00ad

    .line 31
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/onLayoutChildren;)Lo/getItemOffsets;
    .locals 2

    .line 14134
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
.method public final ICustomTabsCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/onLayoutChildren;->extraCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/onLayoutChildren;->extraCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/onLayoutChildren;->extraCallback:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/onLayoutChildren;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 3

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010044

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-string v1, "animation"

    .line 124
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance v1, Lo/setDrawerListener$onPostMessage;

    invoke-direct {v1}, Lo/setDrawerListener$onPostMessage;-><init>()V

    .line 125
    new-instance v2, Lo/onLayoutChildren$ICustomTabsCallback;

    invoke-direct {v2, p0, p1}, Lo/onLayoutChildren$ICustomTabsCallback;-><init>(Lo/onLayoutChildren;Z)V

    check-cast v2, Lo/onDisconnectSetValue;

    const-string p1, "func"

    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14031
    iput-object v2, v1, Lo/setDrawerListener$onPostMessage;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 160
    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lo/onLayoutChildren$onNavigationEvent;

    invoke-direct {v1, p0, v0}, Lo/onLayoutChildren$onNavigationEvent;-><init>(Lo/onLayoutChildren;Landroid/view/animation/Animation;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 2

    .line 118
    invoke-virtual {p0}, Lo/onLayoutChildren;->extraCallback()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lo/onLayoutChildren;->ICustomTabsCallback(Z)V

    :cond_0
    return v1
.end method

.method public final extraCallback()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lo/onLayoutChildren;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v0, :cond_0

    const-string v1, "data"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 13022
    :cond_0
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    if-eqz v0, :cond_1

    .line 13127
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;->extraCallback:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 115
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "$this$getParcelExtra"

    .line 38
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

    .line 38
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    check-cast p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    iput-object p1, p0, Lo/onLayoutChildren;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 39
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
    iput-boolean p1, p0, Lo/onLayoutChildren;->onPostMessage:Z

    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 15000
    iget-object v0, p0, Lo/onLayoutChildren;->extraCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "view"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-super/range {p0 .. p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v3, v2, Lo/drawHorizontal;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v2, v4

    :cond_0
    check-cast v2, Lo/drawHorizontal;

    if-eqz v2, :cond_1

    const v3, 0x7f060027

    invoke-interface {v2, v3}, Lo/drawHorizontal;->onNavigationEvent(I)V

    .line 45
    :cond_1
    iget-object v2, v0, Lo/onLayoutChildren;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    const-string v3, "data"

    if-nez v2, :cond_2

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2024
    :cond_2
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 2033
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v2, :cond_3

    const-string v5, "image_1"

    .line 45
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getTargetScrollPosition;

    goto :goto_0

    :cond_3
    move-object v2, v4

    .line 46
    :goto_0
    iget-object v5, v0, Lo/onLayoutChildren;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v5, :cond_4

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3024
    :cond_4
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 3033
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v5, :cond_5

    const-string v6, "image_2"

    .line 46
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/getTargetScrollPosition;

    goto :goto_1

    :cond_5
    move-object v5, v4

    :goto_1
    const-string v6, "$this$visible"

    const-string v7, "lottie"

    const-string v8, "logo"

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v2, :cond_6

    .line 49
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->logo:I

    invoke-virtual {v0, v5}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/setSpeed;

    invoke-static {v5, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4009
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 50
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {v0, v5}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v5, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    const-string v6, "$this$gone"

    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4017
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 51
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->logo:I

    invoke-virtual {v0, v5}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lo/setSpeed;

    invoke-static {v11, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3e

    invoke-static/range {v11 .. v18}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    goto :goto_2

    .line 54
    :cond_6
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->logo:I

    invoke-virtual {v0, v2}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setSpeed;

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    const-string v8, "$this$invisible"

    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    .line 5013
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 55
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {v0, v2}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6009
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 56
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {v0, v2}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    :cond_7
    const-string v5, ""

    :cond_8
    invoke-static {v2, v5}, Lo/extraCallback;->ICustomTabsCallback(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)Lo/setMaxWidth$onNavigationEvent;

    .line 60
    :goto_2
    iget-object v2, v0, Lo/onLayoutChildren;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v2, :cond_9

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 6024
    :cond_9
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 6035
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/Footer;

    if-eqz v2, :cond_b

    .line 6117
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Footer;->onMessageChannelReady:Ljava/util/List;

    if-eqz v2, :cond_b

    const-string v5, "$this$firstOrNull"

    .line 60
    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6243
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v2, v4

    goto :goto_3

    :cond_a
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 60
    :goto_3
    check-cast v2, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    goto :goto_4

    :cond_b
    move-object v2, v4

    .line 61
    :goto_4
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->closeButton:I

    invoke-virtual {v0, v5}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/setSpeed;

    const-string v6, "closeButton"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    const/4 v7, 0x1

    if-eqz v2, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_d

    const/4 v8, 0x0

    goto :goto_6

    :cond_d
    const/16 v8, 0x8

    .line 146
    :goto_6
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_e

    .line 63
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->closeButton:I

    invoke-virtual {v0, v5}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lo/setSpeed;

    invoke-static {v11, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getIconUrl()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3e

    invoke-static/range {v11 .. v18}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 64
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->closeButton:I

    invoke-virtual {v0, v5}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/setSpeed;

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    new-instance v6, Lo/onLayoutChildren$extraCallback;

    invoke-direct {v6, v2, v0}, Lo/onLayoutChildren$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Lo/onLayoutChildren;)V

    check-cast v6, Lo/onDisconnectSetValue;

    invoke-static {v5, v6}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 69
    :cond_e
    iget-object v2, v0, Lo/onLayoutChildren;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v2, :cond_f

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 7024
    :cond_f
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 7033
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v2, :cond_10

    const-string/jumbo v5, "text_1"

    .line 69
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getTargetScrollPosition;

    goto :goto_7

    :cond_10
    move-object v2, v4

    .line 70
    :goto_7
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {v0, v5}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v6, "text1"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    if-eqz v2, :cond_11

    const/4 v8, 0x1

    goto :goto_8

    :cond_11
    const/4 v8, 0x0

    :goto_8
    if-eqz v8, :cond_12

    const/4 v8, 0x0

    goto :goto_9

    :cond_12
    const/16 v8, 0x8

    .line 148
    :goto_9
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 71
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {v0, v5}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/createFullSpanItemFromEnd;

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_13

    .line 8000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_a

    :cond_13
    move-object v2, v4

    .line 71
    :goto_a
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, v0, Lo/onLayoutChildren;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v2, :cond_14

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 8024
    :cond_14
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 8033
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v2, :cond_15

    const-string/jumbo v5, "text_2"

    .line 73
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getTargetScrollPosition;

    goto :goto_b

    :cond_15
    move-object v2, v4

    .line 74
    :goto_b
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {v0, v5}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v6, "text2"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    if-eqz v2, :cond_16

    const/4 v8, 0x1

    goto :goto_c

    :cond_16
    const/4 v8, 0x0

    :goto_c
    if-eqz v8, :cond_17

    const/4 v8, 0x0

    goto :goto_d

    :cond_17
    const/16 v8, 0x8

    .line 150
    :goto_d
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 75
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {v0, v5}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/createFullSpanItemFromEnd;

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_18

    .line 9000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_e

    :cond_18
    move-object v2, v4

    .line 75
    :goto_e
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, v0, Lo/onLayoutChildren;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v2, :cond_19

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9024
    :cond_19
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 9033
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v2, :cond_1a

    const-string/jumbo v5, "text_3"

    .line 77
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getTargetScrollPosition;

    goto :goto_f

    :cond_1a
    move-object v2, v4

    .line 78
    :goto_f
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->text3:I

    invoke-virtual {v0, v5}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v6, "text3"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    if-eqz v2, :cond_1b

    const/4 v8, 0x1

    goto :goto_10

    :cond_1b
    const/4 v8, 0x0

    :goto_10
    if-eqz v8, :cond_1c

    const/4 v8, 0x0

    goto :goto_11

    :cond_1c
    const/16 v8, 0x8

    .line 152
    :goto_11
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 79
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->text3:I

    invoke-virtual {v0, v5}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/createFullSpanItemFromEnd;

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1d

    .line 10000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_12

    :cond_1d
    move-object v2, v4

    .line 79
    :goto_12
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, v0, Lo/onLayoutChildren;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v2, :cond_1e

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 10024
    :cond_1e
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 10033
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v2, :cond_1f

    const-string/jumbo v5, "text_4"

    .line 81
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getTargetScrollPosition;

    goto :goto_13

    :cond_1f
    move-object v2, v4

    .line 82
    :goto_13
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->text4:I

    invoke-virtual {v0, v5}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v6, "text4"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    if-eqz v2, :cond_20

    const/4 v8, 0x1

    goto :goto_14

    :cond_20
    const/4 v8, 0x0

    :goto_14
    if-eqz v8, :cond_21

    const/4 v8, 0x0

    goto :goto_15

    :cond_21
    const/16 v8, 0x8

    .line 154
    :goto_15
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 83
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->text4:I

    invoke-virtual {v0, v5}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/createFullSpanItemFromEnd;

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_22

    .line 11000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_16

    :cond_22
    move-object v2, v4

    .line 83
    :goto_16
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, v0, Lo/onLayoutChildren;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v2, :cond_23

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 11024
    :cond_23
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 11032
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v2, :cond_25

    .line 11104
    iget-object v12, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v12, :cond_25

    .line 87
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->background:I

    invoke-virtual {v0, v2}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setSpeed;

    const-string v5, "background"

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v2

    check-cast v11, Landroid/view/View;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_24

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_24
    const v5, 0x7f080445

    invoke-static {v2, v5}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/16 v17, 0xc

    invoke-static/range {v11 .. v17}, Lo/missCount;->ICustomTabsCallback(Landroid/view/View;Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 90
    :cond_25
    iget-object v2, v0, Lo/onLayoutChildren;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v2, :cond_26

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 12024
    :cond_26
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 12035
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/Footer;

    if-eqz v2, :cond_2b

    .line 12116
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Footer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz v2, :cond_2b

    .line 91
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->btIcon:I

    invoke-virtual {v0, v3}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/setSpeed;

    const-string v5, "btIcon"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_27

    goto :goto_17

    :cond_27
    const/4 v7, 0x0

    :goto_17
    if-eqz v7, :cond_28

    const/4 v9, 0x0

    .line 156
    :cond_28
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 93
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->btIcon:I

    invoke-virtual {v0, v3}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lo/setSpeed;

    invoke-static {v6, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getIconUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3e

    invoke-static/range {v6 .. v13}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 94
    :cond_29
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->bottomText:I

    invoke-virtual {v0, v3}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/createFullSpanItemFromEnd;

    const-string v5, "bottomText"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getTitle()Lo/getTargetScrollPosition;

    move-result-object v5

    if-eqz v5, :cond_2a

    .line 13000
    iget-object v4, v5, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 94
    :cond_2a
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->ctaContainer:I

    invoke-virtual {v0, v3}, Lo/onLayoutChildren;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    const-string v4, "ctaContainer"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    new-instance v4, Lo/onLayoutChildren$onPostMessage;

    invoke-direct {v4, v2, v0}, Lo/onLayoutChildren$onPostMessage;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Lo/onLayoutChildren;)V

    check-cast v4, Lo/onDisconnectSetValue;

    invoke-static {v3, v4}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 100
    :cond_2b
    iget-boolean v2, v0, Lo/onLayoutChildren;->onPostMessage:Z

    if-eqz v2, :cond_2c

    .line 101
    sget-object v2, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v3

    new-instance v4, Lo/onLayoutChildren$onRelationshipValidationResult;

    invoke-direct {v4, v0}, Lo/onLayoutChildren$onRelationshipValidationResult;-><init>(Lo/onLayoutChildren;)V

    check-cast v4, Lo/setPlaybackToRemote;

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 108
    :cond_2c
    new-instance v2, Lo/onLayoutChildren$ICustomTabsCallback$Stub;

    invoke-direct {v2, v0}, Lo/onLayoutChildren$ICustomTabsCallback$Stub;-><init>(Lo/onLayoutChildren;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method
