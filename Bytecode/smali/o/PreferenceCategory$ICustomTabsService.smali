.class final Lo/PreferenceCategory$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PreferenceCategory;-><init>()V
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
        "Lo/addWrite<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
        ">;+",
        "Lo/AudioAttributesImplBase;",
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
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000126\u0010\u0002\u001a2\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0006 \u0007*\u0018\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "data",
        "Lkotlin/Pair;",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferError;",
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
.field private synthetic onPostMessage:Lo/PreferenceCategory;


# direct methods
.method constructor <init>(Lo/PreferenceCategory;)V
    .locals 0

    iput-object p1, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 11

    .line 47
    check-cast p1, Lo/addWrite;

    .line 1099
    iget-object v0, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {v0}, Lo/PreferenceCategory;->onRelationshipValidationResult(Lo/PreferenceCategory;)V

    if-eqz p1, :cond_3

    .line 2028
    iget-object v0, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    const-string/jumbo v1, "value"

    const-string/jumbo v2, "rewardRecyclerView"

    const-string v3, "categoryName"

    const-string v4, "offersOn"

    const-string v5, "offerRecyclerViewShadow"

    const-string v6, "offerRecyclerViewBackground"

    const-string v7, "emptyCardLayout"

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    .line 3028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 1102
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast p1, Lo/AudioAttributesImplBase;

    .line 1103
    iget-object v0, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    sget v10, Lo/getSwitchMinWidth$onPostMessage;->offerRecyclerViewBackground:I

    invoke-virtual {v0, v10}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/isScrap;

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    iget-object v0, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    sget v10, Lo/getSwitchMinWidth$onPostMessage;->offerRecyclerViewShadow:I

    invoke-virtual {v0, v10}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/isScrap;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->emptyCardLayout:I

    invoke-virtual {v0, v5}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onViewStateRestored;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1106
    iget-object v0, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->emptyCardLayout:I

    invoke-virtual {v0, v5}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onViewStateRestored;

    .line 3063
    iget-object v5, p1, Lo/AudioAttributesImplBase;->onPostMessage:Lo/onViewStateRestored$onNavigationEvent;

    .line 1106
    invoke-virtual {v0, v5}, Lo/onViewStateRestored;->setData(Lo/onViewStateRestored$onNavigationEvent;)V

    .line 1107
    iget-object v0, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->offersOn:I

    invoke-virtual {v0, v5}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    iget-object v0, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->rewardRecyclerView:I

    invoke-virtual {v0, v4}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4062
    iget-object p1, p1, Lo/AudioAttributesImplBase;->ICustomTabsCallback:Ljava/lang/String;

    const-string v0, "category"

    .line 1109
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1110
    iget-object p1, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->categoryName:I

    invoke-virtual {p1, v0}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/saveOldPosition;

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    :cond_1
    iget-object p1, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {p1}, Lo/PreferenceCategory;->getInterfaceDescriptor(Lo/PreferenceCategory;)Lo/repositionToWrapContentIfNecessary;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 5038
    invoke-virtual {p1, v0}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    return-void

    .line 1115
    :cond_2
    iget-object v0, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    sget v10, Lo/getSwitchMinWidth$onPostMessage;->emptyCardLayout:I

    invoke-virtual {v0, v10}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onViewStateRestored;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1116
    iget-object v0, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->offerRecyclerViewBackground:I

    invoke-virtual {v0, v7}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/isScrap;

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    iget-object v0, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->offerRecyclerViewShadow:I

    invoke-virtual {v0, v6}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/isScrap;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    iget-object v0, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->offersOn:I

    invoke-virtual {v0, v5}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1119
    iget-object v0, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->categoryName:I

    invoke-virtual {v0, v4}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/saveOldPosition;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    iget-object v0, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->rewardRecyclerView:I

    invoke-virtual {v0, v3}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {v0}, Lo/PreferenceCategory;->getInterfaceDescriptor(Lo/PreferenceCategory;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    .line 6027
    iget-object p1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1123
    check-cast p1, Ljava/util/List;

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 6038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1124
    iget-object p1, p0, Lo/PreferenceCategory$ICustomTabsService;->onPostMessage:Lo/PreferenceCategory;

    const-string v0, "bank_offer_search_result_load"

    invoke-static {p1, v0}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;Ljava/lang/String;)Lo/onSupportContentChanged;

    :cond_3
    return-void
.end method
