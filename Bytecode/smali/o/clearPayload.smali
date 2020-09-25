.class public final Lo/clearPayload;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/upi/BankListViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "bankName",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "logo",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "parentLayout",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/onChildrenLoaded;

.field private final onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

.field private final onPostMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget v0, Lo/getItemDelegate$onNavigationEvent;->item_upi_bank:I

    const-string v1, "$this$inflate"

    .line 1010
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 42
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getItemDelegate$onMessageChannelReady;->bank_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/clearPayload;->onPostMessage:Landroid/widget/TextView;

    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getItemDelegate$onMessageChannelReady;->bank_logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lo/clearPayload;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    .line 44
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getItemDelegate$onMessageChannelReady;->parent_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/clearPayload;->ICustomTabsCallback:Lo/onChildrenLoaded;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    instance-of v0, p1, Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lo/clearPayload;->onPostMessage:Landroid/widget/TextView;

    const-string v1, "bankName"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;

    invoke-virtual {p1}, Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lo/clearPayload;->onPostMessage:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->onNavigationEvent(Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;->getLogo_url()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/AppCompatImageButton;->onPostMessage(Ljava/lang/String;)Lo/setTextClassifier;

    move-result-object p1

    .line 50
    new-instance v0, Lo/setHorizontalGravity;

    invoke-direct {v0}, Lo/setHorizontalGravity;-><init>()V

    sget v1, Lo/getItemDelegate$ICustomTabsCallback;->ic_card_bank:I

    invoke-virtual {v0, v1}, Lo/measureChildBeforeLayout;->onNavigationEvent(I)Lo/measureChildBeforeLayout;

    move-result-object v0

    check-cast v0, Lo/setHorizontalGravity;

    sget v1, Lo/getItemDelegate$ICustomTabsCallback;->ic_card_bank:I

    invoke-virtual {v0, v1}, Lo/measureChildBeforeLayout;->onPostMessage(I)Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/setTextClassifier;->ICustomTabsCallback(Lo/measureChildBeforeLayout;)Lo/setTextClassifier;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lo/clearPayload;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lo/setTextClassifier;->onMessageChannelReady(Landroid/widget/ImageView;)Lo/getPromptPosition;

    .line 52
    iget-object p1, p0, Lo/clearPayload;->ICustomTabsCallback:Lo/onChildrenLoaded;

    const-string v0, "parentLayout"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/clearPayload$extraCallback;

    invoke-direct {v0, p0}, Lo/clearPayload$extraCallback;-><init>(Lo/clearPayload;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    :cond_0
    return-void
.end method
