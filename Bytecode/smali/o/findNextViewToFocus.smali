.class public final Lo/findNextViewToFocus;
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
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u001e\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00152\u0006\u0010\u0012\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0018H\u0002R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \t*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \t*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \t*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsRedeemTemplate;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "backgroundView",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "kotlin.jvm.PlatformType",
        "cardImage",
        "cta",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "subTitle",
        "Lcom/dreamplug/widget/CredTextView;",
        "title",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "getEventAttributes",
        "",
        "",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsListItem;",
        "updateMode",
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
.field private final ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatTextView;

.field private final extraCallback:Lo/setSpeed;

.field private final onMessageChannelReady:Lo/createFullSpanItemFromEnd;

.field private final onNavigationEvent:Lo/createFullSpanItemFromEnd;

.field private final onPostMessage:Lo/setSpeed;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 18010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0e0339

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/findNextViewToFocus;->onPostMessage:Lo/setSpeed;

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/findNextViewToFocus;->extraCallback:Lo/setSpeed;

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/findNextViewToFocus;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->subTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/findNextViewToFocus;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lo/findNextViewToFocus;->ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    iget-object p1, p0, Lo/findNextViewToFocus;->onPostMessage:Lo/setSpeed;

    const-string p2, "cardImage"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18116
    iget-object p1, p1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 18216
    iget-object p1, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    check-cast p1, Lo/setMaxFrame;

    .line 34
    check-cast p1, Lo/getComposition;

    const-string v0, "cardImage.hierarchy"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->asInterface()Lo/setFailureListener$extraCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    .line 20369
    invoke-virtual {p1, v2}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object p1

    .line 20370
    instance-of v2, p1, Lo/fromAssets;

    if-eqz v2, :cond_0

    .line 20371
    check-cast p1, Lo/fromAssets;

    goto :goto_0

    .line 20373
    :cond_0
    sget-object v2, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {p1, v2}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object p1

    .line 21094
    :goto_0
    iget-object v2, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v2, v0, :cond_1

    if-eqz v2, :cond_2

    .line 22053
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    .line 21098
    iput-object v0, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 21099
    iput-object p2, p1, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 21100
    invoke-virtual {p1}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 21101
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3
    return-void

    .line 20215
    :cond_4
    throw p2

    .line 19215
    :cond_5
    throw p2
.end method

