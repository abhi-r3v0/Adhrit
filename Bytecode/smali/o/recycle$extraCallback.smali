.class final Lo/recycle$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/recycle;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "list",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/recycle;


# direct methods
.method constructor <init>(Lo/recycle;)V
    .locals 0

    iput-object p1, p0, Lo/recycle$extraCallback;->onMessageChannelReady:Lo/recycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    .line 61
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    .line 1190
    sget-object v2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object v2, Lo/isInLayout;->ICustomTabsService$Stub$Proxy:Lo/isAdded;

    sget-object v3, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v4, 0x20

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1191
    sget-object v2, Lo/putCount;->asInterface:Lo/putCount;

    iget-object v3, v0, Lo/recycle$extraCallback;->onMessageChannelReady:Lo/recycle;

    move-object v4, v3

    check-cast v4, Lo/toLegacyStreamType;

    invoke-static {v3}, Lo/recycle;->onTransact(Lo/recycle;)Lo/setPlaybackToRemote;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    :cond_0
    const/4 v2, -0x1

    const-string v3, "childFragmentManager"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_7

    .line 1194
    move-object v7, v1

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v5

    if-eqz v8, :cond_7

    .line 1195
    sget-object v8, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object v8

    .line 2320
    iget-object v8, v8, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v9, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v8, v9, :cond_1

    goto :goto_0

    :cond_1
    move-object v8, v4

    .line 1195
    :goto_0
    check-cast v8, Landroid/view/WindowInsets;

    if-eqz v8, :cond_2

    .line 1196
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 1197
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/List;

    .line 1199
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v5, :cond_4

    .line 1200
    new-instance v12, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lo/getDecoratedRight;

    .line 3034
    iget-object v1, v1, Lo/getDecoratedRight;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 1200
    invoke-direct {v12, v1}, Lcom/dreamplug/androidapp/onboarding/PaymentMode;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;)V

    .line 1201
    iget-object v1, v0, Lo/recycle$extraCallback;->onMessageChannelReady:Lo/recycle;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3571
    new-instance v3, Lo/requestExtraBinder$onMessageChannelReady;

    invoke-direct {v3, v1, v4, v2, v6}, Lo/requestExtraBinder$onMessageChannelReady;-><init>(Lo/requestExtraBinder;Ljava/lang/String;II)V

    invoke-virtual {v1, v3, v6}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    .line 1203
    iget-object v1, v0, Lo/recycle$extraCallback;->onMessageChannelReady:Lo/recycle;

    invoke-static {v1}, Lo/recycle;->onNavigationEvent(Lo/recycle;)Lo/setTitleMarginStart;

    move-result-object v1

    .line 4000
    iget-object v1, v1, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setActive;

    .line 1203
    new-instance v2, Lo/getThumbTintList;

    new-instance v3, Lo/setTitleMarginStart$extraCallback;

    const/4 v7, 0x0

    new-instance v8, Lo/setTitleMarginBottom$extraCallback;

    iget-object v9, v0, Lo/recycle$extraCallback;->onMessageChannelReady:Lo/recycle;

    invoke-static {v9}, Lo/recycle;->asBinder(Lo/recycle;)Lo/getBottomDecorationHeight;

    move-result-object v9

    .line 4027
    iget v15, v9, Lo/getBottomDecorationHeight;->onNavigationEvent:I

    const/16 v16, 0x4

    const-string v13, "credit_score_page"

    const-string v14, "SCF"

    move-object v11, v8

    .line 1203
    invoke-direct/range {v11 .. v16}, Lo/setTitleMarginBottom$extraCallback;-><init>(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x12

    const-string v14, "NEW_VERIFY_CARD_FRAGMENT"

    move-object v13, v3

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-direct/range {v13 .. v19}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v2, v3}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1200
    :cond_3
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.onboardAddCard.OnboardCardsListItem"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1205
    :cond_4
    iget-object v1, v0, Lo/recycle$extraCallback;->onMessageChannelReady:Lo/recycle;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->fabrikLoaderView:I

    invoke-virtual {v1, v2}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onDestroyView;

    invoke-virtual {v1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1206
    new-instance v1, Lo/onCreateView;

    sget-object v2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 5000
    sget-object v2, Lo/isInLayout;->INotificationSideChannel$Default:Lo/isAdded;

    sget-object v3, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v10, 0x28

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "Resources.getSystem()"

    if-eqz v2, :cond_5

    .line 5009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v10, 0x420c0000    # 35.0f

    .line 5010
    invoke-static {v5, v10, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    goto :goto_2

    .line 6009
    :cond_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v10, 0x41200000    # 10.0f

    .line 6010
    invoke-static {v5, v10, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    :goto_2
    float-to-int v2, v2

    move v12, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    const-string/jumbo v11, "top_space"

    move-object v10, v1

    .line 1206
    invoke-direct/range {v10 .. v15}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    invoke-interface {v9, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1208
    new-instance v1, Lo/getDecoratedMeasuredWidth;

    const-string v2, "cta"

    invoke-direct {v1, v2}, Lo/getDecoratedMeasuredWidth;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    new-instance v1, Lo/onCreateView;

    .line 7009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x43160000    # 150.0f

    .line 7010
    invoke-static {v5, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    add-int v12, v2, v8

    const-string v11, "bottom_space"

    move-object v10, v1

    .line 1209
    invoke-direct/range {v10 .. v15}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    iget-object v1, v0, Lo/recycle$extraCallback;->onMessageChannelReady:Lo/recycle;

    invoke-static {v1}, Lo/recycle;->ICustomTabsCallback$Stub(Lo/recycle;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-static {v9, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8000
    iget-object v1, v1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 7038
    invoke-virtual {v1, v9}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :goto_3
    const/4 v1, 0x4

    new-array v2, v1, [Lo/addWrite;

    .line 1214
    iget-object v3, v0, Lo/recycle$extraCallback;->onMessageChannelReady:Lo/recycle;

    invoke-static {v3}, Lo/recycle;->asBinder(Lo/recycle;)Lo/getBottomDecorationHeight;

    move-result-object v3

    .line 8027
    iget v3, v3, Lo/getBottomDecorationHeight;->onNavigationEvent:I

    .line 1214
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 8043
    new-instance v7, Lo/addWrite;

    const-string v8, "fetched_card_count"

    invoke-direct {v7, v8, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v2, v6

    .line 1215
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 9000
    sget-object v3, Lo/setTrackTintMode;->MediaBrowserCompat$CustomActionCallback:Lo/setSubtitleTextColor;

    sget-object v6, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v7, 0x43

    aget-object v6, v6, v7

    invoke-virtual {v3, v6}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9043
    new-instance v6, Lo/addWrite;

    const-string v8, "layout_type"

    invoke-direct {v6, v8, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v5

    const/4 v3, 0x2

    .line 1216
    sget-object v5, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 10000
    sget-object v5, Lo/setTrackTintMode;->MediaBrowserCompat$CustomActionCallback:Lo/setSubtitleTextColor;

    sget-object v6, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "carousel"

    .line 1216
    invoke-static {v5, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 10043
    new-instance v6, Lo/addWrite;

    const-string v7, "carousel_view"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v3

    const/4 v3, 0x3

    .line 1217
    iget-object v5, v0, Lo/recycle$extraCallback;->onMessageChannelReady:Lo/recycle;

    invoke-static {v5}, Lo/recycle;->asBinder(Lo/recycle;)Lo/getBottomDecorationHeight;

    move-result-object v5

    .line 11041
    iget-object v5, v5, Lo/getBottomDecorationHeight;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;

    if-eqz v5, :cond_6

    .line 12011
    iget-object v4, v5, Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;->extraCallback:Ljava/lang/String;

    .line 12043
    :cond_6
    new-instance v5, Lo/addWrite;

    const-string v6, "card_order_logic"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const-string v3, "pairs"

    .line 1213
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12088
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "onboard_fetched_card_screen_load"

    .line 1213
    invoke-static {v1, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_4

    .line 1220
    :cond_7
    iget-object v1, v0, Lo/recycle$extraCallback;->onMessageChannelReady:Lo/recycle;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12571
    new-instance v3, Lo/requestExtraBinder$onMessageChannelReady;

    invoke-direct {v3, v1, v4, v2, v6}, Lo/requestExtraBinder$onMessageChannelReady;-><init>(Lo/requestExtraBinder;Ljava/lang/String;II)V

    invoke-virtual {v1, v3, v6}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    .line 1222
    iget-object v1, v0, Lo/recycle$extraCallback;->onMessageChannelReady:Lo/recycle;

    invoke-static {v1}, Lo/recycle;->onNavigationEvent(Lo/recycle;)Lo/setTitleMarginStart;

    move-result-object v1

    .line 13000
    iget-object v1, v1, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setActive;

    .line 1222
    new-instance v2, Lo/getThumbTintList;

    new-instance v3, Lo/setTitleMarginStart$extraCallback;

    const/4 v8, 0x0

    new-instance v9, Lo/getTitleMarginEnd$extraCallback;

    const/16 v6, 0x8

    const-string/jumbo v7, "verify_cards"

    invoke-direct {v9, v7, v5, v4, v6}, Lo/getTitleMarginEnd$extraCallback;-><init>(Ljava/lang/String;ZLjava/lang/String;I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x12

    const-string v7, "VERIFY_CARD_FRAGMENT"

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v2, v3}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1224
    :goto_4
    iget-object v1, v0, Lo/recycle$extraCallback;->onMessageChannelReady:Lo/recycle;

    invoke-static {v1}, Lo/recycle;->ICustomTabsCallback$Stub(Lo/recycle;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
