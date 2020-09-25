.class public final Lo/onLoadInBackground;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onLoadInBackground$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u001cB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u001e\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00182\u0006\u0010\u0015\u001a\u00020\u001bH\u0002R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \t*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \t*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/CredCurrencySuggestedRewardHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "checkNow",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "rewardDesc",
        "rewardImg",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "rewardSectionCl",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "rewardTitle",
        "rewardTxt",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "commonEventParams",
        "",
        "",
        "",
        "Lcom/dreamplug/fabrik/ui/control/CredCurrencySuggestedRewardHolder$CredCurrencySuggestedRewardModelItem;",
        "CredCurrencySuggestedRewardModelItem",
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

.field private final extraCallback:Lo/setSpeed;

.field private final onMessageChannelReady:Landroid/widget/TextView;

.field private final onNavigationEvent:Lo/onChildrenLoaded;

.field private final onPostMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 10

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 9010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0133

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b06ba

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b06f6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/onLoadInBackground;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b06e6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/onLoadInBackground;->onPostMessage:Landroid/widget/TextView;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b06ea

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/onLoadInBackground;->extraCallback:Lo/setSpeed;

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b01ab

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/onLoadInBackground;->onMessageChannelReady:Landroid/widget/TextView;

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b06f0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/onLoadInBackground;->onNavigationEvent:Lo/onChildrenLoaded;

    const-string/jumbo p2, "rewardSectionCl"

    .line 31
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lo/isBound;

    .line 10009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41a80000    # 21.0f

    .line 10010
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xfe

    const/4 v9, 0x0

    move-object v0, p2

    .line 31
    invoke-direct/range {v0 .. v9}, Lo/isBound;-><init>(FIZZZZFIB)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lo/onChildrenLoaded;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/onLoadInBackground$onPostMessage;)Ljava/util/Map;
    .locals 0

    .line 22
    invoke-static {p0}, Lo/onLoadInBackground;->onNavigationEvent(Lo/onLoadInBackground$onPostMessage;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(Lo/onLoadInBackground$onPostMessage;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onLoadInBackground$onPostMessage;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [Lo/addWrite;

    .line 4043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "source"

    const-string v4, "remote_control"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4055
    iget-object v2, p0, Lo/onLoadInBackground$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;

    .line 5000
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->extraCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeItemDecoration;

    .line 5396
    iget-object v2, v2, Lo/removeItemDecoration;->onNavigationEvent:Ljava/lang/String;

    .line 6043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "reward_ID"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 6055
    iget-object p0, p0, Lo/onLoadInBackground$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;

    .line 7000
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->extraCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/removeItemDecoration;

    .line 7397
    iget-object p0, p0, Lo/removeItemDecoration;->ICustomTabsCallback:Ljava/lang/String;

    .line 8043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "usage_id"

    invoke-direct {v2, v3, p0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x2

    aput-object v2, v1, p0

    const-string p0, "pairs"

    .line 48
    invoke-static {v1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8088
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p0, Ljava/util/Map;

    invoke-static {p0, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 11

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    instance-of v0, p1, Lo/onLoadInBackground$onPostMessage;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lo/onLoadInBackground;->ICustomTabsCallback:Landroid/widget/TextView;

    const-string/jumbo v1, "rewardTitle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lo/onLoadInBackground$onPostMessage;

    .line 1055
    iget-object v2, v1, Lo/onLoadInBackground$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;

    .line 1320
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->onRelationshipValidationResult:Ljava/lang/String;

    .line 36
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lo/onLoadInBackground;->onPostMessage:Landroid/widget/TextView;

    const-string/jumbo v2, "rewardDesc"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2055
    iget-object v2, v1, Lo/onLoadInBackground$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;

    .line 2322
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->asBinder:Ljava/lang/String;

    .line 37
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v3, p0, Lo/onLoadInBackground;->extraCallback:Lo/setSpeed;

    const-string/jumbo v0, "rewardImg"

    invoke-static {v3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3055
    iget-object v0, v1, Lo/onLoadInBackground$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;

    .line 3318
    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->onMessageChannelReady:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    .line 38
    invoke-static/range {v3 .. v10}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 39
    iget-object v0, p0, Lo/onLoadInBackground;->onMessageChannelReady:Landroid/widget/TextView;

    const-string v2, "checkNow"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v2, Lo/onLoadInBackground$extraCallback;

    invoke-direct {v2, p0, p1}, Lo/onLoadInBackground$extraCallback;-><init>(Lo/onLoadInBackground;Lo/StaggeredGridLayoutManager;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v0, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 43
    invoke-static {v1}, Lo/onLoadInBackground;->onNavigationEvent(Lo/onLoadInBackground$onPostMessage;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "recommended_reward_shown"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_0
    return-void
.end method
