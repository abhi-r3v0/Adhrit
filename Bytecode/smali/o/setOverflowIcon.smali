.class public Lo/setOverflowIcon;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setOverflowIcon$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/widget/LinearLayout;

.field private ICustomTabsCallback$Stub:F

.field private asBinder:Landroid/graphics/Rect;

.field private asInterface:Landroid/view/animation/Interpolator;

.field public extraCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/setOnMenuItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private getInterfaceDescriptor:Lo/setOverflowIcon$onMessageChannelReady;

.field public onMessageChannelReady:I

.field public onNavigationEvent:I

.field public onPostMessage:F

.field private onRelationshipValidationResult:I

.field private onTransact:Landroid/animation/ValueAnimator;

.field private warmup:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 145
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 490
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/setOverflowIcon;->asBinder:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 491
    iput-object v0, p0, Lo/setOverflowIcon;->warmup:[I

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, v0}, Lo/setOverflowIcon;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 490
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/setOverflowIcon;->asBinder:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 491
    iput-object v0, p0, Lo/setOverflowIcon;->warmup:[I

    .line 154
    invoke-direct {p0, p1, p2}, Lo/setOverflowIcon;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 490
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lo/setOverflowIcon;->asBinder:Landroid/graphics/Rect;

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 491
    iput-object p3, p0, Lo/setOverflowIcon;->warmup:[I

    .line 161
    invoke-direct {p0, p1, p2}, Lo/setOverflowIcon;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private ICustomTabsCallback(Landroid/view/MotionEvent;)I
    .locals 8

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 462
    :goto_1
    iget-object v5, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 464
    iget-object v5, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/setOnMenuItemClickListener;

    const/16 v6, 0x8

    if-eqz v1, :cond_1

    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 473
    invoke-virtual {v5, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 475
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v6, :cond_2

    .line 5494
    iget-object v6, p0, Lo/setOverflowIcon;->asBinder:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 5495
    iget-object v6, p0, Lo/setOverflowIcon;->warmup:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5496
    iget-object v5, p0, Lo/setOverflowIcon;->asBinder:Landroid/graphics/Rect;

    iget-object v6, p0, Lo/setOverflowIcon;->warmup:[I

    aget v7, v6, v3

    aget v6, v6, v2

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 5497
    iget-object v5, p0, Lo/setOverflowIcon;->asBinder:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 480
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v6, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ge v0, v5, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return v4
.end method

.method private ICustomTabsCallback(IZ)V
    .locals 4

    .line 12812
    iput p1, p0, Lo/setOverflowIcon;->onMessageChannelReady:I

    int-to-float v0, p1

    .line 12813
    iput v0, p0, Lo/setOverflowIcon;->onPostMessage:F

    .line 12814
    iput p1, p0, Lo/setOverflowIcon;->onNavigationEvent:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 786
    :goto_0
    iget-object v2, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 788
    iget-object v2, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setOnMenuItemClickListener;

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v1, p1, :cond_0

    if-nez p2, :cond_1

    .line 14548
    iput-boolean v0, v2, Lo/setOnMenuItemClickListener;->onNavigationEvent:Z

    .line 14551
    iput v3, v2, Lo/setOnMenuItemClickListener;->onPostMessage:F

    .line 14554
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 15548
    iput-boolean v0, v2, Lo/setOnMenuItemClickListener;->onNavigationEvent:Z

    .line 15551
    iput v3, v2, Lo/setOnMenuItemClickListener;->onPostMessage:F

    .line 15554
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 16548
    :cond_1
    iput-boolean v0, v2, Lo/setOnMenuItemClickListener;->onNavigationEvent:Z

    const/4 v3, 0x0

    .line 16551
    iput v3, v2, Lo/setOnMenuItemClickListener;->onPostMessage:F

    .line 16554
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private ICustomTabsCallback(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lo/setPopupTheme$onPostMessage;->SegmentedButtonGroup:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 213
    sget p2, Lo/setPopupTheme$onPostMessage;->SegmentedButtonGroup_position:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lo/setOverflowIcon;->onMessageChannelReady:I

    const/4 p2, 0x1

    .line 220
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 222
    sget p2, Lo/setPopupTheme$onPostMessage;->SegmentedButtonGroup_selectionAnimationInterpolator:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 224
    invoke-virtual {p0, p2}, Lo/setOverflowIcon;->setSelectionAnimationInterpolator(I)V

    .line 225
    sget p2, Lo/setPopupTheme$onPostMessage;->SegmentedButtonGroup_selectionAnimationDuration:I

    const/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lo/setOverflowIcon;->onRelationshipValidationResult:I

    .line 228
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/setOverflowIcon;ZLo/setOnMenuItemClickListener;I)V
    .locals 6

    .line 17253
    iget-object v0, p0, Lo/setOverflowIcon;->ICustomTabsCallback:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_3

    .line 17261
    iget-object v4, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setOnMenuItemClickListener;

    .line 17262
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v0, 0x1

    .line 17271
    :goto_1
    iget-object v4, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 17273
    iget-object v4, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setOnMenuItemClickListener;

    .line 17274
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object v4, v1

    :goto_2
    if-eqz p1, :cond_5

    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 17287
    iget-object p1, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ge v0, p1, :cond_7

    .line 17289
    iget-object p1, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setOnMenuItemClickListener;

    .line 17290
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_4

    goto :goto_5

    :cond_4
    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_7

    .line 17301
    iget-object p1, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setOnMenuItemClickListener;

    .line 17302
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_6

    :goto_5
    move-object v1, p1

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_7
    :goto_6
    if-ne p3, v2, :cond_9

    if-eqz v4, :cond_8

    .line 17606
    iput-object v1, v4, Lo/setOnMenuItemClickListener;->extraCallback:Lo/setOnMenuItemClickListener;

    :cond_8
    if-eqz v1, :cond_b

    .line 18593
    iput-object v4, v1, Lo/setOnMenuItemClickListener;->onMessageChannelReady:Lo/setOnMenuItemClickListener;

    return-void

    .line 19593
    :cond_9
    iput-object v4, p2, Lo/setOnMenuItemClickListener;->onMessageChannelReady:Lo/setOnMenuItemClickListener;

    .line 19606
    iput-object v1, p2, Lo/setOnMenuItemClickListener;->extraCallback:Lo/setOnMenuItemClickListener;

    if-eqz v4, :cond_a

    .line 20606
    iput-object p2, v4, Lo/setOnMenuItemClickListener;->extraCallback:Lo/setOnMenuItemClickListener;

    :cond_a
    if-eqz v1, :cond_b

    .line 21593
    iput-object p2, v1, Lo/setOnMenuItemClickListener;->onMessageChannelReady:Lo/setOnMenuItemClickListener;

    :cond_b
    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/setOverflowIcon;Ljava/util/List;ZZLandroid/animation/ValueAnimator;)V
    .locals 3

    .line 22002
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p4

    .line 22007
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    int-to-float v2, v0

    cmpl-float v2, p4, v2

    if-ltz v2, :cond_1

    :goto_1
    add-float/2addr p4, v1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    int-to-float v2, v0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    :goto_2
    sub-float/2addr p4, v1

    goto :goto_0

    :cond_3
    if-nez p3, :cond_0

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_0

    goto :goto_1

    .line 22026
    :cond_4
    invoke-virtual {p0, p4}, Lo/setOverflowIcon;->extraCallback(F)V

    return-void
.end method

.method private onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 192
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 196
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lo/setOverflowIcon;->ICustomTabsCallback:Landroid/widget/LinearLayout;

    .line 197
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v1, p0, Lo/setOverflowIcon;->ICustomTabsCallback:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 200
    iget-object v1, p0, Lo/setOverflowIcon;->ICustomTabsCallback:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 203
    invoke-direct {p0, p1, p2}, Lo/setOverflowIcon;->ICustomTabsCallback(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/setOverflowIcon;IZ)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lo/setOverflowIcon;->ICustomTabsCallback(IZ)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .line 239
    instance-of p2, p1, Lo/setOnMenuItemClickListener;

    if-eqz p2, :cond_c

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 242
    :goto_0
    check-cast p1, Lo/setOnMenuItemClickListener;

    .line 246
    iget-object v1, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    .line 250
    new-instance v2, Lo/setOverflowReserved;

    invoke-direct {v2, p0, p2}, Lo/setOverflowReserved;-><init>(Lo/setOverflowIcon;Z)V

    .line 1804
    iput-object v2, p1, Lo/setOnMenuItemClickListener;->ICustomTabsCallback:Lo/setOnMenuItemClickListener$extraCallback;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    if-eqz v1, :cond_5

    .line 365
    iget-object v4, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    sub-int/2addr v4, v0

    :goto_1
    if-ltz v4, :cond_2

    .line 367
    iget-object v0, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setOnMenuItemClickListener;

    .line 368
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_4

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_3

    move-object v3, p1

    .line 2606
    :cond_3
    iput-object v3, v0, Lo/setOnMenuItemClickListener;->extraCallback:Lo/setOnMenuItemClickListener;

    .line 3593
    :cond_4
    iput-object v0, p1, Lo/setOnMenuItemClickListener;->onMessageChannelReady:Lo/setOnMenuItemClickListener;

    goto :goto_5

    :cond_5
    if-nez p2, :cond_a

    if-eqz v1, :cond_a

    .line 392
    iget-object v4, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    sub-int/2addr v4, v0

    :goto_3
    if-ltz v4, :cond_7

    .line 394
    iget-object v0, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setOnMenuItemClickListener;

    .line 395
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_7
    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_9

    .line 406
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_8

    move-object v3, p1

    .line 4593
    :cond_8
    iput-object v3, v0, Lo/setOnMenuItemClickListener;->onMessageChannelReady:Lo/setOnMenuItemClickListener;

    .line 4606
    :cond_9
    iput-object v0, p1, Lo/setOnMenuItemClickListener;->extraCallback:Lo/setOnMenuItemClickListener;

    .line 420
    :cond_a
    :goto_5
    iget-object v0, p0, Lo/setOverflowIcon;->ICustomTabsCallback:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iget-object p3, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 424
    iget p1, p0, Lo/setOverflowIcon;->onMessageChannelReady:I

    if-ne p1, v1, :cond_b

    .line 425
    invoke-direct {p0, v1, p2}, Lo/setOverflowIcon;->ICustomTabsCallback(IZ)V

    :cond_b
    return-void

    .line 431
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid child view for SegmentedButtonGroup. Only SegmentedButton\'s are valid children of the group"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 569
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 572
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto/16 :goto_4

    .line 656
    :cond_1
    iget v0, p0, Lo/setOverflowIcon;->ICustomTabsCallback$Stub:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    .line 658
    iget v0, p0, Lo/setOverflowIcon;->onPostMessage:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lo/setOverflowIcon;->setPosition(IZ)V

    .line 661
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_4

    .line 633
    :cond_2
    iget v0, p0, Lo/setOverflowIcon;->ICustomTabsCallback$Stub:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    .line 638
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lo/setOverflowIcon;->ICustomTabsCallback$Stub:F

    sub-float/2addr v0, v3

    .line 6516
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 6519
    :goto_0
    iget-object v4, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 6521
    iget-object v4, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setOnMenuItemClickListener;

    const/16 v5, 0x8

    if-eqz v3, :cond_4

    .line 6528
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v5, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_5

    int-to-float v1, v1

    .line 6529
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    add-float/2addr v1, v0

    goto :goto_1

    .line 6535
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v5, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_5

    sub-int/2addr v1, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 6536
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float/2addr v1, v0

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    int-to-float v1, v1

    :goto_1
    const/4 v0, 0x0

    .line 644
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 647
    invoke-virtual {p0, v0}, Lo/setOverflowIcon;->extraCallback(F)V

    goto :goto_4

    .line 577
    :cond_7
    invoke-direct {p0, p1}, Lo/setOverflowIcon;->ICustomTabsCallback(Landroid/view/MotionEvent;)I

    move-result v0

    .line 584
    iget-object v2, p0, Lo/setOverflowIcon;->getInterfaceDescriptor:Lo/setOverflowIcon$onMessageChannelReady;

    if-eqz v2, :cond_a

    if-ltz v0, :cond_9

    .line 586
    iget-object v2, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    iget v2, p0, Lo/setOverflowIcon;->onMessageChannelReady:I

    if-ne v0, v2, :cond_8

    iget-object v2, p0, Lo/setOverflowIcon;->onTransact:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_8

    .line 587
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Lo/setOverflowIcon;->ICustomTabsCallback$Stub:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    .line 589
    :cond_8
    iget-object v2, p0, Lo/setOverflowIcon;->getInterfaceDescriptor:Lo/setOverflowIcon$onMessageChannelReady;

    invoke-interface {v2, v0}, Lo/setOverflowIcon$onMessageChannelReady;->ICustomTabsCallback(I)V

    .line 5812
    iput v0, p0, Lo/setOverflowIcon;->onMessageChannelReady:I

    int-to-float v2, v0

    .line 5813
    iput v2, p0, Lo/setOverflowIcon;->onPostMessage:F

    .line 5814
    iput v0, p0, Lo/setOverflowIcon;->onNavigationEvent:I

    goto :goto_3

    .line 588
    :cond_9
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 595
    :cond_a
    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    .line 602
    :cond_b
    invoke-direct {p0, p1}, Lo/setOverflowIcon;->ICustomTabsCallback(Landroid/view/MotionEvent;)I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 608
    iput v0, p0, Lo/setOverflowIcon;->ICustomTabsCallback$Stub:F

    .line 668
    :cond_c
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_d
    :goto_5
    return v1
.end method

.method public final extraCallback()V
    .locals 4

    .line 854
    iget-object v0, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 855
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 856
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 857
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 861
    :cond_1
    iget-object v0, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method

.method public final extraCallback(F)V
    .locals 9

    .line 682
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 688
    :goto_0
    iput p1, p0, Lo/setOverflowIcon;->onPostMessage:F

    float-to-int v3, p1

    int-to-float v4, v3

    sub-float/2addr p1, v4

    add-int/lit8 v4, v3, 0x1

    .line 698
    :goto_1
    iget-object v5, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    const/16 v6, 0x8

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    .line 699
    invoke-virtual {v5, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/setOnMenuItemClickListener;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 711
    :cond_1
    iget-object v5, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 712
    iget-object v5, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/setOnMenuItemClickListener;

    if-eqz v0, :cond_2

    .line 6548
    iput-boolean v2, v5, Lo/setOnMenuItemClickListener;->onNavigationEvent:Z

    .line 6551
    iput p1, v5, Lo/setOnMenuItemClickListener;->onPostMessage:F

    .line 6554
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 7521
    :cond_2
    iput-boolean v1, v5, Lo/setOnMenuItemClickListener;->onNavigationEvent:Z

    .line 7524
    iput p1, v5, Lo/setOnMenuItemClickListener;->onPostMessage:F

    .line 7527
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_2
    if-ltz v4, :cond_5

    .line 722
    iget-object v5, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 725
    iget-object v5, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/setOnMenuItemClickListener;

    if-eqz v0, :cond_4

    .line 8521
    iput-boolean v1, v5, Lo/setOnMenuItemClickListener;->onNavigationEvent:Z

    .line 8524
    iput p1, v5, Lo/setOnMenuItemClickListener;->onPostMessage:F

    .line 8527
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 8548
    :cond_4
    iput-boolean v2, v5, Lo/setOnMenuItemClickListener;->onNavigationEvent:Z

    .line 8551
    iput p1, v5, Lo/setOnMenuItemClickListener;->onPostMessage:F

    .line 8554
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 739
    :cond_5
    :goto_3
    iget p1, p0, Lo/setOverflowIcon;->onNavigationEvent:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eq p1, v3, :cond_7

    if-eq p1, v4, :cond_7

    iget-object p1, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    if-eqz v0, :cond_6

    .line 742
    iget-object p1, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    iget v8, p0, Lo/setOverflowIcon;->onNavigationEvent:I

    invoke-virtual {p1, v8}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setOnMenuItemClickListener;

    .line 9548
    iput-boolean v2, p1, Lo/setOnMenuItemClickListener;->onNavigationEvent:Z

    .line 9551
    iput v5, p1, Lo/setOnMenuItemClickListener;->onPostMessage:F

    .line 9554
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_4

    .line 744
    :cond_6
    iget-object p1, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    iget v8, p0, Lo/setOverflowIcon;->onNavigationEvent:I

    invoke-virtual {p1, v8}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setOnMenuItemClickListener;

    .line 10548
    iput-boolean v2, p1, Lo/setOnMenuItemClickListener;->onNavigationEvent:Z

    .line 10551
    iput v7, p1, Lo/setOnMenuItemClickListener;->onPostMessage:F

    .line 10554
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 750
    :cond_7
    :goto_4
    iget p1, p0, Lo/setOverflowIcon;->onNavigationEvent:I

    add-int/2addr p1, v1

    .line 751
    :goto_5
    iget-object v1, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge p1, v1, :cond_8

    iget-object v1, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setOnMenuItemClickListener;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_8

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_8
    if-eq p1, v4, :cond_a

    if-eq p1, v3, :cond_a

    .line 757
    iget-object v1, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    .line 758
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge p1, v1, :cond_a

    if-eqz v0, :cond_9

    .line 761
    iget-object v0, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setOnMenuItemClickListener;

    .line 11548
    iput-boolean v2, p1, Lo/setOnMenuItemClickListener;->onNavigationEvent:Z

    .line 11551
    iput v5, p1, Lo/setOnMenuItemClickListener;->onPostMessage:F

    .line 11554
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_6

    .line 763
    :cond_9
    iget-object v0, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setOnMenuItemClickListener;

    .line 12548
    iput-boolean v2, p1, Lo/setOnMenuItemClickListener;->onNavigationEvent:Z

    .line 12551
    iput v7, p1, Lo/setOnMenuItemClickListener;->onPostMessage:F

    .line 12554
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 767
    :cond_a
    :goto_6
    iput v3, p0, Lo/setOverflowIcon;->onNavigationEvent:I

    .line 770
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 838
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 840
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 844
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "position"

    .line 847
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 848
    invoke-virtual {p0, v0, v1}, Lo/setOverflowIcon;->setPosition(IZ)V

    const-string/jumbo v0, "superState"

    .line 850
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 824
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 825
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string/jumbo v2, "superState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 828
    iget v1, p0, Lo/setOverflowIcon;->onMessageChannelReady:I

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public removeAllViews()V
    .locals 1

    .line 438
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 439
    iget-object v0, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method

.method public setOnButtonClickListener(Lo/setOverflowIcon$onMessageChannelReady;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lo/setOverflowIcon;->getInterfaceDescriptor:Lo/setOverflowIcon$onMessageChannelReady;

    return-void
.end method

.method public setPosition(IZ)V
    .locals 8

    .line 921
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ltz p1, :cond_11

    .line 929
    iget-object v3, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge p1, v3, :cond_11

    iget v3, p0, Lo/setOverflowIcon;->onMessageChannelReady:I

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lo/setOverflowIcon;->onTransact:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    .line 930
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lo/setOverflowIcon;->ICustomTabsCallback$Stub:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_b

    :cond_1
    if-eqz p2, :cond_10

    .line 934
    iget-object p2, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    if-nez p2, :cond_2

    goto/16 :goto_a

    .line 942
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-eqz v0, :cond_9

    .line 946
    iget v5, p0, Lo/setOverflowIcon;->onPostMessage:F

    int-to-float v6, p1

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 949
    iget v6, p0, Lo/setOverflowIcon;->onPostMessage:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    :goto_2
    if-ge v6, p1, :cond_7

    .line 951
    iget-object v7, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/setOnMenuItemClickListener;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v4, :cond_4

    .line 952
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 957
    :cond_5
    iget v6, p0, Lo/setOverflowIcon;->onPostMessage:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    :goto_3
    if-le v6, p1, :cond_7

    .line 959
    iget-object v7, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/setOnMenuItemClickListener;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v4, :cond_6

    add-int/lit8 v7, v6, 0x1

    .line 960
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_7
    new-array v3, v3, [F

    .line 969
    iget v4, p0, Lo/setOverflowIcon;->onPostMessage:F

    aput v4, v3, v1

    if-eqz v5, :cond_8

    .line 970
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    goto :goto_4

    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p1

    :goto_4
    int-to-float v1, v1

    aput v1, v3, v2

    .line 969
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lo/setOverflowIcon;->onTransact:Landroid/animation/ValueAnimator;

    goto/16 :goto_9

    .line 974
    :cond_9
    iget v5, p0, Lo/setOverflowIcon;->onPostMessage:F

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    const/4 v5, 0x1

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_c

    .line 977
    iget v6, p0, Lo/setOverflowIcon;->onPostMessage:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    :goto_6
    if-le v6, p1, :cond_e

    .line 979
    iget-object v7, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/setOnMenuItemClickListener;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v4, :cond_b

    add-int/lit8 v7, v6, 0x1

    .line 980
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 985
    :cond_c
    iget v6, p0, Lo/setOverflowIcon;->onPostMessage:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    :goto_7
    if-ge v6, p1, :cond_e

    .line 987
    iget-object v7, p0, Lo/setOverflowIcon;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/setOnMenuItemClickListener;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v4, :cond_d

    .line 988
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_e
    new-array v3, v3, [F

    .line 997
    iget v4, p0, Lo/setOverflowIcon;->onPostMessage:F

    aput v4, v3, v1

    if-eqz v5, :cond_f

    .line 998
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p1

    goto :goto_8

    :cond_f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    :goto_8
    int-to-float v1, v1

    aput v1, v3, v2

    .line 997
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lo/setOverflowIcon;->onTransact:Landroid/animation/ValueAnimator;

    .line 1001
    :goto_9
    iget-object v1, p0, Lo/setOverflowIcon;->onTransact:Landroid/animation/ValueAnimator;

    new-instance v2, Lo/getOverflowIcon;

    invoke-direct {v2, p0, p2, v0, v5}, Lo/getOverflowIcon;-><init>(Lo/setOverflowIcon;Ljava/util/List;ZZ)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1030
    iget-object p2, p0, Lo/setOverflowIcon;->onTransact:Landroid/animation/ValueAnimator;

    iget v1, p0, Lo/setOverflowIcon;->onRelationshipValidationResult:I

    int-to-long v1, v1

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1031
    iget-object p2, p0, Lo/setOverflowIcon;->onTransact:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1032
    iget-object p2, p0, Lo/setOverflowIcon;->onTransact:Landroid/animation/ValueAnimator;

    new-instance v1, Lo/setOverflowIcon$3;

    invoke-direct {v1, p0, p1, v0}, Lo/setOverflowIcon$3;-><init>(Lo/setOverflowIcon;IZ)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1048
    iget-object p1, p0, Lo/setOverflowIcon;->onTransact:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 936
    :cond_10
    :goto_a
    invoke-direct {p0, p1, v0}, Lo/setOverflowIcon;->ICustomTabsCallback(IZ)V

    :cond_11
    :goto_b
    return-void
.end method

.method public setSelectionAnimationDuration(I)V
    .locals 0

    .line 1142
    iput p1, p0, Lo/setOverflowIcon;->onRelationshipValidationResult:I

    return-void
.end method

.method public setSelectionAnimationInterpolator(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1122
    :pswitch_0
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object p1, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 1118
    :pswitch_1
    new-instance p1, Lo/MediaControllerCompat$TransportControlsApi21;

    invoke-direct {p1}, Lo/MediaControllerCompat$TransportControlsApi21;-><init>()V

    iput-object p1, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    return-void

    .line 1114
    :pswitch_2
    new-instance p1, Lo/skipToPrevious;

    invoke-direct {p1}, Lo/skipToPrevious;-><init>()V

    iput-object p1, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    return-void

    .line 1110
    :pswitch_3
    new-instance p1, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    iput-object p1, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    return-void

    .line 1106
    :pswitch_4
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    return-void

    .line 1102
    :pswitch_5
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    return-void

    .line 1098
    :pswitch_6
    new-instance p1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    iput-object p1, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    return-void

    .line 1094
    :pswitch_7
    new-instance p1, Landroid/view/animation/CycleInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    iput-object p1, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    return-void

    .line 1090
    :pswitch_8
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    return-void

    .line 1086
    :pswitch_9
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    return-void

    .line 1082
    :pswitch_a
    new-instance p1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    iput-object p1, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    return-void

    .line 1078
    :pswitch_b
    new-instance p1, Lo/setRating;

    invoke-direct {p1}, Lo/setRating;-><init>()V

    iput-object p1, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    return-void

    :pswitch_c
    const/4 p1, 0x0

    .line 1074
    iput-object p1, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSelectionAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1059
    iput-object p1, p0, Lo/setOverflowIcon;->asInterface:Landroid/view/animation/Interpolator;

    return-void
.end method
