.class public final Lo/getContentPaddingBottom;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getContentPaddingBottom$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \'2\u00020\u0001:\u0001\'B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J \u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0006\u0010\u001e\u001a\u00020\u0018J\u0008\u0010\u001f\u001a\u00020\u0018H\u0002J\u0008\u0010 \u001a\u00020\u0018H\u0014J\u0008\u0010!\u001a\u00020\u0018H\u0014J\u0010\u0010\"\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\nH\u0016J\u0006\u0010$\u001a\u00020\u0018J\u0008\u0010%\u001a\u00020\u0018H\u0002J\u0008\u0010&\u001a\u00020\u0018H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/widget/ShimmerLayout;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyle",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "animating",
        "",
        "mAnimatingLayout",
        "mGradientView",
        "Landroid/widget/ImageView;",
        "mGradientViewDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "mGradientViewDrawableWidth",
        "mShimmerAnim",
        "Landroid/view/animation/Animation;",
        "mShimmerBackgroundColour",
        "mShimmerLayout",
        "mShimmerViewHeight",
        "mShimmerViewWidth",
        "addView",
        "",
        "child",
        "Landroid/view/View;",
        "index",
        "params",
        "Landroid/view/ViewGroup$LayoutParams;",
        "dismissShimmer",
        "dismissShimmerInternal",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "onVisibilityAggregated",
        "isVisible",
        "showShimmer",
        "showShimmerInternal",
        "updateAnimation",
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
.field private final ICustomTabsCallback:Landroid/widget/ImageView;

.field private ICustomTabsCallback$Stub:Landroid/graphics/drawable/Drawable;

.field private asBinder:I

.field private asInterface:I

.field final extraCallback:Landroid/widget/FrameLayout;

.field onMessageChannelReady:Z

.field final onNavigationEvent:Landroid/widget/FrameLayout;

.field onPostMessage:Landroid/view/animation/Animation;

.field private onRelationshipValidationResult:I

