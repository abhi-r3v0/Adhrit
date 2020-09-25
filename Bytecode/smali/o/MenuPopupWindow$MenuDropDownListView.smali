.class public final Lo/MenuPopupWindow$MenuDropDownListView;
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
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\rH\u0002R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/cred/pay/ui/bankselection/BankListViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "bankName",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "headerBanner",
        "Lcom/dreamplug/widget/RoundedFrameLayout;",
        "logo",
        "Lcom/cred/pay/ui/views/CredPaymentImageView;",
        "parentLayout",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "setImage",
        "packageName",
        "",
        "imageVIew",
        "credpayui_release"
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

.field private final extraCallback:Lo/getNextSpan;

.field private final onMessageChannelReady:Lo/getSuggestionCommitIconResId;

.field private final onNavigationEvent:Lo/onChildrenLoaded;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget v0, Lo/onItemHoverEnter$onTransact;->item_pay_ui_bank:I

    const-string v1, "$this$inflate"

    .line 5010
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 47
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->bank_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/MenuPopupWindow$MenuDropDownListView;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 48
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->bank_logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getSuggestionCommitIconResId;

    iput-object p1, p0, Lo/MenuPopupWindow$MenuDropDownListView;->onMessageChannelReady:Lo/getSuggestionCommitIconResId;

    .line 49
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->parent_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/MenuPopupWindow$MenuDropDownListView;->onNavigationEvent:Lo/onChildrenLoaded;

    .line 50
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->headerBanner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getNextSpan;

    iput-object p1, p0, Lo/MenuPopupWindow$MenuDropDownListView;->extraCallback:Lo/getNextSpan;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    instance-of v0, p1, Lo/setHoverListener$extraCallback;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lo/MenuPopupWindow$MenuDropDownListView;->ICustomTabsCallback:Landroid/widget/TextView;

    const-string v1, "bankName"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/setHoverListener$extraCallback;

    .line 1243
    iget-object v2, p1, Lo/setHoverListener$extraCallback;->onNavigationEvent:Ljava/lang/String;

    .line 54
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1246
    iget-boolean v0, p1, Lo/setHoverListener$extraCallback;->ICustomTabsCallback:Z

    const-string v2, "itemView"

    const-string v3, "logo"

    if-eqz v0, :cond_0

    .line 2244
    iget-object v0, p1, Lo/setHoverListener$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 56
    iget-object v4, p0, Lo/MenuPopupWindow$MenuDropDownListView;->onMessageChannelReady:Lo/getSuggestionCommitIconResId;

    invoke-static {v4, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3083
    :try_start_0
    sget-object v5, Lo/SearchView;->onPostMessage:Lo/SearchView;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v5, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v5}, Lo/SearchView;->onNavigationEvent(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3085
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    :goto_0
    iget-object v0, p0, Lo/MenuPopupWindow$MenuDropDownListView;->onMessageChannelReady:Lo/getSuggestionCommitIconResId;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lo/onItemHoverEnter$extraCallback;->dp_10:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 90
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 59
    :cond_0
    iget-object v0, p0, Lo/MenuPopupWindow$MenuDropDownListView;->onMessageChannelReady:Lo/getSuggestionCommitIconResId;

    .line 3245
    iget-object v4, p1, Lo/setHoverListener$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 59
    sget v5, Lo/onItemHoverEnter$onMessageChannelReady;->ic_card_bank:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lo/getSuggestionCommitIconResId;->onPostMessage(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    iget-object v0, p0, Lo/MenuPopupWindow$MenuDropDownListView;->onMessageChannelReady:Lo/getSuggestionCommitIconResId;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lo/onItemHoverEnter$extraCallback;->dp_12:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 92
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 3247
    :goto_1
    iget-object v0, p1, Lo/setHoverListener$extraCallback;->extraCallback:Lcom/cred/pay/repository/models/Status;

    const-string v2, "parentLayout"

    if-eqz v0, :cond_1

    .line 4037
    iget-boolean v0, v0, Lcom/cred/pay/repository/models/Status;->extraCallback:Z

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lo/MenuPopupWindow$MenuDropDownListView;->onMessageChannelReady:Lo/getSuggestionCommitIconResId;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Lo/getSuggestionCommitIconResId;->setAlpha(F)V

    .line 65
    iget-object v0, p0, Lo/MenuPopupWindow$MenuDropDownListView;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 66
    iget-object v0, p0, Lo/MenuPopupWindow$MenuDropDownListView;->onNavigationEvent:Lo/onChildrenLoaded;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    goto :goto_2

    .line 68
    :cond_1
    iget-object v0, p0, Lo/MenuPopupWindow$MenuDropDownListView;->onMessageChannelReady:Lo/getSuggestionCommitIconResId;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lo/getSuggestionCommitIconResId;->setAlpha(F)V

    .line 69
    iget-object v0, p0, Lo/MenuPopupWindow$MenuDropDownListView;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 70
    iget-object v0, p0, Lo/MenuPopupWindow$MenuDropDownListView;->onNavigationEvent:Lo/onChildrenLoaded;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/MenuPopupWindow$MenuDropDownListView$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/MenuPopupWindow$MenuDropDownListView$onNavigationEvent;-><init>(Lo/MenuPopupWindow$MenuDropDownListView;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 75
    :goto_2
    iget-object v0, p0, Lo/MenuPopupWindow$MenuDropDownListView;->extraCallback:Lo/getNextSpan;

    const-string v1, "headerBanner"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 4247
    iget-object p1, p1, Lo/setHoverListener$extraCallback;->extraCallback:Lcom/cred/pay/repository/models/Status;

    .line 75
    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Landroid/view/View;Lcom/cred/pay/repository/models/Status;)V

    :cond_2
    return-void
.end method
