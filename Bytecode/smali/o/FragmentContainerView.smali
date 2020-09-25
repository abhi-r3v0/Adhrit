.class public final Lo/FragmentContainerView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u001e\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00112\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/widgets/BankIconUnBilledListView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "binding",
        "Lcom/dreamplug/androidapp/databinding/LayoutBankListUnbilledItemBinding;",
        "getBinding",
        "()Lcom/dreamplug/androidapp/databinding/LayoutBankListUnbilledItemBinding;",
        "binding$delegate",
        "Lkotlin/Lazy;",
        "iconList",
        "",
        "Lcom/dreamplug/ui/CredDraweeView;",
        "set",
        "",
        "banks",
        "Lcom/dreamplug/fabrik/ui/cm/models/SummaryBank;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
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
.field private ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/flagRemovedAndOffsetPosition;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/isSameListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lo/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    const-string p4, "context"

    invoke-static {p1, p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    new-instance p2, Lo/FragmentContainerView$onMessageChannelReady;

    invoke-direct {p2, p0, p1}, Lo/FragmentContainerView$onMessageChannelReady;-><init>(Lo/FragmentContainerView;Landroid/content/Context;)V

    check-cast p2, Lo/getServerTime;

    const-string p1, "initializer"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5021
    new-instance p1, Lo/fromChildMerge;

    invoke-direct {p1, p2}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p1, Lo/isSameListener;

    .line 24
    iput-object p1, p0, Lo/FragmentContainerView;->onNavigationEvent:Lo/isSameListener;

    .line 6000
    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/TintContextWrapper;

    const-string p2, "binding"

    .line 33
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6047
    iget-object p1, p1, Lo/TintContextWrapper;->onPostMessage:Landroid/widget/LinearLayout;

    .line 33
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x3

    new-array p1, p1, [Lo/flagRemovedAndOffsetPosition;

    .line 7000
    iget-object p2, p0, Lo/FragmentContainerView;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/TintContextWrapper;

    .line 34
    iget-object p2, p2, Lo/TintContextWrapper;->onNavigationEvent:Lo/flagRemovedAndOffsetPosition;

    aput-object p2, p1, p4

    .line 8000
    iget-object p2, p0, Lo/FragmentContainerView;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/TintContextWrapper;

    .line 34
    iget-object p2, p2, Lo/TintContextWrapper;->onMessageChannelReady:Lo/flagRemovedAndOffsetPosition;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    .line 9000
    iget-object p2, p0, Lo/FragmentContainerView;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/TintContextWrapper;

    .line 34
    iget-object p2, p2, Lo/TintContextWrapper;->ICustomTabsCallback:Lo/flagRemovedAndOffsetPosition;

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "elements"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this$asList"

    .line 9076
    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10013
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "ArraysUtilJVM.asList(this)"

    .line 9129
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lo/FragmentContainerView;->ICustomTabsCallback:Ljava/util/List;

    return-void
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 21
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lo/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final set(Ljava/util/List;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/cm/models/SummaryBank;",
            ">;",
            "Lo/hasGapsToFix$onMessageChannelReady;",
            ")V"
        }
    .end annotation

    const-string v0, "banks"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lo/FragmentContainerView;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/TintContextWrapper;

    .line 39
    iget-object v1, v0, Lo/TintContextWrapper;->extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "allCardsCount"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    const-string v3, "$this$gone"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    .line 1017
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 40
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 67
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-ltz v6, :cond_1

    check-cast v7, Lcom/dreamplug/fabrik/ui/cm/models/SummaryBank;

    const-string v9, "$this$visible"

    if-eqz v6, :cond_0

    const/4 v10, 0x1

    if-eq v6, v10, :cond_0

    const/4 v11, 0x2

    if-eq v6, v11, :cond_0

    .line 48
    iget-object v6, v0, Lo/TintContextWrapper;->ICustomTabsCallback:Lo/flagRemovedAndOffsetPosition;

    const-string v12, "cardThreeIcon"

    invoke-static {v6, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    invoke-static {v6, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4017
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v6, v0, Lo/TintContextWrapper;->extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    check-cast v6, Landroid/view/View;

    invoke-static {v6, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5009
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 51
    new-instance v9, Lo/FragmentContainerView$onNavigationEvent;

    invoke-direct {v9, v7, p2}, Lo/FragmentContainerView$onNavigationEvent;-><init>(Lcom/dreamplug/fabrik/ui/cm/models/SummaryBank;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast v9, Lo/onDisconnectSetValue;

    invoke-static {v6, v9}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 56
    iget-object v6, v0, Lo/TintContextWrapper;->extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v6, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f1300bb

    new-array v10, v10, [Ljava/lang/Object;

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    .line 56
    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2136
    :cond_0
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/cm/models/SummaryBank;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/SummaryBankProperties;

    .line 2143
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/cm/models/SummaryBankProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Image;

    .line 44
    iget-object v10, p0, Lo/FragmentContainerView;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/flagRemovedAndOffsetPosition;

    const/4 v11, 0x0

    .line 3010
    invoke-static {v10, v7, v11}, Lo/extraCallback;->ICustomTabsCallback(Lo/flagRemovedAndOffsetPosition;Lcom/dreamplug/fabrik/ui/cm/models/Image;Ljava/lang/Integer;)V

    .line 45
    iget-object v7, p0, Lo/FragmentContainerView;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4009
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    move v6, v8

    goto :goto_0

    .line 1441
    :cond_1
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Index overflow has happened."

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    return-void
.end method
