.class public final Lo/getDecoratedLeft;
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001dH\u0002R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \t*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \t*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \t*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \t*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \t*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \t*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \t*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \t*\u0004\u0018\u00010\u00150\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n \t*\u0004\u0018\u00010\u00150\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/onboardAddCard/MCFCardViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "bottomBar",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "cardBackgroundView",
        "cardBankLogo",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "cardBankName",
        "Landroid/widget/TextView;",
        "cardBgPattern",
        "cardNameTv",
        "cardNumberTv",
        "cardPosisitonText",
        "cardTypeIv",
        "centerImage",
        "Landroid/widget/ImageView;",
        "nfcLogo",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "updateCard",
        "cardItem",
        "Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsListItem;",
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
.field private final ICustomTabsCallback:Lo/setSpeed;

.field private final ICustomTabsCallback$Stub:Landroid/view/View;

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

.field private final asInterface:Landroid/widget/TextView;

.field private final extraCallback:Landroid/widget/ImageView;

.field private final newSession:Landroid/widget/TextView;

.field private final onMessageChannelReady:Lo/setSpeed;

.field private final onNavigationEvent:Landroid/widget/ImageView;

.field private final onPostMessage:Lo/setSpeed;

.field private final onTransact:Landroid/view/View;

.field private final warmup:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 20010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0158

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardTypeIv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/getDecoratedLeft;->ICustomTabsCallback:Lo/setSpeed;

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->nfcLogo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/getDecoratedLeft;->extraCallback:Landroid/widget/ImageView;

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->centerImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/getDecoratedLeft;->onNavigationEvent:Landroid/widget/ImageView;

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardBgPattern:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/getDecoratedLeft;->onPostMessage:Lo/setSpeed;

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardBankLogo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/getDecoratedLeft;->onMessageChannelReady:Lo/setSpeed;

    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardBackgroundView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/getDecoratedLeft;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->bottomBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/getDecoratedLeft;->onTransact:Landroid/view/View;

    .line 34
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardNumberTv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/getDecoratedLeft;->asInterface:Landroid/widget/TextView;

    .line 35
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardNameTv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/getDecoratedLeft;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 36
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardBankName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/getDecoratedLeft;->newSession:Landroid/widget/TextView;

    .line 37
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->cardPosisitonText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/getDecoratedLeft;->warmup:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    instance-of v2, v1, Lo/getDecoratedRight;

    if-eqz v2, :cond_11

    .line 41
    check-cast v1, Lo/getDecoratedRight;

    .line 2034
    iget-object v2, v1, Lo/getDecoratedRight;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v1, :cond_11

    .line 3034
    iget v3, v1, Lo/getDecoratedRight;->ICustomTabsCallback:I

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    .line 4034
    iget v3, v1, Lo/getDecoratedRight;->onPostMessage:I

    const-string v6, "cardPosisitonText"

    if-le v3, v4, :cond_0

    .line 1052
    iget-object v3, v0, Lo/getDecoratedLeft;->warmup:Landroid/widget/TextView;

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v7, 0x42480000    # 50.0f

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 1054
    :cond_0
    iget-object v3, v0, Lo/getDecoratedLeft;->warmup:Landroid/widget/TextView;

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v7, 0x428c0000    # 70.0f

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1056
    :goto_0
    iget-object v3, v0, Lo/getDecoratedLeft;->warmup:Landroid/widget/TextView;

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5034
    iget v1, v1, Lo/getDecoratedRight;->onPostMessage:I

    add-int/2addr v1, v5

    .line 1056
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    :cond_1
    iget-object v6, v0, Lo/getDecoratedLeft;->ICustomTabsCallback:Lo/setSpeed;

    const-string v1, "cardTypeIv"

    invoke-static {v6, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getBrand_logo_url()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x36

    invoke-static/range {v6 .. v13}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 1060
    iget-object v1, v0, Lo/getDecoratedLeft;->extraCallback:Landroid/widget/ImageView;

    const-string v3, "nfcLogo"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getNfc_enabled()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1062
    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const-string v3, "amex"

    .line 5056
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_2
    const-string v3, "centerImage"

    const-string v7, "cardBgPattern"

    if-eqz v1, :cond_5

    .line 1063
    iget-object v1, v0, Lo/getDecoratedLeft;->onNavigationEvent:Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1064
    iget-object v1, v0, Lo/getDecoratedLeft;->onPostMessage:Lo/setSpeed;

    invoke-static {v1, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x3e6147ae    # 0.22f

    invoke-virtual {v1, v3}, Lo/setSpeed;->setAlpha(F)V

    goto :goto_3

    .line 1066
    :cond_5
    iget-object v1, v0, Lo/getDecoratedLeft;->onNavigationEvent:Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1067
    iget-object v1, v0, Lo/getDecoratedLeft;->onPostMessage:Lo/setSpeed;

    invoke-static {v1, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x3d851eb8    # 0.065f

    invoke-virtual {v1, v3}, Lo/setSpeed;->setAlpha(F)V

    .line 1069
    :goto_3
    iget-object v1, v0, Lo/getDecoratedLeft;->onMessageChannelReady:Lo/setSpeed;

    const-string v3, "cardBankLogo"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5116
    iget-object v1, v1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 5216
    iget-object v1, v1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v8, 0x0

    if-eqz v1, :cond_10

    check-cast v1, Lo/setMaxFrame;

    .line 1069
    check-cast v1, Lo/getComposition;

    const-string v9, "cardBankLogo.hierarchy"

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->ICustomTabsCallback$Stub()Lo/setFailureListener$extraCallback;

    move-result-object v9

    if-eqz v9, :cond_f

    const/4 v10, 0x2

    .line 7369
    invoke-virtual {v1, v10}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v1

    .line 7370
    instance-of v11, v1, Lo/fromAssets;

    if-eqz v11, :cond_6

    .line 7371
    check-cast v1, Lo/fromAssets;

    goto :goto_4

    .line 7373
    :cond_6
    sget-object v11, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v1, v11}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v1

    .line 8094
    :goto_4
    iget-object v11, v1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v11, v9, :cond_8

    if-eqz v11, :cond_7

    .line 9053
    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_5

    :cond_7
    const/4 v11, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v11, 0x1

    :goto_6
    if-nez v11, :cond_9

    .line 8098
    iput-object v9, v1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 8099
    iput-object v8, v1, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 8100
    invoke-virtual {v1}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 8101
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 1071
    :cond_9
    sget-object v1, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-static {}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->ICustomTabsCallback()Ljava/util/HashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer_code()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;

    if-eqz v1, :cond_d

    .line 1072
    iget-object v8, v1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->card_logo_url:Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 1073
    iget-object v11, v0, Lo/getDecoratedLeft;->onMessageChannelReady:Lo/setSpeed;

    invoke-static {v11, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, v1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->card_logo_url:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x36

    invoke-static/range {v11 .. v18}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    goto :goto_7

    .line 1075
    :cond_a
    iget-object v8, v0, Lo/getDecoratedLeft;->onMessageChannelReady:Lo/setSpeed;

    invoke-static {v8, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3e

    move-object/from16 v19, v8

    invoke-static/range {v19 .. v26}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 1077
    :goto_7
    iget-object v3, v1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->bgPattern:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 1078
    iget-object v3, v0, Lo/getDecoratedLeft;->onPostMessage:Lo/setSpeed;

    invoke-static {v3, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lo/setSpeed;->setVisibility(I)V

    .line 1079
    iget-object v11, v0, Lo/getDecoratedLeft;->onPostMessage:Lo/setSpeed;

    invoke-static {v11, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, v1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->bgPattern:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x36

    invoke-static/range {v11 .. v18}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    goto :goto_8

    .line 1081
    :cond_b
    iget-object v3, v0, Lo/getDecoratedLeft;->onPostMessage:Lo/setSpeed;

    invoke-static {v3, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lo/setSpeed;->setVisibility(I)V

    .line 1083
    :goto_8
    iget-object v3, v1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->bgAssetId:Ljava/lang/String;

    const/4 v12, 0x3

    const-string v13, "bottomBar"

    const-string v14, "cardBackgroundView"

    const/4 v15, 0x0

    const/high16 v7, 0x41400000    # 12.0f

    const-string v8, "Resources.getSystem()"

    if-eqz v3, :cond_c

    .line 1084
    iget-object v3, v0, Lo/getDecoratedLeft;->ICustomTabsCallback$Stub:Landroid/view/View;

    invoke-static {v3, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v14, v1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->bgAssetId:Ljava/lang/String;

    const-string v9, "it.bgAssetId"

    invoke-static {v14, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 10010
    invoke-static {v5, v7, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1c

    move-object/from16 v17, v3

    move-object/from16 v18, v14

    .line 1084
    invoke-static/range {v17 .. v23}, Lo/missCount;->ICustomTabsCallback(Landroid/view/View;Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 1085
    iget-object v3, v0, Lo/getDecoratedLeft;->onTransact:Landroid/view/View;

    invoke-static {v3, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->bgAssetId:Ljava/lang/String;

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v28, 0x0

    new-array v4, v4, [F

    aput v15, v4, v6

    aput v15, v4, v5

    aput v15, v4, v10

    aput v15, v4, v12

    .line 11009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 11010
    invoke-static {v5, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    const/4 v9, 0x4

    aput v6, v4, v9

    .line 12009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 12010
    invoke-static {v5, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    const/4 v9, 0x5

    aput v6, v4, v9

    .line 13009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 13010
    invoke-static {v5, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    const/4 v9, 0x6

    aput v6, v4, v9

    .line 14009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 14010
    invoke-static {v5, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/4 v6, 0x7

    aput v5, v4, v6

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1a

    move-object/from16 v26, v3

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    .line 1085
    invoke-static/range {v26 .. v32}, Lo/missCount;->ICustomTabsCallback(Landroid/view/View;Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_9

    .line 1087
    :cond_c
    iget-object v1, v0, Lo/getDecoratedLeft;->ICustomTabsCallback$Stub:Landroid/view/View;

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 15010
    invoke-static {v5, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1c

    const-string v18, ""

    move-object/from16 v17, v1

    .line 1087
    invoke-static/range {v17 .. v23}, Lo/missCount;->ICustomTabsCallback(Landroid/view/View;Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 1088
    iget-object v1, v0, Lo/getDecoratedLeft;->onTransact:Landroid/view/View;

    invoke-static {v1, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v28, 0x0

    new-array v3, v4, [F

    aput v15, v3, v6

    aput v15, v3, v5

    aput v15, v3, v10

    aput v15, v3, v12

    .line 16009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 16010
    invoke-static {v5, v7, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    const/4 v6, 0x4

    aput v4, v3, v6

    .line 17009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 17010
    invoke-static {v5, v7, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    const/4 v6, 0x5

    aput v4, v3, v6

    .line 18009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 18010
    invoke-static {v5, v7, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    const/4 v6, 0x6

    aput v4, v3, v6

    .line 19009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 19010
    invoke-static {v5, v7, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1a

    const-string v27, ""

    move-object/from16 v26, v1

    move-object/from16 v29, v3

    .line 1088
    invoke-static/range {v26 .. v32}, Lo/missCount;->ICustomTabsCallback(Landroid/view/View;Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 1091
    :cond_d
    :goto_9
    iget-object v1, v0, Lo/getDecoratedLeft;->asInterface:Landroid/widget/TextView;

    const-string v3, "cardNumberTv"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getAccount_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getBrand()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    iget-object v1, v0, Lo/getDecoratedLeft;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    const-string v3, "cardNameTv"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getCardholder_name()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    iget-object v1, v0, Lo/getDecoratedLeft;->newSession:Landroid/widget/TextView;

    const-string v3, "cardBankName"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getVariant_name()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_a

    :cond_e
    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    :goto_a
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 7215
    :cond_f
    throw v8

    .line 6215
    :cond_10
    throw v8

    :cond_11
    :goto_b
    return-void
.end method
