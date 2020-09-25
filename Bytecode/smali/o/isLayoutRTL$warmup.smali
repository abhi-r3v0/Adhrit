.class public final Lo/isLayoutRTL$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isLayoutRTL;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$listItemClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field private synthetic extraCallback:Lo/isLayoutRTL;


# direct methods
.method constructor <init>(Lo/isLayoutRTL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 680
    iput-object p1, p0, Lo/isLayoutRTL$warmup;->extraCallback:Lo/isLayoutRTL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 6

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const/4 v0, 0x0

    const-string v1, "masonry1"

    const/4 v2, 0x0

    const-string v3, "property"

    const/4 v4, 0x1

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string p3, "asset_card"

    .line 716
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 717
    instance-of p1, p2, Lo/setOnScrollListener;

    if-eqz p1, :cond_9

    .line 718
    sget-object p1, Lo/recycleChildren;->onMessageChannelReady:Lo/recycleChildren$onPostMessage;

    check-cast p2, Lo/setOnScrollListener;

    invoke-static {p2}, Lo/recycleChildren$onPostMessage;->onPostMessage(Lo/setOnScrollListener;)Lo/recycleChildren;

    move-result-object p1

    .line 719
    iget-object p2, p0, Lo/isLayoutRTL$warmup;->extraCallback:Lo/isLayoutRTL;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p2

    const-string p3, "AssetViewerDialogFragment"

    invoke-virtual {p1, p2, p3}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void

    :sswitch_1
    const-string p3, "double_tap"

    .line 722
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 723
    instance-of p1, p2, Lo/ensureLayoutState;

    if-eqz p1, :cond_9

    .line 724
    check-cast p2, Lo/ensureLayoutState;

    .line 12012
    iget-object p1, p2, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 12033
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 12175
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lifestyle/models/QuickActions;

    if-eqz p1, :cond_0

    .line 12265
    iget-boolean p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/QuickActions;->onMessageChannelReady:Z

    if-ne p1, v4, :cond_9

    .line 725
    iget-object p1, p0, Lo/isLayoutRTL$warmup;->extraCallback:Lo/isLayoutRTL;

    invoke-static {p1, p3}, Lo/isLayoutRTL;->ICustomTabsCallback(Lo/isLayoutRTL;Ljava/lang/String;)V

    :cond_0
    return-void

    :sswitch_2
    const-string p3, "masonry2"

    .line 683
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 684
    :goto_0
    instance-of p3, p2, Lo/computeVerticalScrollExtent;

    if-eqz p3, :cond_9

    .line 685
    check-cast p2, Lo/computeVerticalScrollExtent;

    .line 1068
    iget-object p3, p2, Lo/computeVerticalScrollExtent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 2000
    iget-object v4, p3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->extraCallback:Lo/setChildDrawingOrderCallback;

    sget-object v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    aget-object v0, v5, v0

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2033
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    if-eqz p3, :cond_1

    .line 2162
    iget-object v2, p3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;

    .line 2014
    :cond_1
    invoke-virtual {v4, v2}, Lo/setChildDrawingOrderCallback;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;)Ljava/lang/Object;

    move-result-object p3

    .line 2000
    check-cast p3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 686
    iget-object v0, p0, Lo/isLayoutRTL$warmup;->extraCallback:Lo/isLayoutRTL;

    .line 3068
    iget-object v2, p2, Lo/computeVerticalScrollExtent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 686
    invoke-static {p1, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4064
    iget-object p1, p2, Lo/computeVerticalScrollExtent;->onNavigationEvent:Lo/scrollToPositionWithOffset;

    goto :goto_1

    .line 4065
    :cond_2
    iget-object p1, p2, Lo/computeVerticalScrollExtent;->ICustomTabsCallback:Lo/scrollToPositionWithOffset;

    .line 686
    :goto_1
    invoke-static {v0, p3, v2, p1}, Lo/isLayoutRTL;->onMessageChannelReady(Lo/isLayoutRTL;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;Lo/scrollToPositionWithOffset;)V

    return-void

    :sswitch_4
    const-string p3, "primary"

    .line 703
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 704
    instance-of p1, p2, Lo/ensureLayoutState;

    if-eqz p1, :cond_9

    .line 705
    check-cast p2, Lo/ensureLayoutState;

    .line 6012
    iget-object p1, p2, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 7000
    iget-object p3, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->extraCallback:Lo/setChildDrawingOrderCallback;

    sget-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    aget-object v0, v1, v0

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7033
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    if-eqz p1, :cond_3

    .line 7162
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;

    .line 7014
    :cond_3
    invoke-virtual {p3, v2}, Lo/setChildDrawingOrderCallback;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;)Ljava/lang/Object;

    move-result-object p1

    .line 7000
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 706
    iget-object p3, p0, Lo/isLayoutRTL$warmup;->extraCallback:Lo/isLayoutRTL;

    .line 8012
    iget-object p2, p2, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 706
    invoke-static {p3, p1, p2}, Lo/isLayoutRTL;->onMessageChannelReady(Lo/isLayoutRTL;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;)V

    return-void

    :sswitch_5
    const-string p3, "long_press"

    .line 729
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 730
    instance-of p1, p2, Lo/ensureLayoutState;

    if-eqz p1, :cond_9

    .line 731
    check-cast p2, Lo/ensureLayoutState;

    .line 13012
    iget-object p1, p2, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 13033
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 13175
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lifestyle/models/QuickActions;

    if-eqz p1, :cond_4

    .line 13263
    iget-boolean p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/QuickActions;->onNavigationEvent:Z

    if-ne p1, v4, :cond_9

    .line 732
    iget-object p1, p0, Lo/isLayoutRTL$warmup;->extraCallback:Lo/isLayoutRTL;

    invoke-static {p1, p3}, Lo/isLayoutRTL;->extraCallback(Lo/isLayoutRTL;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    return-void

    :sswitch_6
    const-string/jumbo p3, "secondary"

    .line 710
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 711
    instance-of p1, p2, Lo/ensureLayoutState;

    if-eqz p1, :cond_9

    .line 712
    check-cast p2, Lo/ensureLayoutState;

    .line 9012
    iget-object p1, p2, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 10000
    iget-object p3, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onNavigationEvent:Lo/setChildDrawingOrderCallback;

    sget-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    aget-object v0, v0, v4

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10033
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    if-eqz p1, :cond_5

    .line 10162
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;

    .line 10014
    :cond_5
    invoke-virtual {p3, v2}, Lo/setChildDrawingOrderCallback;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;)Ljava/lang/Object;

    move-result-object p1

    .line 10000
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 713
    iget-object p3, p0, Lo/isLayoutRTL$warmup;->extraCallback:Lo/isLayoutRTL;

    .line 11012
    iget-object p2, p2, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 713
    invoke-static {p3, p1, p2}, Lo/isLayoutRTL;->onMessageChannelReady(Lo/isLayoutRTL;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;)V

    return-void

    :sswitch_7
    const-string p2, "backToFarm"

    .line 694
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 695
    iget-object p1, p0, Lo/isLayoutRTL$warmup;->extraCallback:Lo/isLayoutRTL;

    invoke-static {p1}, Lo/isLayoutRTL;->validateRelationship(Lo/isLayoutRTL;)Lo/updateLayoutStateToFillEnd;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 696
    iget-object p1, p0, Lo/isLayoutRTL$warmup;->extraCallback:Lo/isLayoutRTL;

    invoke-static {p1}, Lo/isLayoutRTL;->asInterface(Lo/isLayoutRTL;)Lo/StaggeredGridLayoutManager;

    move-result-object p1

    instance-of p1, p1, Lo/ensureLayoutState;

    if-eqz p1, :cond_7

    .line 697
    iget-object p1, p0, Lo/isLayoutRTL$warmup;->extraCallback:Lo/isLayoutRTL;

    invoke-static {p1}, Lo/isLayoutRTL;->asInterface(Lo/isLayoutRTL;)Lo/StaggeredGridLayoutManager;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Lo/ensureLayoutState;

    .line 698
    iget-object p2, p0, Lo/isLayoutRTL$warmup;->extraCallback:Lo/isLayoutRTL;

    invoke-static {p2, p1}, Lo/isLayoutRTL;->extraCallback(Lo/isLayoutRTL;Lo/ensureLayoutState;)Ljava/util/Map;

    move-result-object p1

    const-string/jumbo p2, "rewards_category_card_back_click"

    invoke-static {p2, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_2

    .line 697
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lifestyle.LifestyleListItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 700
    :cond_7
    :goto_2
    iget-object p1, p0, Lo/isLayoutRTL$warmup;->extraCallback:Lo/isLayoutRTL;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_8
    return-void

    :sswitch_8
    const-string p3, "group_inner_card"

    .line 689
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 690
    instance-of p1, p2, Lo/scrollToPositionWithOffset;

    if-eqz p1, :cond_9

    .line 691
    iget-object p1, p0, Lo/isLayoutRTL$warmup;->extraCallback:Lo/isLayoutRTL;

    check-cast p2, Lo/scrollToPositionWithOffset;

    .line 4115
    iget-object p3, p2, Lo/scrollToPositionWithOffset;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;

    .line 4327
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 5118
    iget-object v0, p2, Lo/scrollToPositionWithOffset;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 691
    invoke-static {p1, p3, v0, p2}, Lo/isLayoutRTL;->onMessageChannelReady(Lo/isLayoutRTL;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;Lo/scrollToPositionWithOffset;)V

    :cond_9
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79e7eae7 -> :sswitch_8
        -0x7010f2e8 -> :sswitch_7
        -0x30bb8e8c -> :sswitch_6
        -0x1378ff40 -> :sswitch_5
        -0x12c2f1fe -> :sswitch_4
        0x10a9ca8c -> :sswitch_3
        0x10a9ca8d -> :sswitch_2
        0x2e701a35 -> :sswitch_1
        0x7ee99eff -> :sswitch_0
    .end sparse-switch
.end method
