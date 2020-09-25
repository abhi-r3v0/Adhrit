.class public final Lo/isVectorDrawable;
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cred/pay/ui/instrumentlisting/adapter/InstrumentViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "alert",
        "Lcom/dreamplug/widget/CredTextView;",
        "kotlin.jvm.PlatformType",
        "headerBanner",
        "Lcom/dreamplug/widget/RoundedFrameLayout;",
        "instrumentLogo",
        "Lcom/cred/pay/ui/views/CredPaymentImageView;",
        "instrumentTypeLogo",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "ivClickIcon",
        "ivRadioButton",
        "tvBankName",
        "tvCardNumber",
        "tvSetMpin",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
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
.field private final ICustomTabsCallback:Lo/getSuggestionCommitIconResId;

.field private final ICustomTabsCallback$Stub:Lo/createFullSpanItemFromEnd;

.field private final ICustomTabsService:Lo/createFullSpanItemFromEnd;

.field private final asInterface:Landroidx/appcompat/widget/AppCompatImageView;

.field private final extraCallback:Lo/createFullSpanItemFromEnd;

.field private final getInterfaceDescriptor:Lo/hasGapsToFix$onMessageChannelReady;

.field private final onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

.field private final onNavigationEvent:Lo/createFullSpanItemFromEnd;

.field private final onPostMessage:Landroidx/appcompat/widget/AppCompatImageView;

