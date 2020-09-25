.class public final Lo/AsyncListUtil$DataCallback;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AsyncListUtil$DataCallback$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 *2\u00020\u0001:\u0001*B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0016\u0010\u0014\u001a\u00020\u00152\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017J\u0006\u0010\u0019\u001a\u00020\u0015J\u0008\u0010\u001a\u001a\u00020\u0015H\u0002J\u0010\u0010\u001b\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u001cH\u0002J \u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001f2\u0010\u0008\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010!J\"\u0010\"\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u00112\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00150$J\u0008\u0010%\u001a\u00020\u0015H\u0002J\u0006\u0010&\u001a\u00020\u0015J \u0010\'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020)2\u0010\u0008\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010!R\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/payments/CustomPaymentsView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "amount",
        "",
        "getAmount",
        "()Ljava/lang/String;",
        "amountsAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "suggestedAmountSelectionListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "assignSuggestedAmounts",
        "",
        "amounts",
        "",
        "Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;",
        "clear",
        "init",
        "selectListItem",
        "",
        "setCtaState",
        "state",
        "Lcom/dreamplug/widget/ButtonState;",
        "next",
        "Lkotlin/Function0;",
        "setup",
        "callback",
        "Lkotlin/Function1;",
        "setupSuggestedAmountsList",
        "showError",
        "toggleKeyboard",
        "show",
        "",
        "Companion",
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
.field private ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private final onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

.field private onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

