.class public Lo/prependViewToAllSpans;
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0012\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u000e\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\tJ\u0010\u0010\u0014\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\tR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/widget/FabrikLoaderView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "backgroundTintLoader",
        "Landroid/view/View;",
        "lottieLoader",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "hide",
        "",
        "init",
        "setRepeatMode",
        "repeatMode",
        "show",
        "fullscreen",
        "",
        "updateLottie",
        "rawResId",
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
.field public ICustomTabsCallback:Lcom/airbnb/lottie/LottieAnimationView;

.field private onPostMessage:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    invoke-direct {p0, p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p2}, Lo/prependViewToAllSpans;->onNavigationEvent(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p2}, Lo/prependViewToAllSpans;->onNavigationEvent(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final onNavigationEvent(Landroid/util/AttributeSet;)V
    .locals 5

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lo/preferLastSpan$ICustomTabsCallback$Stub;->fabrik_loader_view:I

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 32
    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->backgroundTintLoader:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "view.findViewById(R.id.backgroundTintLoader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lo/prependViewToAllSpans;->onPostMessage:Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lo/preferLastSpan$asInterface;->FabrikLoaderView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 35
    :try_start_0
    sget v1, Lo/preferLastSpan$asInterface;->FabrikLoaderView_loaderBackground:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lo/preferLastSpan$onMessageChannelReady;->neu_bg:I

    invoke-static {v2, v4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 36
    iget-object v2, p0, Lo/prependViewToAllSpans;->onPostMessage:Landroid/view/View;

    if-nez v2, :cond_0

    const-string v4, "backgroundTintLoader"

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 38
    sget v1, Lo/preferLastSpan$asInterface;->FabrikLoaderView_horizontal:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    sget v2, Lo/preferLastSpan$ICustomTabsCallback;->horizontalLottieLoader:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "view.findViewById(R.id.horizontalLottieLoader)"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    .line 40
    :cond_1
    sget v2, Lo/preferLastSpan$ICustomTabsCallback;->lottieLoader:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "view.findViewById(R.id.lottieLoader)"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 39
    :goto_0
    iput-object v0, p0, Lo/prependViewToAllSpans;->ICustomTabsCallback:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_2

    const-string v2, "lottieLoader"

    .line 41
    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    const/16 v3, 0x8

    .line 42
    :cond_3
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    const/4 v1, -0x1

    .line 43
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static synthetic onNavigationEvent(Lo/prependViewToAllSpans;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback(Z)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 72
    iget-object v0, p0, Lo/prependViewToAllSpans;->ICustomTabsCallback:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottieLoader"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 73
    iget-object v0, p0, Lo/prependViewToAllSpans;->ICustomTabsCallback:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 74
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v1, p0, Lo/prependViewToAllSpans;->ICustomTabsCallback:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "lottieLoader"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lo/prependViewToAllSpans;->ICustomTabsCallback:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v1, :cond_1

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const-string v1, "backgroundTintLoader"

    if-eqz p1, :cond_3

    .line 65
    iget-object p1, p0, Lo/prependViewToAllSpans;->onPostMessage:Landroid/view/View;

    if-nez p1, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 67
    :cond_3
    iget-object p1, p0, Lo/prependViewToAllSpans;->onPostMessage:Landroid/view/View;

    if-nez p1, :cond_4

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setRepeatMode(I)V
    .locals 2

    .line 57
    iget-object v0, p0, Lo/prependViewToAllSpans;->ICustomTabsCallback:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    const-string v1, "lottieLoader"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    return-void
.end method
