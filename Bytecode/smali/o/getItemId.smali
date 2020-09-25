.class public final Lo/getItemId;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000eH\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/winnings/TrophyWinType2Holder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "binding",
        "Lcom/dreamplug/androidapp/databinding/ItemTrophyWinType2Binding;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "updateMode",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/WinTypeCardsItem;",
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
.field private final onMessageChannelReady:Lo/ThemedSpinnerAdapter$Helper;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 13010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b00b6

    .line 13094
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lo/setSpeed;

    if-eqz v1, :cond_7

    const p2, 0x7f0b00f5

    .line 13099
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/cardview/widget/CardView;

    if-eqz p2, :cond_6

    const p2, 0x7f0b014b

    .line 13104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/unScrap;

    if-eqz p2, :cond_5

    const p2, 0x7f0b0153

    .line 13109
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/getNextSpan;

    if-eqz p2, :cond_4

    const p2, 0x7f0b031b

    .line 13114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lo/hasStableIds;

    if-eqz v2, :cond_3

    const p2, 0x7f0b056f

    .line 13119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    const p2, 0x7f0b08b5

    .line 13124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lo/createFullSpanItemFromEnd;

    if-eqz v4, :cond_1

    const p2, 0x7f0b0955

    .line 13129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lo/setSpeed;

    if-eqz v5, :cond_0

    .line 13134
    new-instance p1, Lo/ThemedSpinnerAdapter$Helper;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lo/ThemedSpinnerAdapter$Helper;-><init>(Lo/setSpeed;Lo/hasStableIds;Landroid/widget/TextView;Lo/createFullSpanItemFromEnd;Lo/setSpeed;)V

    const-string p2, "ItemTrophyWinType2Binding.bind(itemView)"

    .line 20
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/getItemId;->onMessageChannelReady:Lo/ThemedSpinnerAdapter$Helper;

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lo/getItemId$1;

    invoke-direct {p2, p0}, Lo/getItemId$1;-><init>(Lo/getItemId;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    :cond_0
    const-string/jumbo p1, "typeLogo"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "title"

    goto :goto_0

    :cond_2
    const-string p1, "merchantName"

    goto :goto_0

    :cond_3
    const-string p1, "fadedBorder"

    goto :goto_0

    :cond_4
    const-string p1, "cardContainer"

    goto :goto_0

    :cond_5
    const-string p1, "cardBackGroundView"

    goto :goto_0

    :cond_6
    const-string p1, "border"

    goto :goto_0

    :cond_7
    const-string p1, "backgroundView"

    .line 13137
    :goto_0
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    instance-of v0, p1, Lo/RecyclerView$Adapter;

    if-eqz v0, :cond_8

    .line 30
    iget-object v0, p0, Lo/getItemId;->onMessageChannelReady:Lo/ThemedSpinnerAdapter$Helper;

    iget-object v0, v0, Lo/ThemedSpinnerAdapter$Helper;->onPostMessage:Lo/setSpeed;

    const-string v1, "binding.backgroundView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object v0, v0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    check-cast v0, Lo/setMaxFrame;

    .line 30
    check-cast v0, Lo/getComposition;

    check-cast p1, Lo/RecyclerView$Adapter;

    .line 3014
    iget-object v2, p1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 3051
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    if-eqz v2, :cond_0

    .line 3066
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v2, :cond_0

    .line 3078
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 4009
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "Resources.getSystem()"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    .line 4010
    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 30
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v2, v1, v3, v1, v4}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    .line 4564
    invoke-virtual {v0, v3, v2}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object v0, p0, Lo/getItemId;->onMessageChannelReady:Lo/ThemedSpinnerAdapter$Helper;

    iget-object v0, v0, Lo/ThemedSpinnerAdapter$Helper;->onNavigationEvent:Landroid/widget/TextView;

    const-string v2, "binding.merchantName"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5014
    iget-object v3, p1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 5051
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    if-eqz v3, :cond_1

    .line 5058
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_1

    .line 6000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 31
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lo/getItemId;->onMessageChannelReady:Lo/ThemedSpinnerAdapter$Helper;

    iget-object v0, v0, Lo/ThemedSpinnerAdapter$Helper;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v3, p0, Lo/getItemId;->onMessageChannelReady:Lo/ThemedSpinnerAdapter$Helper;

    iget-object v3, v3, Lo/ThemedSpinnerAdapter$Helper;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 33
    iget-object v2, p0, Lo/getItemId;->onMessageChannelReady:Lo/ThemedSpinnerAdapter$Helper;

    iget-object v2, v2, Lo/ThemedSpinnerAdapter$Helper;->onMessageChannelReady:Lo/hasStableIds;

    invoke-virtual {v2, v0}, Lo/hasStableIds;->setTextWidth(F)V

    .line 34
    iget-object v0, p0, Lo/getItemId;->onMessageChannelReady:Lo/ThemedSpinnerAdapter$Helper;

    iget-object v0, v0, Lo/ThemedSpinnerAdapter$Helper;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const-string v2, "binding.title"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6014
    iget-object v2, p1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 6051
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    if-eqz v2, :cond_2

    .line 6059
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_2

    .line 7000
    iget-object v1, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 34
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7014
    iget-object v0, p1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 7051
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    if-eqz v0, :cond_3

    .line 7068
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->asBinder:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 36
    iget-object v0, p0, Lo/getItemId;->onMessageChannelReady:Lo/ThemedSpinnerAdapter$Helper;

    iget-object v1, v0, Lo/ThemedSpinnerAdapter$Helper;->extraCallback:Lo/setSpeed;

    const-string v0, "binding.typeLogo"

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    invoke-static/range {v1 .. v8}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 9014
    :cond_3
    iget-object p1, p1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 9051
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    const-string v0, "dark"

    if-eqz p1, :cond_4

    .line 9066
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz p1, :cond_4

    .line 9080
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onPostMessage:Ljava/lang/String;

    if-nez p1, :cond_5

    :cond_4
    move-object p1, v0

    .line 8045
    :cond_5
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8046
    iget-object p1, p0, Lo/getItemId;->onMessageChannelReady:Lo/ThemedSpinnerAdapter$Helper;

    iget-object p1, p1, Lo/ThemedSpinnerAdapter$Helper;->onNavigationEvent:Landroid/widget/TextView;

    .line 9096
    iget-object v0, p0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    const v1, 0x7f060220

    .line 8046
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8047
    iget-object p1, p0, Lo/getItemId;->onMessageChannelReady:Lo/ThemedSpinnerAdapter$Helper;

    iget-object p1, p1, Lo/ThemedSpinnerAdapter$Helper;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 10096
    iget-object v0, p0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    .line 8047
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 8049
    :cond_6
    iget-object p1, p0, Lo/getItemId;->onMessageChannelReady:Lo/ThemedSpinnerAdapter$Helper;

    iget-object p1, p1, Lo/ThemedSpinnerAdapter$Helper;->onNavigationEvent:Landroid/widget/TextView;

    .line 11096
    iget-object v0, p0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    const v1, 0x7f0600c6

    .line 8049
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8050
    iget-object p1, p0, Lo/getItemId;->onMessageChannelReady:Lo/ThemedSpinnerAdapter$Helper;

    iget-object p1, p1, Lo/ThemedSpinnerAdapter$Helper;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 12096
    iget-object v0, p0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    .line 8050
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 2215
    :cond_7
    throw v1

    :cond_8
    :goto_2
    return-void
.end method