.field private onPostMessage:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/AsyncListUtil$DataCallback;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

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

    invoke-direct/range {v0 .. v5}, Lo/AsyncListUtil$DataCallback;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

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

    invoke-direct/range {v0 .. v5}, Lo/AsyncListUtil$DataCallback;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    const-string p4, "context"

    invoke-static {p1, p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    new-instance p1, Lo/AsyncListUtil$DataCallback$asBinder;

    invoke-direct {p1, p0}, Lo/AsyncListUtil$DataCallback$asBinder;-><init>(Lo/AsyncListUtil$DataCallback;)V

    check-cast p1, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object p1, p0, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    .line 6072
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    const p3, 0x7f0e0202

    invoke-virtual {p1, p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6073
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6074
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    sget-object p2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p2, 0x7f1301a2

    invoke-static {p2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 6079
    :cond_0
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 6080
    new-instance p2, Lo/BatchingListUpdateCallback;

    iget-object p3, p0, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p3}, Lo/BatchingListUpdateCallback;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/checkForGaps;

    const-string p3, "adapter"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object p3, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7043
    new-instance p2, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {p2, p1, p4}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 6081
    iput-object p2, p0, Lo/AsyncListUtil$DataCallback;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    .line 6082
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->suggestedAmounts:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 6084
    new-instance p2, Lo/setGapStrategy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6086
    new-instance v3, Lo/getGapStrategy;

    .line 8009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    const-string v0, "Resources.getSystem()"

    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v5, 0x1

    .line 8010
    invoke-static {v5, v4, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 8132
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    const-string v6, "Cannot round NaN value."

    if-nez v4, :cond_6

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 9009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v7, 0x40000000    # 2.0f

    .line 9010
    invoke-static {v5, v7, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 9132
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 6086
    invoke-direct {v3, p4, p4, p3, v4}, Lo/getGapStrategy;-><init>(IIII)V

    .line 6087
    new-instance v4, Lo/getGapStrategy;

    .line 10009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v7, 0x41f00000    # 30.0f

    .line 10010
    invoke-static {v5, v7, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 10132
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 11009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 11010
    invoke-static {v5, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 11132
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 6087
    invoke-direct {v4, p4, p4, p3, v0}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v5, 0x2

    move-object v0, p2

    .line 6084
    invoke-direct/range {v0 .. v5}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 6083
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 6090
    iget-object p2, p0, Lo/AsyncListUtil$DataCallback;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    if-nez p2, :cond_1

    const-string p3, "amountsAdapter"

    invoke-static {p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6091
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-direct {p2, p3, p4, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void

    .line 11132
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 10132
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 9132
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 8132
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
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

    .line 39
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lo/AsyncListUtil$DataCallback;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/AsyncListUtil$DataCallback;D)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(D)V

    return-void
.end method

.method public static synthetic onPostMessage(Lo/AsyncListUtil$DataCallback;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, p1, v0}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(ZLo/getServerTime;)V

    return-void
.end method

.method public static synthetic setCtaState$default(Lo/AsyncListUtil$DataCallback;Lo/findLastCompletelyVisibleItemPositions;Lo/getServerTime;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 171
    :cond_0
    invoke-virtual {p0, p1, p2}, Lo/AsyncListUtil$DataCallback;->setCtaState(Lo/findLastCompletelyVisibleItemPositions;Lo/getServerTime;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;",
            ">;)V"
        }
    .end annotation

    .line 141
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 142
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->suggestedAmounts:I

    invoke-virtual {p0, v0}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo v2, "suggestedAmounts"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lo/AsyncListUtil$DataCallback;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    if-nez v0, :cond_2

    const-string v1, "amountsAdapter"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 5038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public final onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/AsyncListUtil$DataCallback;->onPostMessage:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/AsyncListUtil$DataCallback;->onPostMessage:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/AsyncListUtil$DataCallback;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/AsyncListUtil$DataCallback;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final onMessageChannelReady(D)V
    .locals 9

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object v1, p0, Lo/AsyncListUtil$DataCallback;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    const-string v2, "amountsAdapter"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3000
    :cond_0
    iget-object v1, v1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 3151
    iget-object v1, v1, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 59
    check-cast v1, Ljava/lang/Iterable;

    .line 194
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/StaggeredGridLayoutManager;

    .line 60
    instance-of v4, v3, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    if-eqz v4, :cond_1

    .line 61
    new-instance v4, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    check-cast v3, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->getAmount()D

    move-result-wide v5

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->getAmount()D

    move-result-wide v7

    cmpg-double v3, v7, p1

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-direct {v4, v5, v6, v3}, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;-><init>(DZ)V

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_3
    iget-object p1, p0, Lo/AsyncListUtil$DataCallback;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    if-nez p1, :cond_4

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    check-cast v0, Ljava/util/List;

    const-string/jumbo p2, "value"

    invoke-static {v0, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 4038
    invoke-virtual {p1, v0}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    return-void
.end method

.method public final onMessageChannelReady(ZLo/getServerTime;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lo/AsyncListUtil$DataCallback;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    if-eqz v0, :cond_1

    const-string v1, "payAmount"

    if-eqz p1, :cond_0

    .line 150
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-wide/16 v1, 0x12c

    new-instance v3, Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;

    invoke-direct {v3, v0, p0, p2}, Lo/AsyncListUtil$DataCallback$onRelationshipValidationResult;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/AsyncListUtil$DataCallback;Lo/getServerTime;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void

    .line 158
    :cond_0
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 159
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady(Landroid/view/View;)V

    .line 160
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-wide/16 v1, 0x96

    new-instance v3, Lo/AsyncListUtil$DataCallback$onTransact;

    invoke-direct {v3, p2}, Lo/AsyncListUtil$DataCallback$onTransact;-><init>(Lo/getServerTime;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    :cond_1
    return-void
.end method

.method public final setCtaState(Lo/findLastCompletelyVisibleItemPositions;Lo/getServerTime;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/findLastCompletelyVisibleItemPositions;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lo/AsyncListUtil$DataCallback;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    if-eqz v0, :cond_0

    .line 173
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {p0, v1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/recycleFromEnd;

    invoke-virtual {v1, p1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    if-eqz p2, :cond_0

    .line 175
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v1, "payAmount"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-wide/16 v1, 0x64

    new-instance v3, Lo/AsyncListUtil$DataCallback$onNavigationEvent;

    invoke-direct {v3, p2}, Lo/AsyncListUtil$DataCallback$onNavigationEvent;-><init>(Lo/getServerTime;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    :cond_0
    return-void
.end method

.method public final setup(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/onDisconnectSetValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MediaControllerCompatApi21$CallbackProxy;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/String;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lo/AsyncListUtil$DataCallback;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    .line 97
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance v0, Lo/getChangingConfigurations$onMessageChannelReady;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p0, v1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "payAmount"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/getChangingConfigurations$onMessageChannelReady;-><init>(Landroid/widget/EditText;)V

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance v0, Lo/AsyncListUtil$DataCallback$onMessageChannelReady;

    invoke-direct {v0, p0, p2}, Lo/AsyncListUtil$DataCallback$onMessageChannelReady;-><init>(Lo/AsyncListUtil$DataCallback;Lo/onDisconnectSetValue;)V

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    new-instance v2, Lo/getColor$onNavigationEvent;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lo/getColor$onNavigationEvent;-><init>(I)V

    check-cast v2, Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 119
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance v1, Lo/AsyncListUtil$DataCallback$onPostMessage;

    invoke-direct {v1, p2}, Lo/AsyncListUtil$DataCallback$onPostMessage;-><init>(Lo/onDisconnectSetValue;)V

    check-cast v1, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 124
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->error:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v1, "error"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f1302e1

    invoke-static {v1, v0}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13038f

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    .line 126
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 127
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    const-string v0, "proceed"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/AsyncListUtil$DataCallback$ICustomTabsCallback;

    invoke-direct {v0, p0, p2}, Lo/AsyncListUtil$DataCallback$ICustomTabsCallback;-><init>(Lo/AsyncListUtil$DataCallback;Lo/onDisconnectSetValue;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 132
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance p2, Lo/AsyncListUtil$DataCallback$asInterface;

    invoke-direct {p2, p0}, Lo/AsyncListUtil$DataCallback$asInterface;-><init>(Lo/AsyncListUtil$DataCallback;)V

    check-cast p2, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method
