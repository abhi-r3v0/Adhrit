.class public final Lo/AsyncListDiffer;
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
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082D\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \u000b*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \u000b*\u0004\u0018\u00010\u00150\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000fX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000fX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/link/adapter/CardLinkCandidateHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "viewModel",
        "Lcom/dreamplug/fabrik/ui/control/link/CardLinkViewModel;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;Lcom/dreamplug/fabrik/ui/control/link/CardLinkViewModel;)V",
        "bankLogo",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "kotlin.jvm.PlatformType",
        "cardNumber",
        "Landroid/widget/TextView;",
        "drawableChecked",
        "",
        "drawableUnchecked",
        "isSelected",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "issuerName",
        "parentLayout",
        "Landroid/view/View;",
        "textColorChecked",
        "textColorUnchecked",
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
.field private final ICustomTabsCallback:Landroid/widget/TextView;

.field private final asInterface:Lo/hasGapsToFix$onMessageChannelReady;

.field private final extraCallback:Landroid/view/View;

.field private final onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

.field private final onNavigationEvent:Landroid/widget/TextView;

.field private final onPostMessage:Lo/setSpeed;

.field private final onTransact:Lo/getCurrentList;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/getCurrentList;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemClickListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewModel"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 6010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01ce

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p2, p0, Lo/AsyncListDiffer;->asInterface:Lo/hasGapsToFix$onMessageChannelReady;

    iput-object p3, p0, Lo/AsyncListDiffer;->onTransact:Lo/getCurrentList;

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b0624

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/AsyncListDiffer;->extraCallback:Landroid/view/View;

    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b00ca

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/AsyncListDiffer;->onPostMessage:Lo/setSpeed;

    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b0498

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/AsyncListDiffer;->onNavigationEvent:Landroid/widget/TextView;

    .line 34
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b016c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/AsyncListDiffer;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 35
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b0496

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lo/AsyncListDiffer;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    const p2, 0x7f0803cf

    .line 43
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object p1, p0, Lo/AsyncListDiffer;->onNavigationEvent:Landroid/widget/TextView;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p3, "itemView"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060232

    invoke-static {p2, v0}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object p1, p0, Lo/AsyncListDiffer;->ICustomTabsCallback:Landroid/widget/TextView;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback()I
    .locals 1

    const v0, 0x7f08030c

    return v0
.end method

.method public static final synthetic ICustomTabsCallback(Lo/AsyncListDiffer;)Landroid/widget/TextView;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/AsyncListDiffer;->ICustomTabsCallback:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic extraCallback()I
    .locals 1

    const v0, 0x7f060232

    return v0
.end method

.method public static final synthetic extraCallback(Lo/AsyncListDiffer;)Lo/hasGapsToFix$onMessageChannelReady;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/AsyncListDiffer;->asInterface:Lo/hasGapsToFix$onMessageChannelReady;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady()I
    .locals 1

    const v0, 0x7f06022d

    return v0
.end method

.method public static final synthetic onNavigationEvent()I
    .locals 1

    const v0, 0x7f0803cf

    return v0
.end method

.method public static final synthetic onNavigationEvent(Lo/AsyncListDiffer;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/AsyncListDiffer;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/AsyncListDiffer;)Landroid/widget/TextView;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/AsyncListDiffer;->onNavigationEvent:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v0, :cond_7

    .line 50
    iget-object v0, p0, Lo/AsyncListDiffer;->onNavigationEvent:Landroid/widget/TextView;

    const-string v1, "issuerName"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lo/AsyncListDiffer;->ICustomTabsCallback:Landroid/widget/TextView;

    const-string v2, "cardNumber"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getAccount_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lo/AsyncListDiffer;->onTransact:Lo/getCurrentList;

    .line 1026
    iget-object v0, v0, Lo/getCurrentList;->onTransact:Lo/setActive;

    .line 53
    new-instance v2, Lo/AsyncListDiffer$onPostMessage;

    invoke-direct {v2, p0, p1}, Lo/AsyncListDiffer$onPostMessage;-><init>(Lo/AsyncListDiffer;Lo/StaggeredGridLayoutManager;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    .line 58
    iget-object v0, p0, Lo/AsyncListDiffer;->extraCallback:Landroid/view/View;

    const-string v2, "parentLayout"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/AsyncListDiffer$extraCallback;

    invoke-direct {v2, p0, p1}, Lo/AsyncListDiffer$extraCallback;-><init>(Lo/AsyncListDiffer;Lo/StaggeredGridLayoutManager;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v0, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 61
    sget-object p1, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer_code()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 62
    iget-object p1, p0, Lo/AsyncListDiffer;->onPostMessage:Lo/setSpeed;

    const-string v0, "bankLogo"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object p1, p1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object p1, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    check-cast p1, Lo/setMaxFrame;

    .line 62
    check-cast p1, Lo/getComposition;

    const-string v3, "bankLogo.hierarchy"

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setFailureListener$extraCallback;->asInterface:Lo/setFailureListener$extraCallback;

    if-eqz v3, :cond_5

    const/4 v4, 0x2

    .line 3369
    invoke-virtual {p1, v4}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object p1

    .line 3370
    instance-of v4, p1, Lo/fromAssets;

    if-eqz v4, :cond_1

    .line 3371
    check-cast p1, Lo/fromAssets;

    goto :goto_0

    .line 3373
    :cond_1
    sget-object v4, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {p1, v4}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object p1

    .line 4094
    :goto_0
    iget-object v4, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v4, v3, :cond_3

    if-eqz v4, :cond_2

    .line 5053
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_4

    .line 4098
    iput-object v3, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 4099
    iput-object v2, p1, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 4100
    invoke-virtual {p1}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 4101
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 63
    :cond_4
    iget-object p1, p0, Lo/AsyncListDiffer;->onPostMessage:Lo/setSpeed;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    return-void

    .line 3215
    :cond_5
    throw v2

    .line 2215
    :cond_6
    throw v2

    :cond_7
    return-void
.end method
