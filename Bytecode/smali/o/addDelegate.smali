.class public final Lo/addDelegate;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \t*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \t*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/cred/pay/ui/instrumentlisting/adapter/InstrumentHeaderViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "actionLayout",
        "Landroid/widget/FrameLayout;",
        "kotlin.jvm.PlatformType",
        "headerBanner",
        "Lcom/dreamplug/widget/RoundedFrameLayout;",
        "ivPlus",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "ivRightDrawable",
        "titleIcon",
        "tvActionText",
        "Lcom/dreamplug/widget/CredTextView;",
        "tvHeader",
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
.field private final ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

.field private final ICustomTabsCallback$Stub:Lo/getNextSpan;

.field private final asInterface:Landroidx/appcompat/widget/AppCompatImageView;

.field private final extraCallback:Landroidx/appcompat/widget/AppCompatImageView;

.field private final onMessageChannelReady:Landroid/widget/FrameLayout;

.field private final onNavigationEvent:Landroidx/appcompat/widget/AppCompatImageView;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;

.field private final onTransact:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget v0, Lo/onItemHoverEnter$onTransact;->item_payment_instrument_header:I

    const-string v1, "$this$inflate"

    .line 9010
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p2, p0, Lo/addDelegate;->onTransact:Lo/hasGapsToFix$onMessageChannelReady;

    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->tvHeader:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/addDelegate;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 21
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->actionLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lo/addDelegate;->onMessageChannelReady:Landroid/widget/FrameLayout;

    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->tvActionText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/addDelegate;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->ivPlus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lo/addDelegate;->onNavigationEvent:Landroidx/appcompat/widget/AppCompatImageView;

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->ivRightDrawable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lo/addDelegate;->extraCallback:Landroidx/appcompat/widget/AppCompatImageView;

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->headerBanner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getNextSpan;

    iput-object p1, p0, Lo/addDelegate;->ICustomTabsCallback$Stub:Lo/getNextSpan;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->titleIcon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lo/addDelegate;->asInterface:Landroidx/appcompat/widget/AppCompatImageView;

    .line 29
    iget-object p1, p0, Lo/addDelegate;->onMessageChannelReady:Landroid/widget/FrameLayout;

    new-instance p2, Lo/addDelegate$5;

    invoke-direct {p2, p0}, Lo/addDelegate$5;-><init>(Lo/addDelegate;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/addDelegate;)Lo/hasGapsToFix$onMessageChannelReady;
    .locals 0

    .line 15
    iget-object p0, p0, Lo/addDelegate;->onTransact:Lo/hasGapsToFix$onMessageChannelReady;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1118
    iput-object p1, p0, Lo/createOrientationHelpers;->asBinder:Lo/StaggeredGridLayoutManager;

    .line 42
    instance-of v0, p1, Lo/addTintListToCache;

    if-eqz v0, :cond_4

    .line 43
    check-cast p1, Lo/addTintListToCache;

    .line 45
    iget-object v0, p0, Lo/addDelegate;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "tvHeader"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2007
    iget-object v1, p1, Lo/addTintListToCache;->extraCallback:Ljava/lang/String;

    .line 45
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2010
    iget-boolean v0, p1, Lo/addTintListToCache;->onPostMessage:Z

    const-string v1, "actionLayout"

    const-string v2, "$this$gone"

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 3009
    iget-boolean v0, p1, Lo/addTintListToCache;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lo/addDelegate;->onMessageChannelReady:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7017
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/addDelegate;->onMessageChannelReady:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$visible"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4009
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5009
    iget-boolean v0, p1, Lo/addTintListToCache;->onMessageChannelReady:Z

    const-string v5, "ivPlus"

    const-string v6, "ivRightDrawable"

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lo/addDelegate;->onNavigationEvent:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5017
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lo/addDelegate;->extraCallback:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6009
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lo/addDelegate;->onPostMessage:Lo/createFullSpanItemFromEnd;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->show_more_button_text:I

    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    goto :goto_1

    .line 54
    :cond_2
    iget-object v0, p0, Lo/addDelegate;->extraCallback:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6017
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lo/addDelegate;->onNavigationEvent:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7009
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lo/addDelegate;->onPostMessage:Lo/createFullSpanItemFromEnd;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->add_button_text:I

    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    .line 61
    :goto_1
    iget-object v0, p0, Lo/addDelegate;->ICustomTabsCallback$Stub:Lo/getNextSpan;

    const-string v1, "headerBanner"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 8008
    iget-object v1, p1, Lo/addTintListToCache;->ICustomTabsCallback:Lcom/cred/pay/repository/models/Status;

    .line 61
    invoke-static {v0, v1}, Lo/extraCallback;->onPostMessage(Landroid/view/View;Lcom/cred/pay/repository/models/Status;)V

    .line 62
    iget-object v0, p0, Lo/addDelegate;->asInterface:Landroidx/appcompat/widget/AppCompatImageView;

    const-string/jumbo v1, "titleIcon"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 8012
    iget-boolean p1, p1, Lo/addTintListToCache;->asInterface:Z

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    .line 67
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method
