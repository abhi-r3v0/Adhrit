.class public final Lo/findFirstVisibleItemClosestToEnd;
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
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020\u0015J\u000e\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u0015J\u001c\u0010#\u001a\u00020\u001f2\u0014\u0010$\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u001f\u0018\u00010%J\u000e\u0010\'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020)R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00178F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0012\u0010\u001d\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000e\u00a8\u0006*"
    }
    d2 = {
        "Lcom/dreamplug/widget/CollapsingButton;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "collapsedStateHeight",
        "collapsedStateWitdh",
        "endPositionX",
        "",
        "Ljava/lang/Float;",
        "expandedStateHeight",
        "Ljava/lang/Integer;",
        "expandedStateWidth",
        "gd",
        "Landroid/graphics/drawable/GradientDrawable;",
        "lastState",
        "Lcom/dreamplug/widget/State;",
        "value",
        "",
        "text",
        "getText",
        "()Ljava/lang/CharSequence;",
        "setText",
        "(Ljava/lang/CharSequence;)V",
        "textPositionX",
        "animateClick",
        "",
        "getButtonState",
        "setButtonState",
        "state",
        "setDebounceClickListener",
        "onClickListener",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "setMode",
        "mode",
        "Lcom/dreamplug/widget/Mode;",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Integer;

.field private asBinder:Ljava/lang/Float;

.field private asInterface:Ljava/util/HashMap;

.field private extraCallback:Ljava/lang/Integer;

.field private final onMessageChannelReady:I

.field public onNavigationEvent:Lo/getFirstChildPosition;

.field private final onPostMessage:I

.field private onRelationshipValidationResult:Ljava/lang/Float;

.field private onTransact:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/findFirstVisibleItemClosestToEnd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

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

    invoke-direct/range {v0 .. v5}, Lo/findFirstVisibleItemClosestToEnd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

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

    invoke-direct/range {v0 .. v5}, Lo/findFirstVisibleItemClosestToEnd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const-string p4, "context"

    invoke-static {p1, p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 20
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    sget-object p3, Lo/getFirstChildPosition;->onPostMessage:Lo/getFirstChildPosition;

    iput-object p3, p0, Lo/findFirstVisibleItemClosestToEnd;->onNavigationEvent:Lo/getFirstChildPosition;

    .line 20
    iput-object v0, p0, Lo/findFirstVisibleItemClosestToEnd;->extraCallback:Ljava/lang/Integer;

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    const-string v1, "Resources.getSystem()"

    invoke-static {p3, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v2, 0x41f00000    # 30.0f

    const/4 v3, 0x1

    .line 3010
    invoke-static {v3, v2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 21
    iput p3, p0, Lo/findFirstVisibleItemClosestToEnd;->onMessageChannelReady:I

    .line 22
    iput-object v0, p0, Lo/findFirstVisibleItemClosestToEnd;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 4009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 4010
    invoke-static {v3, v2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 23
    iput p3, p0, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage:I

    const/4 p3, 0x0

    .line 24
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    iput-object p3, p0, Lo/findFirstVisibleItemClosestToEnd;->asBinder:Ljava/lang/Float;

    .line 25
    iput-object p3, p0, Lo/findFirstVisibleItemClosestToEnd;->onRelationshipValidationResult:Ljava/lang/Float;

    .line 36
    sget-object p3, Lo/preferLastSpan$asInterface;->CollapsingButton:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lo/preferLastSpan$ICustomTabsCallback$Stub;->collapsing_button:I

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, v0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 41
    :try_start_0
    sget p1, Lo/preferLastSpan$asInterface;->CollapsingButton_text:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/findFirstVisibleItemClosestToEnd;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    sget p1, Lo/preferLastSpan$ICustomTabsCallback;->parentView:I

    invoke-virtual {p0, p1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    new-instance p2, Lo/findFirstVisibleItemClosestToEnd$3;

    invoke-direct {p2, p0}, Lo/findFirstVisibleItemClosestToEnd$3;-><init>(Lo/findFirstVisibleItemClosestToEnd;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    sget-object p1, Lo/areAllEndsEqual;->onPostMessage:Lo/areAllEndsEqual;

    invoke-virtual {p0, p1}, Lo/findFirstVisibleItemClosestToEnd;->setMode(Lo/areAllEndsEqual;)V

    return-void

    :catchall_0
    move-exception p1

    .line 43
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

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

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lo/findFirstVisibleItemClosestToEnd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/findFirstVisibleItemClosestToEnd;)I
    .locals 0

    .line 16
    iget p0, p0, Lo/findFirstVisibleItemClosestToEnd;->onMessageChannelReady:I

    return p0
.end method

.method public static final synthetic asBinder(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Float;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/findFirstVisibleItemClosestToEnd;->asBinder:Ljava/lang/Float;

    return-object p0
.end method

.method public static final synthetic asInterface(Lo/findFirstVisibleItemClosestToEnd;)I
    .locals 0

    .line 16
    iget p0, p0, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage:I

    return p0
.end method

.method public static final synthetic extraCallback(Lo/findFirstVisibleItemClosestToEnd;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 16
    iget-object p0, p0, Lo/findFirstVisibleItemClosestToEnd;->onTransact:Landroid/graphics/drawable/GradientDrawable;

    if-nez p0, :cond_0

    const-string v0, "gd"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/findFirstVisibleItemClosestToEnd;Ljava/lang/Float;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lo/findFirstVisibleItemClosestToEnd;->asBinder:Ljava/lang/Float;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/findFirstVisibleItemClosestToEnd;Ljava/lang/Integer;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lo/findFirstVisibleItemClosestToEnd;->ICustomTabsCallback:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Integer;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/findFirstVisibleItemClosestToEnd;->extraCallback:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Float;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/findFirstVisibleItemClosestToEnd;->onRelationshipValidationResult:Ljava/lang/Float;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/findFirstVisibleItemClosestToEnd;Ljava/lang/Float;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lo/findFirstVisibleItemClosestToEnd;->onRelationshipValidationResult:Ljava/lang/Float;

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Integer;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/findFirstVisibleItemClosestToEnd;->ICustomTabsCallback:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/findFirstVisibleItemClosestToEnd;Ljava/lang/Integer;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lo/findFirstVisibleItemClosestToEnd;->extraCallback:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd;->asInterface:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/findFirstVisibleItemClosestToEnd;->asInterface:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd;->asInterface:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/findFirstVisibleItemClosestToEnd;->asInterface:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final onPostMessage()V
    .locals 4

    .line 124
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd;->onNavigationEvent:Lo/getFirstChildPosition;

    sget-object v1, Lo/getFirstChildPosition;->onPostMessage:Lo/getFirstChildPosition;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 132
    :goto_0
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd;->onNavigationEvent:Lo/getFirstChildPosition;

    sget-object v1, Lo/getFirstChildPosition;->onPostMessage:Lo/getFirstChildPosition;

    if-ne v0, v1, :cond_1

    .line 133
    sget-object v0, Lo/getFirstChildPosition;->extraCallback:Lo/getFirstChildPosition;

    goto :goto_1

    .line 135
    :cond_1
    sget-object v0, Lo/getFirstChildPosition;->onPostMessage:Lo/getFirstChildPosition;

    .line 132
    :goto_1
    iput-object v0, p0, Lo/findFirstVisibleItemClosestToEnd;->onNavigationEvent:Lo/getFirstChildPosition;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 138
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 139
    new-instance v1, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;-><init>(Lo/findFirstVisibleItemClosestToEnd;)V

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x12c

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 168
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 169
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final setButtonState(Lo/getFirstChildPosition;)V
    .locals 2

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd;->onNavigationEvent:Lo/getFirstChildPosition;

    if-ne p1, v0, :cond_0

    return-void

    .line 83
    :cond_0
    iput-object p1, p0, Lo/findFirstVisibleItemClosestToEnd;->onNavigationEvent:Lo/getFirstChildPosition;

    .line 84
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->parentView:I

    invoke-virtual {p0, v0}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    new-instance v1, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;

    invoke-direct {v1, p0, p1}, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;-><init>(Lo/findFirstVisibleItemClosestToEnd;Lo/getFirstChildPosition;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setDebounceClickListener(Lo/onDisconnectSetValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Landroid/view/View;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 57
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {p0, v0}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "backgroundView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public final setMode(Lo/areAllEndsEqual;)V
    .locals 7

    const-string v0, "mode"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lo/areAllEndsEqual;->onNavigationEvent:Lo/areAllEndsEqual;

    const/high16 v1, 0x41e00000    # 28.0f

    const/4 v2, 0x1

    const-string v3, "Resources.getSystem()"

    const-string v4, "backgroundView"

    if-ne p1, v0, :cond_0

    .line 62
    sget p1, Lo/preferLastSpan$ICustomTabsCallback;->textView:I

    invoke-virtual {p0, p1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v5, Lo/preferLastSpan$onMessageChannelReady;->dark_text:I

    invoke-static {v0, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    sget p1, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {p0, p1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lo/preferLastSpan$onMessageChannelReady;->white_five:I

    invoke-static {v5, v6}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1010
    invoke-static {v2, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 63
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    sget p1, Lo/preferLastSpan$ICustomTabsCallback;->crossIcon:I

    invoke-virtual {p0, p1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    sget v0, Lo/preferLastSpan$onNavigationEvent;->ic_cross_light:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 69
    :cond_0
    sget p1, Lo/preferLastSpan$ICustomTabsCallback;->textView:I

    invoke-virtual {p0, p1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v5, Lo/preferLastSpan$onMessageChannelReady;->white_five:I

    invoke-static {v0, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    sget p1, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {p0, p1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lo/preferLastSpan$onMessageChannelReady;->dark_text:I

    invoke-static {v5, v6}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 2010
    invoke-static {v2, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 70
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    sget p1, Lo/preferLastSpan$ICustomTabsCallback;->crossIcon:I

    invoke-virtual {p0, p1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    sget v0, Lo/preferLastSpan$onNavigationEvent;->ic_cross_dark:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    :goto_0
    sget p1, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {p0, p1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lo/findFirstVisibleItemClosestToEnd;->onTransact:Landroid/graphics/drawable/GradientDrawable;

    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 32
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->textView:I

    invoke-virtual {p0, v0}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v1, "textView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
