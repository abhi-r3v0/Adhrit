.class public final Lo/fillRemainingScrollValues;
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
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001e\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u00142\u0006\u0010\u0011\u001a\u00020\u0017H\u0002R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \t*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinRaffleDetailsTemplate;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "backgroundView",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "kotlin.jvm.PlatformType",
        "details",
        "Landroid/widget/TextView;",
        "header",
        "voucherLayoutList",
        "Landroid/widget/LinearLayout;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "getEventAttributes",
        "",
        "",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsListItem;",
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
.field private final ICustomTabsCallback:Landroid/widget/TextView;

.field private final extraCallback:Landroid/widget/TextView;

.field private final onMessageChannelReady:Landroid/widget/LinearLayout;

.field private final onNavigationEvent:Lo/setSpeed;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 12010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0338

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/fillRemainingScrollValues;->onNavigationEvent:Lo/setSpeed;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->details:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/fillRemainingScrollValues;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/fillRemainingScrollValues;->extraCallback:Landroid/widget/TextView;

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->voucherLayoutList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lo/fillRemainingScrollValues;->onMessageChannelReady:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/processAdapterUpdatesAndSetAnimationFlags;)Ljava/util/Map;
    .locals 0

    .line 22
    invoke-static {p0}, Lo/fillRemainingScrollValues;->onNavigationEvent(Lo/processAdapterUpdatesAndSetAnimationFlags;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(Lo/processAdapterUpdatesAndSetAnimationFlags;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/processAdapterUpdatesAndSetAnimationFlags;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [Lo/addWrite;

    .line 8010
    iget-object v2, p0, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 8021
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->onPostMessage:Ljava/lang/String;

    .line 8043
    new-instance v3, Lo/addWrite;

    const-string v4, "card_id"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 9010
    iget v2, p0, Lo/processAdapterUpdatesAndSetAnimationFlags;->ICustomTabsCallback:I

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 9043
    new-instance v3, Lo/addWrite;

    const-string v4, "position_vertical"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 10010
    iget-object v2, p0, Lo/processAdapterUpdatesAndSetAnimationFlags;->onPostMessage:Ljava/lang/String;

    .line 10043
    new-instance v3, Lo/addWrite;

    const-string v4, "game_id"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v3, v1, v2

    .line 11010
    iget-object p0, p0, Lo/processAdapterUpdatesAndSetAnimationFlags;->onMessageChannelReady:Ljava/lang/Integer;

    .line 11043
    new-instance v2, Lo/addWrite;

    const-string v3, "position_horizontal"

    invoke-direct {v2, v3, p0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x3

    aput-object v2, v1, p0

    const-string p0, "pairs"

    .line 53
    invoke-static {v1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11105
    new-instance p0, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p0, Ljava/util/Map;

    invoke-static {p0, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 10

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p1, Lo/processAdapterUpdatesAndSetAnimationFlags;

    if-eqz v0, :cond_4

    .line 32
    move-object v0, p1

    check-cast v0, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 1010
    iget-object v1, v0, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 1027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 1071
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->asInterface:Ljava/util/List;

    const/4 v2, 0x1

    const-string v3, "Resources.getSystem()"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 32
    check-cast v1, Ljava/lang/Iterable;

    .line 61
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;

    .line 33
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v8, "itemView"

    invoke-static {v7, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0e030d

    invoke-virtual {v7, v8, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const-string v8, "LayoutInflater.from(item\u2026ticket_item, null, false)"

    invoke-static {v7, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget v8, Lo/getSwitchMinWidth$onPostMessage;->ticketHeader:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string/jumbo v9, "ticketView.ticketHeader"

    invoke-static {v8, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
    iget-object v9, v6, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;->extraCallback:Ljava/lang/String;

    .line 34
    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    sget v8, Lo/getSwitchMinWidth$onPostMessage;->ticketNumber:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string/jumbo v9, "ticketView.ticketNumber"

    invoke-static {v8, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;->onNavigationEvent:Ljava/lang/String;

    .line 35
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v8, 0x41400000    # 12.0f

    .line 2010
    invoke-static {v2, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    .line 36
    invoke-virtual {v7, v4, v4, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    iget-object v6, p0, Lo/fillRemainingScrollValues;->onMessageChannelReady:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lo/fillRemainingScrollValues;->ICustomTabsCallback:Landroid/widget/TextView;

    const-string v6, "details"

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v7, Lo/fillRemainingScrollValues$onNavigationEvent;

    invoke-direct {v7, p0, p1}, Lo/fillRemainingScrollValues$onNavigationEvent;-><init>(Lo/fillRemainingScrollValues;Lo/StaggeredGridLayoutManager;)V

    check-cast v7, Lo/onDisconnectSetValue;

    invoke-static {v1, v7}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 44
    iget-object p1, p0, Lo/fillRemainingScrollValues;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-static {p1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3010
    iget-object v1, v0, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 3025
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v1, :cond_1

    .line 3052
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->onPostMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v5

    .line 44
    :goto_1
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lo/fillRemainingScrollValues;->extraCallback:Landroid/widget/TextView;

    const-string v1, "header"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4010
    iget-object v1, v0, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 4027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 4065
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->extraCallback:Ljava/lang/String;

    .line 45
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lo/fillRemainingScrollValues;->onNavigationEvent:Lo/setSpeed;

    const-string v1, "backgroundView"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4116
    iget-object p1, p1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 4216
    iget-object p1, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz p1, :cond_3

    check-cast p1, Lo/setMaxFrame;

    .line 46
    check-cast p1, Lo/getComposition;

    .line 6010
    iget-object v1, v0, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 6027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 6058
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v1, :cond_2

    .line 6078
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_2

    :cond_2
    move-object v1, v5

    .line 7009
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v6, 0x41800000    # 16.0f

    .line 7010
    invoke-static {v2, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 46
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v1, v5, v2, v5, v3}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7564
    invoke-virtual {p1, v4, v1}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-static {v0}, Lo/fillRemainingScrollValues;->onNavigationEvent(Lo/processAdapterUpdatesAndSetAnimationFlags;)Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "win_details_card_land"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_3

    .line 5215
    :cond_3
    throw v5

    :cond_4
    :goto_3
    return-void
.end method
