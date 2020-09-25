.class public final Lo/dispatchLayoutStep3;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinTextualDetailsTemplate;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "backgroundView",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "kotlin.jvm.PlatformType",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "expiryText",
        "Landroid/widget/TextView;",
        "voucherLayout",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinVoucherWidget;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
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
.field private final extraCallback:Lo/findMinMaxChildLayoutPositions;

.field private final onMessageChannelReady:Landroid/widget/TextView;

.field private final onNavigationEvent:Lo/setSpeed;

.field private final onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 11010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e033b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p2, p0, Lo/dispatchLayoutStep3;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/dispatchLayoutStep3;->onNavigationEvent:Lo/setSpeed;

    .line 21
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->voucherLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/findMinMaxChildLayoutPositions;

    iput-object p1, p0, Lo/dispatchLayoutStep3;->extraCallback:Lo/findMinMaxChildLayoutPositions;

    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->expiryText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/dispatchLayoutStep3;->onMessageChannelReady:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    instance-of v0, p1, Lo/processAdapterUpdatesAndSetAnimationFlags;

    if-eqz v0, :cond_4

    .line 26
    check-cast p1, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 1010
    iget-object v0, p1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 1027
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 27
    iget-object v1, p0, Lo/dispatchLayoutStep3;->onMessageChannelReady:Landroid/widget/TextView;

    const-string v2, "expiryText"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->ICustomTabsCallback:Ljava/lang/String;

    .line 27
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1069
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;

    if-eqz v0, :cond_0

    .line 28
    iget-object v1, p0, Lo/dispatchLayoutStep3;->extraCallback:Lo/findMinMaxChildLayoutPositions;

    iget-object v2, p0, Lo/dispatchLayoutStep3;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    .line 2010
    iget-object v3, p1, Lo/processAdapterUpdatesAndSetAnimationFlags;->onPostMessage:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v0, v2, v3}, Lo/findMinMaxChildLayoutPositions;->setData(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;Lo/hasGapsToFix$onMessageChannelReady;Ljava/lang/String;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lo/dispatchLayoutStep3;->onNavigationEvent:Lo/setSpeed;

    const-string v1, "backgroundView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2116
    iget-object v0, v0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 2216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Lo/setMaxFrame;

    .line 30
    check-cast v0, Lo/getComposition;

    .line 4010
    iget-object v2, p1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 4027
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 4058
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v2, :cond_1

    .line 4078
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 5009
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "Resources.getSystem()"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x1

    .line 5010
    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 30
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v2, v1, v3, v1, v4}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    .line 5564
    invoke-virtual {v0, v2, v1}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x3

    new-array v1, v0, [Lo/addWrite;

    .line 6010
    iget-object v3, p1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 6021
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->onPostMessage:Ljava/lang/String;

    .line 6043
    new-instance v4, Lo/addWrite;

    const-string v6, "card_id"

    invoke-direct {v4, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    .line 7010
    iget v2, p1, Lo/processAdapterUpdatesAndSetAnimationFlags;->ICustomTabsCallback:I

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 7043
    new-instance v3, Lo/addWrite;

    const-string v4, "position_vertical"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v5

    const/4 v2, 0x2

    .line 8010
    iget-object v3, p1, Lo/processAdapterUpdatesAndSetAnimationFlags;->onPostMessage:Ljava/lang/String;

    .line 8043
    new-instance v4, Lo/addWrite;

    const-string v5, "game_id"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 32
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 9010
    iget-object v0, p1, Lo/processAdapterUpdatesAndSetAnimationFlags;->onMessageChannelReady:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 10010
    iget-object p1, p1, Lo/processAdapterUpdatesAndSetAnimationFlags;->onMessageChannelReady:Ljava/lang/Integer;

    const-string v0, "position_horizontal"

    .line 38
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo p1, "win_details_card_land"

    .line 32
    invoke-static {p1, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_1

    .line 3215
    :cond_3
    throw v1

    :cond_4
    :goto_1
    return-void
.end method