.field private final onTransact:Lo/getNextSpan;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget v0, Lo/onItemHoverEnter$onTransact;->item_payment_instrument:I

    const-string v1, "$this$inflate"

    .line 26010
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p2, p0, Lo/isVectorDrawable;->getInterfaceDescriptor:Lo/hasGapsToFix$onMessageChannelReady;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->instrumentLogo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getSuggestionCommitIconResId;

    iput-object p1, p0, Lo/isVectorDrawable;->ICustomTabsCallback:Lo/getSuggestionCommitIconResId;

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->tvBankName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/isVectorDrawable;->extraCallback:Lo/createFullSpanItemFromEnd;

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->tvCardNumber:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/isVectorDrawable;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->instrumentTypeLogo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lo/isVectorDrawable;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->ivClickIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lo/isVectorDrawable;->onPostMessage:Landroidx/appcompat/widget/AppCompatImageView;

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->headerBanner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getNextSpan;

    iput-object p1, p0, Lo/isVectorDrawable;->onTransact:Lo/getNextSpan;

    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->ivRadioButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lo/isVectorDrawable;->asInterface:Landroidx/appcompat/widget/AppCompatImageView;

    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->tvSetMpin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/isVectorDrawable;->ICustomTabsCallback$Stub:Lo/createFullSpanItemFromEnd;

    .line 34
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->alert:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/isVectorDrawable;->ICustomTabsService:Lo/createFullSpanItemFromEnd;

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/isVectorDrawable;)Lo/hasGapsToFix$onMessageChannelReady;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/isVectorDrawable;->getInterfaceDescriptor:Lo/hasGapsToFix$onMessageChannelReady;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    instance-of v2, v1, Lo/getTintMode;

    if-eqz v2, :cond_12

    .line 39
    move-object v2, v1

    check-cast v2, Lo/getTintMode;

    .line 1014
    iget-object v3, v2, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    .line 40
    iget-object v4, v0, Lo/isVectorDrawable;->onTransact:Lo/getNextSpan;

    const-string v5, "headerBanner"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    .line 2008
    iget-object v5, v3, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    .line 40
    invoke-static {v4, v5}, Lo/extraCallback;->onPostMessage(Landroid/view/View;Lcom/cred/pay/repository/models/Status;)V

    .line 3008
    iget-object v4, v3, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 3044
    iget-object v4, v4, Lcom/cred/pay/repository/models/Status;->onNavigationEvent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    const-string v6, "alert"

    const-string v7, "$this$visible"

    const/4 v8, 0x0

    const-string v9, "$this$gone"

    const/16 v10, 0x8

    if-eqz v4, :cond_5

    .line 4008
    iget-object v4, v3, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    if-eqz v4, :cond_1

    .line 4047
    iget-object v4, v4, Lcom/cred/pay/repository/models/Status;->ICustomTabsCallback:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_5

    .line 43
    iget-object v4, v0, Lo/isVectorDrawable;->ICustomTabsService:Lo/createFullSpanItemFromEnd;

    invoke-static {v4, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    invoke-static {v4, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5009
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v4, v0, Lo/isVectorDrawable;->ICustomTabsService:Lo/createFullSpanItemFromEnd;

    invoke-static {v4, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6008
    iget-object v6, v3, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    if-eqz v6, :cond_2

    .line 6044
    iget-object v6, v6, Lcom/cred/pay/repository/models/Status;->onNavigationEvent:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v6, v5

    .line 44
    :goto_2
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v4, v0, Lo/isVectorDrawable;->ICustomTabsService:Lo/createFullSpanItemFromEnd;

    check-cast v4, Landroid/view/View;

    .line 7008
    iget-object v6, v3, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    if-eqz v6, :cond_3

    .line 7047
    iget-object v6, v6, Lcom/cred/pay/repository/models/Status;->ICustomTabsCallback:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object v6, v5

    :goto_3
    if-nez v6, :cond_4

    .line 47
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 45
    invoke-static {v4, v6}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_4

    .line 49
    :cond_5
    iget-object v4, v0, Lo/isVectorDrawable;->ICustomTabsService:Lo/createFullSpanItemFromEnd;

    invoke-static {v4, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    invoke-static {v4, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8017
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 9008
    :goto_4
    iget-object v4, v3, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    const-string v6, "instrumentLogo"

    const-string v11, "ivRadioButton"

    const-string v12, "ivClickIcon"

    const-string v13, "itemView"

    const-string/jumbo v14, "tvCardNumber"

    const-string/jumbo v15, "tvBankName"

    const-string v8, "instrumentTypeLogo"

    if-eqz v4, :cond_7

    .line 9037
    iget-boolean v4, v4, Lcom/cred/pay/repository/models/Status;->extraCallback:Z

    if-eqz v4, :cond_6

    goto :goto_5

    .line 78
    :cond_6
    iget-object v2, v0, Lo/isVectorDrawable;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v2, v4}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 79
    iget-object v2, v0, Lo/isVectorDrawable;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 80
    iget-object v2, v0, Lo/isVectorDrawable;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setAlpha(F)V

    .line 81
    iget-object v2, v0, Lo/isVectorDrawable;->ICustomTabsCallback:Lo/getSuggestionCommitIconResId;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lo/getSuggestionCommitIconResId;->setAlpha(F)V

    .line 82
    iget-object v2, v0, Lo/isVectorDrawable;->onPostMessage:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13017
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v2, v0, Lo/isVectorDrawable;->asInterface:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14017
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    goto/16 :goto_7

    .line 53
    :cond_7
    :goto_5
    iget-object v4, v0, Lo/isVectorDrawable;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v4, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v4, v10}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 54
    iget-object v4, v0, Lo/isVectorDrawable;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v4, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 55
    iget-object v4, v0, Lo/isVectorDrawable;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v4, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroidx/appcompat/widget/AppCompatImageView;->setAlpha(F)V

    .line 56
    iget-object v4, v0, Lo/isVectorDrawable;->ICustomTabsCallback:Lo/getSuggestionCommitIconResId;

    invoke-static {v4, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lo/getSuggestionCommitIconResId;->setAlpha(F)V

    .line 10015
    iget-boolean v4, v2, Lo/getTintMode;->onMessageChannelReady:Z

    if-eqz v4, :cond_9

    .line 10016
    iget-boolean v2, v2, Lo/getTintMode;->onNavigationEvent:Z

    if-eqz v2, :cond_8

    .line 59
    iget-object v2, v0, Lo/isVectorDrawable;->asInterface:Landroidx/appcompat/widget/AppCompatImageView;

    sget v4, Lo/onItemHoverEnter$onMessageChannelReady;->circle_light_peach_filled:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    iget-object v2, v0, Lo/isVectorDrawable;->asInterface:Landroidx/appcompat/widget/AppCompatImageView;

    sget v4, Lo/onItemHoverEnter$onMessageChannelReady;->ic_black_tick:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 62
    :cond_8
    iget-object v2, v0, Lo/isVectorDrawable;->asInterface:Landroidx/appcompat/widget/AppCompatImageView;

    sget v4, Lo/onItemHoverEnter$onMessageChannelReady;->circle_light_peach:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    iget-object v2, v0, Lo/isVectorDrawable;->asInterface:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :goto_6
    iget-object v2, v0, Lo/isVectorDrawable;->asInterface:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 11009
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v2, v0, Lo/isVectorDrawable;->onPostMessage:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    .line 11017
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lo/isVectorDrawable$onPostMessage;

    invoke-direct {v4, v0, v1}, Lo/isVectorDrawable$onPostMessage;-><init>(Lo/isVectorDrawable;Lo/StaggeredGridLayoutManager;)V

    check-cast v4, Lo/onDisconnectSetValue;

    invoke-static {v2, v4}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    goto :goto_7

    .line 71
    :cond_9
    iget-object v2, v0, Lo/isVectorDrawable;->asInterface:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    .line 12017
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v2, v0, Lo/isVectorDrawable;->onPostMessage:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 13009
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lo/isVectorDrawable$onMessageChannelReady;

    invoke-direct {v4, v0, v1}, Lo/isVectorDrawable$onMessageChannelReady;-><init>(Lo/isVectorDrawable;Lo/StaggeredGridLayoutManager;)V

    check-cast v4, Lo/onDisconnectSetValue;

    invoke-static {v2, v4}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 87
    :goto_7
    iget-object v2, v0, Lo/isVectorDrawable;->ICustomTabsCallback$Stub:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v4, "tvSetMpin"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x8

    .line 15017
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v2, v0, Lo/isVectorDrawable;->ICustomTabsCallback:Lo/getSuggestionCommitIconResId;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v6, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v10, "itemView.context"

    invoke-static {v6, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2, v6}, Lo/extraCallback;->ICustomTabsCallback(Lo/isInputMethodNotNeeded;Lo/getSuggestionCommitIconResId;Landroid/content/Context;)V

    .line 90
    instance-of v2, v3, Lcom/cred/pay/repository/models/CardInstrument;

    if-eqz v2, :cond_b

    .line 91
    iget-object v1, v0, Lo/isVectorDrawable;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 16009
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v1, v0, Lo/isVectorDrawable;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    check-cast v2, Lcom/cred/pay/repository/models/CardInstrument;

    invoke-virtual {v2}, Lcom/cred/pay/repository/models/CardInstrument;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, v0, Lo/isVectorDrawable;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lo/isInputMethodNotNeeded;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget-object v1, Lo/setEpicenterBounds;->onTransact:Lo/setEpicenterBounds$extraCallback;

    .line 16098
    iget-object v1, v2, Lcom/cred/pay/repository/models/CardInstrument;->onNavigationEvent:Ljava/lang/String;

    .line 94
    invoke-static {v1}, Lo/setEpicenterBounds$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/setEpicenterBounds;

    move-result-object v1

    .line 95
    iget-object v2, v0, Lo/isVectorDrawable;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    instance-of v3, v1, Lo/setEpicenterBounds$onTransact;

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a

    const/4 v8, 0x0

    goto :goto_8

    :cond_a
    const/16 v8, 0x8

    .line 134
    :goto_8
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v2, v0, Lo/isVectorDrawable;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    .line 17008
    iget v1, v1, Lo/setEpicenterBounds;->onMessageChannelReady:I

    .line 96
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 98
    :cond_b
    instance-of v2, v3, Lcom/cred/pay/repository/models/NetBankingInstrument;

    if-eqz v2, :cond_c

    .line 99
    iget-object v1, v0, Lo/isVectorDrawable;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 17017
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v1, v0, Lo/isVectorDrawable;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lo/isInputMethodNotNeeded;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, v0, Lo/isVectorDrawable;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v2, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->netbanking:I

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 103
    :cond_c
    instance-of v2, v3, Lcom/cred/pay/repository/models/UpiAppsInstrument;

    if-eqz v2, :cond_d

    .line 104
    iget-object v1, v0, Lo/isVectorDrawable;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 18017
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v1, v0, Lo/isVectorDrawable;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lo/isInputMethodNotNeeded;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, v0, Lo/isVectorDrawable;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v2, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->upi_apps:I

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 108
    :cond_d
    instance-of v2, v3, Lcom/cred/pay/repository/models/CredUpiInstrument;

    if-eqz v2, :cond_11

    .line 109
    iget-object v2, v0, Lo/isVectorDrawable;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 19009
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v2, v0, Lo/isVectorDrawable;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v3

    check-cast v6, Lcom/cred/pay/repository/models/CredUpiInstrument;

    .line 19337
    iget-object v8, v6, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v8, :cond_e

    .line 20048
    iget-object v8, v8, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v8, :cond_e

    .line 19337
    invoke-virtual {v8}, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_f

    :cond_e
    const-string v8, ""

    .line 110
    :cond_f
    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, v0, Lo/isVectorDrawable;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lo/isInputMethodNotNeeded;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, v0, Lo/isVectorDrawable;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    sget v3, Lo/onItemHoverEnter$onMessageChannelReady;->ic_upi_full:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20269
    iget-object v2, v6, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-nez v2, :cond_10

    .line 113
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 21048
    :cond_10
    iget-object v2, v2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 21069
    iget-object v2, v2, Lcom/cred/pay/repository/models/Account;->onTransact:Ljava/lang/String;

    const-string v3, "false"

    .line 113
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 114
    iget-object v2, v0, Lo/isVectorDrawable;->ICustomTabsCallback$Stub:Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 22009
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v2, v0, Lo/isVectorDrawable;->onPostMessage:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 22017
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v2, v0, Lo/isVectorDrawable;->asInterface:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23017
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 118
    iget-object v2, v0, Lo/isVectorDrawable;->ICustomTabsCallback$Stub:Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v3, Lo/isVectorDrawable$ICustomTabsCallback;

    invoke-direct {v3, v0, v1}, Lo/isVectorDrawable$ICustomTabsCallback;-><init>(Lo/isVectorDrawable;Lo/StaggeredGridLayoutManager;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v2, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 123
    :cond_11
    instance-of v1, v3, Lcom/cred/pay/repository/models/ListInstrument;

    if-eqz v1, :cond_12

    .line 124
    iget-object v1, v0, Lo/isVectorDrawable;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 24017
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v1, v0, Lo/isVectorDrawable;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/cred/pay/repository/models/ListInstrument;

    .line 24347
    iget-object v2, v3, Lcom/cred/pay/repository/models/ListInstrument;->onPostMessage:Ljava/lang/String;

    .line 125
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, v0, Lo/isVectorDrawable;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25345
    iget-object v2, v3, Lcom/cred/pay/repository/models/ListInstrument;->onMessageChannelReady:Ljava/lang/String;

    .line 126
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method
