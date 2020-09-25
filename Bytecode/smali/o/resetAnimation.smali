.class public final Lo/resetAnimation;
.super Lo/createAbtInstance;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/resetAnimation$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0017B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0014\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/digest/DigestOverflowCTABottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Lcom/dreamplug/fabrik/ui/digest/DigestOverflowCTABottomSheet$BottomSheetInterface;",
        "(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/digest/DigestOverflowCTABottomSheet$BottomSheetInterface;)V",
        "linearLayoutManager",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "overflowCTAClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "kotlin.jvm.PlatformType",
        "sheetView",
        "Landroid/view/View;",
        "verticalAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "setupList",
        "",
        "ctas",
        "",
        "Lcom/dreamplug/fabrik/ui/nba/helper/Cta;",
        "BottomSheetInterface",
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
.field private ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final extraCallback:Landroidx/recyclerview/widget/RecyclerView;

.field onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

.field private final onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

.field private final onPostMessage:Landroid/view/View;

.field private final onRelationshipValidationResult:Lo/resetAnimation$onNavigationEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/resetAnimation$onNavigationEvent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f140105

    .line 21
    invoke-direct {p0, p1, v0}, Lo/createAbtInstance;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lo/resetAnimation;->onRelationshipValidationResult:Lo/resetAnimation$onNavigationEvent;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e028e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string v0, "LayoutInflater.from(cont\u2026story_overflow_cta, null)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/resetAnimation;->onPostMessage:Landroid/view/View;

    .line 24
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo/resetAnimation;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    new-instance p2, Lo/resetAnimation$onMessageChannelReady;

    invoke-direct {p2, p0}, Lo/resetAnimation$onMessageChannelReady;-><init>(Lo/resetAnimation;)V

    check-cast p2, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object p2, p0, Lo/resetAnimation;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    .line 39
    iget-object p2, p0, Lo/resetAnimation;->onPostMessage:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 40
    iget-object p2, p0, Lo/resetAnimation;->onPostMessage:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x7f060209

    invoke-static {p1, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/resetAnimation;->ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 43
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 44
    new-instance p2, Lo/endChangeAnimation;

    iget-object v0, p0, Lo/resetAnimation;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, v0}, Lo/endChangeAnimation;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/checkForGaps;

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v0, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    new-instance p2, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 45
    iput-object p2, p0, Lo/resetAnimation;->onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

    .line 46
    iget-object p1, p0, Lo/resetAnimation;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 48
    iget-object p2, p0, Lo/resetAnimation;->ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    new-instance p1, Lo/resetAnimation$1;

    invoke-direct {p1, p0}, Lo/resetAnimation$1;-><init>(Lo/resetAnimation;)V

    check-cast p1, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p0, p1}, Lo/resetAnimation;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 64
    new-instance p1, Lo/resetAnimation$5;

    invoke-direct {p1, p0}, Lo/resetAnimation$5;-><init>(Lo/resetAnimation;)V

    check-cast p1, Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void

    .line 40
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic extraCallback(Lo/resetAnimation;)Lo/resetAnimation$onNavigationEvent;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/resetAnimation;->onRelationshipValidationResult:Lo/resetAnimation$onNavigationEvent;

    return-object p0
.end method