.field private onTransact:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/getContentPaddingBottom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lo/getContentPaddingBottom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object p3, Lo/getSwitchMinWidth$onMessageChannelReady;->ShimmerLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x4

    const/4 v0, -0x1

    .line 45
    :try_start_0
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lo/getContentPaddingBottom;->onRelationshipValidationResult:I

    const/4 p3, 0x3

    .line 47
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lo/getContentPaddingBottom;->onTransact:I

    const/4 p3, 0x1

    .line 50
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/getContentPaddingBottom;->ICustomTabsCallback$Stub:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Resources.getSystem()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    .line 3010
    invoke-static {p3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 51
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lo/getContentPaddingBottom;->asInterface:I

    const/4 v0, 0x0

    const v1, 0x7f0601f1

    .line 57
    invoke-static {p1, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v1

    .line 55
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lo/getContentPaddingBottom;->asBinder:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/getContentPaddingBottom;->extraCallback:Landroid/widget/FrameLayout;

    .line 64
    iget v0, p0, Lo/getContentPaddingBottom;->asBinder:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 65
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/getContentPaddingBottom;->onNavigationEvent:Landroid/widget/FrameLayout;

    .line 66
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/getContentPaddingBottom;->ICustomTabsCallback:Landroid/widget/ImageView;

    .line 67
    iget-object p1, p0, Lo/getContentPaddingBottom;->ICustomTabsCallback$Stub:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object p1, p0, Lo/getContentPaddingBottom;->onNavigationEvent:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lo/getContentPaddingBottom;->ICustomTabsCallback:Landroid/widget/ImageView;

    check-cast p2, Landroid/view/View;

    iget v0, p0, Lo/getContentPaddingBottom;->asInterface:I

    iget v1, p0, Lo/getContentPaddingBottom;->onTransact:I

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 71
    :cond_0
    iget-object p1, p0, Lo/getContentPaddingBottom;->extraCallback:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lo/getContentPaddingBottom;->onNavigationEvent:Landroid/widget/FrameLayout;

    check-cast p2, Landroid/view/View;

    iget v0, p0, Lo/getContentPaddingBottom;->onRelationshipValidationResult:I

    iget v1, p0, Lo/getContentPaddingBottom;->onTransact:I

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 72
    iget-object p1, p0, Lo/getContentPaddingBottom;->extraCallback:Landroid/widget/FrameLayout;

    check-cast p1, Landroid/view/View;

    iget p2, p0, Lo/getContentPaddingBottom;->onRelationshipValidationResult:I

    iget v0, p0, Lo/getContentPaddingBottom;->onTransact:I

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 73
    invoke-direct {p0}, Lo/getContentPaddingBottom;->onPostMessage()V

    .line 74
    iget-object p1, p0, Lo/getContentPaddingBottom;->onNavigationEvent:Landroid/widget/FrameLayout;

    new-instance p2, Lo/getContentPaddingBottom$5;

    invoke-direct {p2, p0}, Lo/getContentPaddingBottom$5;-><init>(Lo/getContentPaddingBottom;)V

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 159
    iput-boolean p3, p0, Lo/getContentPaddingBottom;->onMessageChannelReady:Z

    return-void

    :catchall_0
    move-exception p1

    .line 60
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lo/getContentPaddingBottom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getContentPaddingBottom;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/getContentPaddingBottom;->onPostMessage()V

    return-void
.end method

.method private final onPostMessage()V
    .locals 11

    .line 80
    iget v0, p0, Lo/getContentPaddingBottom;->asInterface:I

    int-to-float v0, v0

    iget-object v1, p0, Lo/getContentPaddingBottom;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 82
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    neg-float v3, v0

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    check-cast v10, Landroid/view/animation/Animation;

    iput-object v10, p0, Lo/getContentPaddingBottom;->onPostMessage:Landroid/view/animation/Animation;

    if-eqz v10, :cond_0

    const/4 v0, 0x1

    .line 92
    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v0, -0x1

    .line 93
    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const-wide/16 v0, 0x5dc

    .line 94
    invoke-virtual {v10, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 96
    :cond_0
    iget-boolean v0, p0, Lo/getContentPaddingBottom;->onMessageChannelReady:Z

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lo/getContentPaddingBottom;->onPostMessage:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 98
    :cond_1
    iget-object v0, p0, Lo/getContentPaddingBottom;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 99
    iget-object v0, p0, Lo/getContentPaddingBottom;->onNavigationEvent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lo/getContentPaddingBottom;->onPostMessage:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const-string v0, "child"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 106
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 108
    new-instance v1, Lo/getContentPaddingBottom$onPostMessage;

    invoke-direct {v1, p0, p1}, Lo/getContentPaddingBottom$onPostMessage;-><init>(Lo/getContentPaddingBottom;Landroid/view/View;)V

    check-cast v1, Landroid/text/TextWatcher;

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object p2, p0, Lo/getContentPaddingBottom;->extraCallback:Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_3

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    if-eqz p1, :cond_2

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p3, -0x1

    if-eq p1, p3, :cond_3

    .line 127
    iget-object p3, p0, Lo/getContentPaddingBottom;->extraCallback:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-eqz p3, :cond_1

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 128
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 129
    iget-object p1, p0, Lo/getContentPaddingBottom;->extraCallback:Landroid/widget/FrameLayout;

    check-cast p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 127
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    .line 146
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 147
    iget-boolean v0, p0, Lo/getContentPaddingBottom;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 2171
    iget-object v0, p0, Lo/getContentPaddingBottom;->extraCallback:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2172
    iget-object v0, p0, Lo/getContentPaddingBottom;->onNavigationEvent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lo/getContentPaddingBottom;->onPostMessage:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    .line 153
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 154
    iget-boolean v0, p0, Lo/getContentPaddingBottom;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 2176
    iget-object v0, p0, Lo/getContentPaddingBottom;->extraCallback:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2177
    iget-object v0, p0, Lo/getContentPaddingBottom;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2178
    iget-object v0, p0, Lo/getContentPaddingBottom;->extraCallback:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    .line 136
    iget-boolean v0, p0, Lo/getContentPaddingBottom;->onMessageChannelReady:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1171
    iget-object p1, p0, Lo/getContentPaddingBottom;->extraCallback:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1172
    iget-object p1, p0, Lo/getContentPaddingBottom;->onNavigationEvent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lo/getContentPaddingBottom;->onPostMessage:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 1176
    :cond_0
    iget-object p1, p0, Lo/getContentPaddingBottom;->extraCallback:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 1177
    iget-object p1, p0, Lo/getContentPaddingBottom;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 1178
    iget-object p1, p0, Lo/getContentPaddingBottom;->extraCallback:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
