.class public final Lo/getChildDrawingOrder;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/TrophyRoomIntroCard;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)V",
        "binding",
        "Lcom/dreamplug/androidapp/databinding/ItemTrophyRoomIntroCardBinding;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "updateMode",
        "mode",
        "",
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
.field private final onPostMessage:Lo/createDisabledStateList;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 14010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;)V

    .line 19
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0b0184

    .line 14082
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    if-eqz v0, :cond_5

    const v1, 0x7f0b026d

    .line 14087
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    const v2, 0x7f0b03fb

    .line 14092
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/applyOptions;

    if-eqz v2, :cond_3

    const v2, 0x7f0b0450

    .line 14097
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setSpeed;

    if-eqz v2, :cond_2

    const v3, 0x7f0b066a

    .line 14102
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/unScrap;

    if-eqz v3, :cond_1

    const v3, 0x7f0b08b5

    .line 14107
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 14112
    new-instance v3, Lo/createDisabledStateList;

    invoke-direct {v3, v0, v1, v2, p1}, Lo/createDisabledStateList;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Lo/setSpeed;Landroid/widget/TextView;)V

    const-string p1, "ItemTrophyRoomIntroCardBinding.bind(itemView)"

    .line 19
    invoke-static {v3, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lo/getChildDrawingOrder;->onPostMessage:Lo/createDisabledStateList;

    return-void

    :cond_0
    const-string/jumbo p1, "title"

    goto :goto_0

    :cond_1
    const-string p1, "pitView"

    goto :goto_0

    :cond_2
    const-string p1, "image"

    goto :goto_0

    :cond_3
    const-string p1, "guideline"

    goto :goto_0

    :cond_4
    const-string p1, "description"

    goto :goto_0

    :cond_5
    const-string p1, "cardView"

    .line 14115
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    instance-of v0, p1, Lo/access$300;

    if-eqz v0, :cond_8

    .line 23
    iget-object v0, p0, Lo/getChildDrawingOrder;->onPostMessage:Lo/createDisabledStateList;

    iget-object v0, v0, Lo/createDisabledStateList;->onNavigationEvent:Landroid/widget/TextView;

    const-string v1, "binding.description"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/access$300;

    .line 1010
    iget-object v1, p1, Lo/access$300;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    .line 1058
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lo/getChildDrawingOrder;->onPostMessage:Lo/createDisabledStateList;

    iget-object v0, v0, Lo/createDisabledStateList;->extraCallback:Landroid/widget/TextView;

    const-string v1, "binding.title"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2010
    iget-object v1, p1, Lo/access$300;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    .line 2059
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_1

    .line 3000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 24
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lo/getChildDrawingOrder;->onPostMessage:Lo/createDisabledStateList;

    iget-object v0, v0, Lo/createDisabledStateList;->ICustomTabsCallback:Lo/setSpeed;

    .line 3010
    iget-object v1, p1, Lo/access$300;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    .line 3066
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v1, :cond_2

    .line 3076
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;

    if-eqz v1, :cond_2

    .line 3096
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;->onPostMessage:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 25
    :goto_2
    invoke-virtual {v0, v1}, Lo/setSpeed;->setImageURI(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lo/getChildDrawingOrder;->onPostMessage:Lo/createDisabledStateList;

    iget-object v0, v0, Lo/createDisabledStateList;->onPostMessage:Landroidx/cardview/widget/CardView;

    .line 4010
    iget-object v1, p1, Lo/access$300;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    .line 4066
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 4078
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    if-eqz v1, :cond_4

    .line 5039
    iget-object v1, v1, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v1, :cond_4

    const-string v4, "$this$lastOrNull"

    .line 26
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5453
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 26
    :goto_3
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, -0x1

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    .line 6010
    iget-object v4, p1, Lo/access$300;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    .line 6057
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->onPostMessage:Ljava/lang/String;

    .line 7043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "template"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    .line 8010
    iget-object v2, p1, Lo/access$300;->onMessageChannelReady:Ljava/lang/String;

    .line 8043
    new-instance v4, Lo/addWrite;

    const-string v5, "card_id"

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v3

    const-string v2, "pairs"

    .line 29
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "trophy_room_result_section_card_land"

    .line 29
    invoke-static {v0, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 9010
    iget-object p1, p1, Lo/access$300;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    .line 9066
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    const-string v0, "dark"

    if-eqz p1, :cond_5

    .line 9080
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onPostMessage:Ljava/lang/String;

    if-nez p1, :cond_6

    :cond_5
    move-object p1, v0

    .line 10038
    :cond_6
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 10039
    iget-object p1, p0, Lo/getChildDrawingOrder;->onPostMessage:Lo/createDisabledStateList;

    iget-object p1, p1, Lo/createDisabledStateList;->onNavigationEvent:Landroid/widget/TextView;

    .line 10096
    iget-object v0, p0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    const v1, 0x7f060220

    .line 10039
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10040
    iget-object p1, p0, Lo/getChildDrawingOrder;->onPostMessage:Lo/createDisabledStateList;

    iget-object p1, p1, Lo/createDisabledStateList;->extraCallback:Landroid/widget/TextView;

    .line 11096
    iget-object v0, p0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    .line 10040
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 10042
    :cond_7
    iget-object p1, p0, Lo/getChildDrawingOrder;->onPostMessage:Lo/createDisabledStateList;

    iget-object p1, p1, Lo/createDisabledStateList;->onNavigationEvent:Landroid/widget/TextView;

    .line 12096
    iget-object v0, p0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    const v1, 0x7f0600c6

    .line 10042
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10043
    iget-object p1, p0, Lo/getChildDrawingOrder;->onPostMessage:Lo/createDisabledStateList;

    iget-object p1, p1, Lo/createDisabledStateList;->extraCallback:Landroid/widget/TextView;

    .line 13096
    iget-object v0, p0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    .line 10043
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    return-void
.end method
