.class public final Lo/AsyncListDiffer$ListListener;
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
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000e*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u000e*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \u000e*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/link/adapter/CardLinkReasonHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "viewModel",
        "Lcom/dreamplug/fabrik/ui/control/link/CardLinkViewModel;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;Lcom/dreamplug/fabrik/ui/control/link/CardLinkViewModel;)V",
        "drawableChecked",
        "",
        "drawableUnchecked",
        "isSelected",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "kotlin.jvm.PlatformType",
        "parentLayout",
        "Landroid/view/View;",
        "text",
        "Landroid/widget/TextView;",
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

.field private final extraCallback:Lo/getCurrentList;

.field private final onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

.field private final onNavigationEvent:Landroid/view/View;

.field private final onPostMessage:Landroidx/appcompat/widget/AppCompatImageView;


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

    .line 2010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01d5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p2, p0, Lo/AsyncListDiffer$ListListener;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    iput-object p3, p0, Lo/AsyncListDiffer$ListListener;->extraCallback:Lo/getCurrentList;

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b0624

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/AsyncListDiffer$ListListener;->onNavigationEvent:Landroid/view/View;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b0879

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/AsyncListDiffer$ListListener;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b0496

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lo/AsyncListDiffer$ListListener;->onPostMessage:Landroidx/appcompat/widget/AppCompatImageView;

    const p2, 0x7f0803cf

    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static final synthetic extraCallback()I
    .locals 1

    const v0, 0x7f0803cf

    return v0
.end method

.method public static final synthetic extraCallback(Lo/AsyncListDiffer$ListListener;)Lo/hasGapsToFix$onMessageChannelReady;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/AsyncListDiffer$ListListener;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/AsyncListDiffer$ListListener;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/AsyncListDiffer$ListListener;->onPostMessage:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent()I
    .locals 1

    const v0, 0x7f0803ce

    return v0
.end method

.method public static final synthetic onNavigationEvent(Lo/AsyncListDiffer$ListListener;)Landroid/widget/TextView;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/AsyncListDiffer$ListListener;->ICustomTabsCallback:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 37
    instance-of v1, p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lo/AsyncListDiffer$ListListener;->ICustomTabsCallback:Landroid/widget/TextView;

    const-string/jumbo v2, "text"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->getText()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p0, Lo/AsyncListDiffer$ListListener;->ICustomTabsCallback:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->ICustomTabsService()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f06022d

    goto :goto_0

    :cond_0
    const v3, 0x7f0600b2

    :goto_0
    invoke-static {v2, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v1, p0, Lo/AsyncListDiffer$ListListener;->extraCallback:Lo/getCurrentList;

    .line 1027
    iget-object v1, v1, Lo/getCurrentList;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 41
    new-instance v2, Lo/AsyncListDiffer$ListListener$onMessageChannelReady;

    invoke-direct {v2, p0, v0, p1}, Lo/AsyncListDiffer$ListListener$onMessageChannelReady;-><init>(Lo/AsyncListDiffer$ListListener;Lo/toDebugString$onMessageChannelReady;Lo/StaggeredGridLayoutManager;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    .line 46
    iget-object v1, p0, Lo/AsyncListDiffer$ListListener;->onNavigationEvent:Landroid/view/View;

    const-string v2, "parentLayout"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/AsyncListDiffer$ListListener$onPostMessage;

    invoke-direct {v2, p0, v0, p1}, Lo/AsyncListDiffer$ListListener$onPostMessage;-><init>(Lo/AsyncListDiffer$ListListener;Lo/toDebugString$onMessageChannelReady;Lo/StaggeredGridLayoutManager;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    :cond_1
    return-void
.end method
