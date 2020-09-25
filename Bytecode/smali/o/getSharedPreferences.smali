.class public Lo/getSharedPreferences;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public final onNavigationEvent:Lo/і;

.field private final onPostMessage:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/getSharedPreferences;->onPostMessage:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Lo/і;

    invoke-direct {v0}, Lo/і;-><init>()V

    iput-object v0, p0, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lo/getSharedPreferences;->extraCallback(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/getSharedPreferences;->onPostMessage:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Lo/і;

    invoke-direct {v0}, Lo/і;-><init>()V

    iput-object v0, p0, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    .line 40
    invoke-direct {p0, p1, p2}, Lo/getSharedPreferences;->extraCallback(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lo/getSharedPreferences;->onPostMessage:Landroid/graphics/Paint;

    .line 31
    new-instance p3, Lo/і;

    invoke-direct {p3}, Lo/і;-><init>()V

    iput-object p3, p0, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    .line 45
    invoke-direct {p0, p1, p2}, Lo/getSharedPreferences;->extraCallback(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private extraCallback(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 57
    iget-object v1, p0, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    if-nez p2, :cond_0

    .line 60
    new-instance p1, Lo/getConfiguredChannel$ICustomTabsCallback;

    invoke-direct {p1}, Lo/getConfiguredChannel$ICustomTabsCallback;-><init>()V

    invoke-virtual {p1}, Lo/getConfiguredChannel$onMessageChannelReady;->onPostMessage()Lo/getConfiguredChannel;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/getSharedPreferences;->onPostMessage(Lo/getConfiguredChannel;)Lo/getSharedPreferences;

    return-void

    .line 64
    :cond_0
    sget-object v1, Lo/Ɩ$extraCallback;->ShimmerFrameLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 66
    :try_start_0
    sget p2, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_colored:I

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_colored:I

    .line 68
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lo/getConfiguredChannel$extraCallback;

    invoke-direct {p2}, Lo/getConfiguredChannel$extraCallback;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p2, Lo/getConfiguredChannel$ICustomTabsCallback;

    invoke-direct {p2}, Lo/getConfiguredChannel$ICustomTabsCallback;-><init>()V

    .line 71
    :goto_0
    invoke-virtual {p2, p1}, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent(Landroid/content/res/TypedArray;)Lo/getConfiguredChannel$onMessageChannelReady;

    move-result-object p2

    invoke-virtual {p2}, Lo/getConfiguredChannel$onMessageChannelReady;->onPostMessage()Lo/getConfiguredChannel;

    move-result-object p2

    invoke-direct {p0, p2}, Lo/getSharedPreferences;->onPostMessage(Lo/getConfiguredChannel;)Lo/getSharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private onPostMessage(Lo/getConfiguredChannel;)Lo/getSharedPreferences;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    invoke-virtual {v0, p1}, Lo/і;->extraCallback(Lo/getConfiguredChannel;)V

    if-eqz p1, :cond_0

    .line 79
    iget-boolean p1, p1, Lo/getConfiguredChannel;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 80
    iget-object v0, p0, Lo/getSharedPreferences;->onPostMessage:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lo/getSharedPreferences;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, p1, v0}, Lo/getSharedPreferences;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 126
    iget-object v0, p0, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 114
    iget-object v0, p0, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    invoke-virtual {v0}, Lo/і;->extraCallback()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1095
    iget-object v0, p0, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    .line 2068
    iget-object v1, v0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 2075
    iget-object v1, v0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2069
    iget-object v0, v0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 105
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 108
    iget-object p3, p0, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 131
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
