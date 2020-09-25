.class public final Lo/onItemsAdded;
.super Lo/findLastVisibleItemPositions;
.source ""

# interfaces
.implements Lo/createScroller;
.implements Lo/getColumnCountForAccessibility;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onItemsAdded$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001d2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\r\u001a\u00020\u000cJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u000c\u0010\u0014\u001a\u00060\u000cj\u0002`\u0015H\u0016J\u0012\u0010\u0016\u001a\u00020\u000f2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u000fH\u0016J\u001a\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/interstitial/ui/permissiont1/InterstitialPermissionT1BottomSheet;",
        "Lcom/dreamplug/widget/BottomSheetFragment;",
        "Lcom/dreamplug/utils/BackKeyHandler;",
        "Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialTemplateInterface;",
        "()V",
        "data",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "getData",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "setData",
        "(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V",
        "markDismiss",
        "",
        "canDismiss",
        "dismissTemplate",
        "",
        "getInterstitialContainer",
        "Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer;",
        "getLayoutResource",
        "",
        "onBackPressed",
        "Lcom/dreamplug/utils/IsHandled;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDismiss",
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
.field public static final onPostMessage:Lo/onItemsAdded$ICustomTabsCallback;


# instance fields
.field private extraCallback:Z

.field private onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

.field private onNavigationEvent:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/onItemsAdded$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/onItemsAdded$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/onItemsAdded;->onPostMessage:Lo/onItemsAdded$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lo/findLastVisibleItemPositions;-><init>()V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lo/onItemsAdded;->extraCallback:Z

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/onItemsAdded;)Lo/getItemOffsets;
    .locals 2

    .line 14095
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

.method public static final synthetic onPostMessage(Lo/onItemsAdded;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lo/onItemsAdded;->extraCallback:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Z)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lo/findLastVisibleItemPositions;->onTransact()V

    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lo/onItemsAdded;->asInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13092
    invoke-virtual {p0}, Lo/findLastVisibleItemPositions;->onTransact()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final asInterface()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lo/onItemsAdded;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v0, :cond_0

    const-string v1, "data"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 12022
    :cond_0
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    if-eqz v0, :cond_1

    .line 12127
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;->extraCallback:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 78
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/onItemsAdded;->onNavigationEvent:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final g_()V
    .locals 3

    .line 13095
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/drawHorizontal;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lo/drawHorizontal;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/drawHorizontal;->extraCallback()Lo/getItemOffsets;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 86
    iget-boolean v0, p0, Lo/onItemsAdded;->extraCallback:Z

    invoke-virtual {v2, v0}, Lo/getItemOffsets;->onMessageChannelReady(Z)V

    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lo/findLastVisibleItemPositions;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "$this$getParcelExtra"

    .line 32
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

    .line 32
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    check-cast p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    iput-object p1, p0, Lo/onItemsAdded;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/findLastVisibleItemPositions;->onDestroyView()V

    .line 15000
    iget-object v0, p0, Lo/onItemsAdded;->onNavigationEvent:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/onItemsAdded;->onNavigationEvent:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/onItemsAdded;->onNavigationEvent:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/onItemsAdded;->onNavigationEvent:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/onItemsAdded;->onNavigationEvent:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    const v0, 0x7f0e00af

    return v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "view"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-super/range {p0 .. p2}, Lo/findLastVisibleItemPositions;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    new-instance v2, Lo/onItemsAdded$onMessageChannelReady;

    invoke-direct {v2, v0}, Lo/onItemsAdded$onMessageChannelReady;-><init>(Lo/onItemsAdded;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    iget-object v1, v0, Lo/onItemsAdded;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    const-string v2, "data"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2024
    :cond_0
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 2033
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v1, :cond_1

    const-string v3, "image_1"

    .line 41
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getTargetScrollPosition;

    if-eqz v1, :cond_1

    .line 42
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->ivIllustration:I

    invoke-virtual {v0, v3}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lo/setSpeed;

    const-string v3, "ivIllustration"

    invoke-static {v4, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    invoke-static/range {v4 .. v11}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 44
    :cond_1
    iget-object v1, v0, Lo/onItemsAdded;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v1, :cond_2

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3024
    :cond_2
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 3033
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const-string/jumbo v4, "text_1"

    .line 44
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getTargetScrollPosition;

    goto :goto_0

    :cond_3
    move-object v1, v3

    .line 45
    :goto_0
    sget v4, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {v0, v4}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string/jumbo v5, "text1"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    const/16 v9, 0x8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    const/16 v8, 0x8

    .line 106
    :goto_2
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 46
    sget v4, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {v0, v4}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    .line 4000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_6
    move-object v1, v3

    .line 46
    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, v0, Lo/onItemsAdded;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v1, :cond_7

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4024
    :cond_7
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 4033
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v1, :cond_8

    const-string/jumbo v4, "text_2"

    .line 48
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getTargetScrollPosition;

    goto :goto_4

    :cond_8
    move-object v1, v3

    .line 49
    :goto_4
    sget v4, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {v0, v4}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string/jumbo v5, "text2"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    if-eqz v1, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_a

    const/4 v8, 0x0

    goto :goto_6

    :cond_a
    const/16 v8, 0x8

    .line 108
    :goto_6
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 50
    sget v4, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {v0, v4}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_b

    .line 5000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_7

    :cond_b
    move-object v1, v3

    .line 50
    :goto_7
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, v0, Lo/onItemsAdded;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v1, :cond_c

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 5024
    :cond_c
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 5041
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->newSession:Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;

    if-eqz v1, :cond_d

    .line 5167
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;->onPostMessage:Ljava/lang/String;

    goto :goto_8

    :cond_d
    move-object v4, v3

    :goto_8
    const-string v5, "bottomImage1"

    const-string v8, "bottomText1"

    if-nez v4, :cond_f

    if-eqz v1, :cond_e

    .line 6166
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;->onNavigationEvent:Lo/getTargetScrollPosition;

    goto :goto_9

    :cond_e
    move-object v1, v3

    :goto_9
    if-nez v1, :cond_f

    .line 54
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomText1:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    const-string v4, "$this$gone"

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7017
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 55
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomImage1:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setSpeed;

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8017
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 57
    :cond_f
    iget-object v1, v0, Lo/onItemsAdded;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v1, :cond_10

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 8024
    :cond_10
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 8041
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->newSession:Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;

    if-eqz v1, :cond_11

    .line 8166
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;->onNavigationEvent:Lo/getTargetScrollPosition;

    goto :goto_a

    :cond_11
    move-object v1, v3

    .line 58
    :goto_a
    sget v4, Lo/getSwitchMinWidth$onPostMessage;->bottomText1:I

    invoke-virtual {v0, v4}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/createFullSpanItemFromEnd;

    invoke-static {v4, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_12

    .line 9000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_b

    :cond_12
    move-object v1, v3

    .line 58
    :goto_b
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, v0, Lo/onItemsAdded;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v1, :cond_13

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9024
    :cond_13
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 9041
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->newSession:Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;

    if-eqz v1, :cond_14

    .line 9167
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/Bottom;->onPostMessage:Ljava/lang/String;

    move-object v11, v1

    goto :goto_c

    :cond_14
    move-object v11, v3

    .line 61
    :goto_c
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomImage1:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lo/setSpeed;

    invoke-static {v10, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x2e

    invoke-static/range {v10 .. v17}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 66
    :goto_d
    iget-object v1, v0, Lo/onItemsAdded;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-nez v1, :cond_15

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 10024
    :cond_15
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 10035
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/Footer;

    if-eqz v1, :cond_19

    .line 10116
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/Footer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz v1, :cond_19

    .line 67
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->submit:I

    invoke-virtual {v0, v2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string/jumbo v4, "submit"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v2

    check-cast v10, Landroid/view/View;

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getBackgroundColor()Ljava/lang/String;

    move-result-object v11

    .line 11009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v5, "Resources.getSystem()"

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v5, 0x41c00000    # 24.0f

    .line 11010
    invoke-static {v6, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7c

    .line 67
    invoke-static/range {v10 .. v17}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 68
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->ctaText:I

    invoke-virtual {v0, v2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    const-string v5, "ctaText"

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getTitle()Lo/getTargetScrollPosition;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 12000
    iget-object v3, v5, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 68
    :cond_16
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->btImage:I

    invoke-virtual {v0, v2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setSpeed;

    const-string v3, "btImage"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getIconUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    goto :goto_e

    :cond_17
    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_18

    goto :goto_f

    :cond_18
    const/16 v7, 0x8

    .line 110
    :goto_f
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 70
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->btImage:I

    invoke-virtual {v0, v2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lo/setSpeed;

    invoke-static {v5, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x2e

    invoke-static/range {v5 .. v12}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 71
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->submit:I

    invoke-virtual {v0, v2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v3, Lo/onItemsAdded$extraCallback;

    invoke-direct {v3, v1, v0}, Lo/onItemsAdded$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Lo/onItemsAdded;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v2, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    :cond_19
    return-void
.end method