.method public static final synthetic extraCallback(Lo/processAdapterUpdatesAndSetAnimationFlags;)Ljava/util/Map;
    .locals 0

    .line 24
    invoke-static {p0}, Lo/findNextViewToFocus;->onPostMessage(Lo/processAdapterUpdatesAndSetAnimationFlags;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static onPostMessage(Lo/processAdapterUpdatesAndSetAnimationFlags;)Ljava/util/Map;
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

    .line 14010
    iget-object v2, p0, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 14021
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->onPostMessage:Ljava/lang/String;

    .line 14043
    new-instance v3, Lo/addWrite;

    const-string v4, "card_id"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 15010
    iget v2, p0, Lo/processAdapterUpdatesAndSetAnimationFlags;->ICustomTabsCallback:I

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 15043
    new-instance v3, Lo/addWrite;

    const-string v4, "position_vertical"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 16010
    iget-object v2, p0, Lo/processAdapterUpdatesAndSetAnimationFlags;->onPostMessage:Ljava/lang/String;

    .line 16043
    new-instance v3, Lo/addWrite;

    const-string v4, "game_id"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v3, v1, v2

    .line 17010
    iget-object p0, p0, Lo/processAdapterUpdatesAndSetAnimationFlags;->onMessageChannelReady:Ljava/lang/Integer;

    .line 17043
    new-instance v2, Lo/addWrite;

    const-string v3, "position_horizontal"

    invoke-direct {v2, v3, p0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x3

    aput-object v2, v1, p0

    const-string p0, "pairs"

    .line 85
    invoke-static {v1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17105
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
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    instance-of v2, v1, Lo/processAdapterUpdatesAndSetAnimationFlags;

    if-eqz v2, :cond_d

    .line 40
    iget-object v2, v0, Lo/findNextViewToFocus;->extraCallback:Lo/setSpeed;

    const-string v3, "backgroundView"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object v2, v2, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object v2, v2, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    check-cast v2, Lo/setMaxFrame;

    .line 40
    check-cast v2, Lo/getComposition;

    move-object v4, v1

    check-cast v4, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 3010
    iget-object v5, v4, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 3027
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 3058
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v5, :cond_0

    .line 3078
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_0

    :cond_0
    move-object v5, v3

    .line 4009
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "Resources.getSystem()"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x1

    .line 4010
    invoke-static {v8, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    .line 40
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v5, v3, v6, v3, v7}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    .line 4564
    invoke-virtual {v2, v6, v5}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 5010
    iget-object v2, v4, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 5027
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 5058
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v2, :cond_3

    .line 5076
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;

    if-eqz v2, :cond_3

    .line 5094
    iget-object v5, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;->onNavigationEvent:Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    const v9, 0x5faa95b

    if-eq v7, v9, :cond_2

    goto :goto_1

    :cond_2
    const-string v7, "image"

    .line 44
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 45
    iget-object v9, v0, Lo/findNextViewToFocus;->onPostMessage:Lo/setSpeed;

    const-string v5, "cardImage"

    invoke-static {v9, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5096
    iget-object v10, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;->onPostMessage:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    .line 45
    invoke-static/range {v9 .. v16}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 50
    :cond_3
    :goto_1
    iget-object v2, v0, Lo/findNextViewToFocus;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v5, "title"

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6010
    iget-object v5, v4, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 6022
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->extraCallback:Ljava/lang/String;

    .line 50
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, v0, Lo/findNextViewToFocus;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v5, "subTitle"

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7010
    iget-object v5, v4, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 7024
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->onNavigationEvent:Ljava/lang/String;

    .line 51
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8010
    iget-object v2, v4, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 8025
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v2, :cond_4

    .line 8052
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->onPostMessage:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v2, v3

    .line 53
    :goto_2
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :cond_6
    :goto_3
    const-string v2, "cta"

    if-eqz v8, :cond_7

    .line 54
    iget-object v3, v0, Lo/findNextViewToFocus;->ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 56
    :cond_7
    iget-object v5, v0, Lo/findNextViewToFocus;->ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v5, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v5, v0, Lo/findNextViewToFocus;->ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v5, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9010
    iget-object v6, v4, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 9025
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v6, :cond_8

    .line 9052
    iget-object v3, v6, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->onPostMessage:Ljava/lang/String;

    .line 57
    :cond_8
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_4
    iget-object v3, v0, Lo/findNextViewToFocus;->ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    new-instance v5, Lo/findNextViewToFocus$extraCallback;

    invoke-direct {v5, v0, v1}, Lo/findNextViewToFocus$extraCallback;-><init>(Lo/findNextViewToFocus;Lo/StaggeredGridLayoutManager;)V

    check-cast v5, Lo/onDisconnectSetValue;

    invoke-static {v3, v5}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 10010
    iget-object v1, v4, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 10027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 10058
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    const-string v3, "dark"

    if-eqz v1, :cond_9

    .line 10080
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onPostMessage:Ljava/lang/String;

    if-nez v1, :cond_a

    :cond_9
    move-object v1, v3

    .line 9073
    :cond_a
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 9074
    iget-object v1, v0, Lo/findNextViewToFocus;->ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lo/calculateScrollDirectionForPosition$extraCallback;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$extraCallback;

    check-cast v2, Lo/calculateScrollDirectionForPosition;

    const-string/jumbo v3, "s_tDarkTwo_bgWhiteFour"

    invoke-static {v1, v3, v2}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 9075
    iget-object v1, v0, Lo/findNextViewToFocus;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 10096
    iget-object v2, v0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    const v3, 0x7f060220

    .line 9075
    invoke-static {v2, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9076
    iget-object v1, v0, Lo/findNextViewToFocus;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 11096
    iget-object v2, v0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    .line 9076
    invoke-static {v2, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 9078
    :cond_b
    iget-object v1, v0, Lo/findNextViewToFocus;->ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lo/calculateScrollDirectionForPosition$extraCallback;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$extraCallback;

    check-cast v2, Lo/calculateScrollDirectionForPosition;

    const-string/jumbo v3, "s_tWhiteFour_bgDarkTwo"

    invoke-static {v1, v3, v2}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 9079
    iget-object v1, v0, Lo/findNextViewToFocus;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 12096
    iget-object v2, v0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    const v3, 0x7f0600c6

    .line 9079
    invoke-static {v2, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9080
    iget-object v1, v0, Lo/findNextViewToFocus;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 13096
    iget-object v2, v0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    .line 9080
    invoke-static {v2, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    :goto_5
    invoke-static {v4}, Lo/findNextViewToFocus;->onPostMessage(Lo/processAdapterUpdatesAndSetAnimationFlags;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "win_details_card_land"

    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_6

    .line 2215
    :cond_c
    throw v3

    :cond_d
    :goto_6
    return-void
.end method
