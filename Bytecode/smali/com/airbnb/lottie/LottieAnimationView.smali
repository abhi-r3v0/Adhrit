.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final DEFAULT_FAILURE_LISTENER:Lo/createMultiAutoCompleteTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/createMultiAutoCompleteTextView<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationName:Ljava/lang/String;

.field private animationResId:I

.field private autoPlay:Z

.field private buildDrawingCacheDepth:I

.field private cacheComposition:Z

.field private composition:Lo/createCheckBox;

.field private compositionTask:Lo/createSeekBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private failureListener:Lo/createMultiAutoCompleteTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/createMultiAutoCompleteTextView<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private fallbackResource:I

.field private isInitialized:Z

.field private final loadedListener:Lo/createMultiAutoCompleteTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/createMultiAutoCompleteTextView<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lo/createCheckedTextView;

.field private lottieOnCompositionLoadedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/createAutoCompleteTextView;",
            ">;"
        }
    .end annotation
.end field

.field private playAnimationWhenShown:Z

.field private renderMode:Lo/createViewFromTag;

.field private wasAnimatingWhenDetached:Z

.field private wasAnimatingWhenNotShown:Z

.field private final wrappedFailureListener:Lo/createMultiAutoCompleteTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/createMultiAutoCompleteTextView<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$3;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieAnimationView$3;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:Lo/createMultiAutoCompleteTextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 126
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lo/createMultiAutoCompleteTextView;

    .line 86
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$4;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$4;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lo/createMultiAutoCompleteTextView;

    const/4 p1, 0x0

    .line 97
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 99
    new-instance v0, Lo/createCheckedTextView;

    invoke-direct {v0}, Lo/createCheckedTextView;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 104
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    .line 105
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 106
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 108
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 110
    sget-object v0, Lo/createViewFromTag;->ICustomTabsCallback:Lo/createViewFromTag;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:Lo/createViewFromTag;

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 119
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 127
    sget p1, Lo/createToggleButton$onPostMessage;->lottieAnimationViewStyle:I

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 131
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lo/createMultiAutoCompleteTextView;

    .line 86
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$4;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$4;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lo/createMultiAutoCompleteTextView;

    const/4 p1, 0x0

    .line 97
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 99
    new-instance v0, Lo/createCheckedTextView;

    invoke-direct {v0}, Lo/createCheckedTextView;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 104
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    .line 105
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 106
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 108
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 110
    sget-object v0, Lo/createViewFromTag;->ICustomTabsCallback:Lo/createViewFromTag;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:Lo/createViewFromTag;

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 119
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 132
    sget p1, Lo/createToggleButton$onPostMessage;->lottieAnimationViewStyle:I

    invoke-direct {p0, p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lo/createMultiAutoCompleteTextView;

    .line 86
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$4;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$4;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lo/createMultiAutoCompleteTextView;

    const/4 p1, 0x0

    .line 97
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 99
    new-instance v0, Lo/createCheckedTextView;

    invoke-direct {v0}, Lo/createCheckedTextView;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 104
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    .line 105
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 106
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 108
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 110
    sget-object v0, Lo/createViewFromTag;->ICustomTabsCallback:Lo/createViewFromTag;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:Lo/createViewFromTag;

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 119
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 137
    invoke-direct {p0, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/LottieAnimationView;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    return p0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/LottieAnimationView;)Lo/createMultiAutoCompleteTextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lo/createMultiAutoCompleteTextView;

    return-object p0
.end method

.method static synthetic access$200()Lo/createMultiAutoCompleteTextView;
    .locals 1

    .line 66
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:Lo/createMultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/lottie/LottieAnimationView;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    return p0
.end method

.method private cancelLoaderTask()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lo/createSeekBar;

    if-eqz v0, :cond_0

    .line 511
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lo/createMultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Lo/createSeekBar;->extraCallback(Lo/createMultiAutoCompleteTextView;)Lo/createSeekBar;

    .line 512
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lo/createSeekBar;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lo/createMultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Lo/createSeekBar;->onNavigationEvent(Lo/createMultiAutoCompleteTextView;)Lo/createSeekBar;

    :cond_0
    return-void
.end method

.method private clearComposition()V
    .locals 1

    const/4 v0, 0x0

    .line 985
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lo/createCheckBox;

    .line 986
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0}, Lo/createCheckedTextView;->onMessageChannelReady()V

    return-void
.end method

.method private enableOrDisableHardwareLayer()V
    .locals 4

    .line 1076
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView$9;->ICustomTabsCallback:[I

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:Lo/createViewFromTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_3

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lo/createCheckBox;

    if-eqz v0, :cond_1

    .line 40108
    iget-boolean v0, v0, Lo/createCheckBox;->warmup:Z

    if-eqz v0, :cond_1

    .line 1085
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_4

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lo/createCheckBox;

    if-eqz v0, :cond_2

    .line 40116
    iget v0, v0, Lo/createCheckBox;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v3, 0x4

    if-gt v0, v3, :cond_4

    .line 1089
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_4

    .line 1091
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-eq v0, v3, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    :cond_6
    :goto_2
    move v2, v1

    .line 1097
    :goto_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getLayerType()I

    move-result v0

    if-eq v2, v0, :cond_7

    const/4 v0, 0x0

    .line 1098
    invoke-virtual {p0, v2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method private fromAssets(Ljava/lang/String;)Lo/createSeekBar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Lo/createSeekBar;

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$2;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Lo/createSeekBar;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    .line 411
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/createButton;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Lo/createSeekBar;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lo/createButton;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/createSeekBar;

    move-result-object p1

    return-object p1
.end method

.method private fromRawRes(I)Lo/createSeekBar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Lo/createSeekBar;

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$5;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$5;-><init>(Lcom/airbnb/lottie/LottieAnimationView;I)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Lo/createSeekBar;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    .line 391
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/createButton;->extraCallback(Landroid/content/Context;I)Lo/createSeekBar;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lo/createButton;->onNavigationEvent(Landroid/content/Context;ILjava/lang/String;)Lo/createSeekBar;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 6

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 142
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_cacheComposition:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 143
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    .line 144
    sget v1, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    .line 145
    sget v3, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_url:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz p2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 150
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_4

    .line 152
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 155
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 157
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 160
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_url:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 162
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 166
    :cond_4
    :goto_1
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_fallbackRes:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setFallbackResource(I)V

    .line 167
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_autoPlay:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 168
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 169
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 172
    :cond_5
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_loop:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 v1, -0x1

    if-eqz p2, :cond_6

    .line 173
    iget-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 1807
    iget-object p2, p2, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {p2, v1}, Lo/enableContentAnimations;->setRepeatCount(I)V

    .line 176
    :cond_6
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 177
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 181
    :cond_7
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 182
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 186
    :cond_8
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_speed:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_9

    .line 187
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_speed:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 190
    :cond_9
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_imageAssetsFolder:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 191
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_progress:I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 192
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->enableMergePathsForKitKatAndAbove(Z)V

    .line 194
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 195
    new-instance p2, Lo/themifyContext;

    sget v4, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_colorFilter:I

    .line 196
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-direct {p2, v4}, Lo/themifyContext;-><init>(I)V

    .line 197
    new-instance v4, Lo/ActionBarContainer;

    const-string v5, "**"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lo/ActionBarContainer;-><init>([Ljava/lang/String;)V

    .line 198
    new-instance v5, Lo/onMeasureExactFormat;

    invoke-direct {v5, p2}, Lo/onMeasureExactFormat;-><init>(Ljava/lang/Object;)V

    .line 199
    sget-object p2, Lo/createRatingBar;->cancel:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v4, p2, v5}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lo/ActionBarContainer;Ljava/lang/Object;Lo/onMeasureExactFormat;)V

    .line 201
    :cond_a
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_scale:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 202
    iget-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    sget v4, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_scale:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 1853
    iput v1, p2, Lo/createCheckedTextView;->extraCallback:F

    .line 1854
    invoke-virtual {p2}, Lo/createCheckedTextView;->extraCallback()V

    .line 205
    :cond_b
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_renderMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 206
    sget p2, Lo/createToggleButton$onMessageChannelReady;->LottieAnimationView_lottie_renderMode:I

    sget-object v1, Lo/createViewFromTag;->ICustomTabsCallback:Lo/createViewFromTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 207
    invoke-static {}, Lo/createViewFromTag;->values()[Lo/createViewFromTag;

    move-result-object v1

    array-length v1, v1

    if-lt p2, v1, :cond_c

    .line 208
    sget-object p2, Lo/createViewFromTag;->ICustomTabsCallback:Lo/createViewFromTag;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    .line 210
    :cond_c
    invoke-static {}, Lo/createViewFromTag;->values()[Lo/createViewFromTag;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lo/createViewFromTag;)V

    .line 213
    :cond_d
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 214
    iget-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    .line 2134
    iput-object v1, p2, Lo/createCheckedTextView;->ICustomTabsCallback$Stub:Landroid/widget/ImageView$ScaleType;

    .line 216
    :cond_e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Landroid/content/Context;)F

    move-result p2

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_f

    const/4 v2, 0x1

    :cond_f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 2835
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Lo/createCheckedTextView;->onNavigationEvent:Z

    .line 220
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 221
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->isInitialized:Z

    return-void
.end method

.method private setCompositionTask(Lo/createSeekBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;)V"
        }
    .end annotation

    .line 502
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->clearComposition()V

    .line 503
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 504
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lo/createMultiAutoCompleteTextView;

    .line 505
    invoke-virtual {p1, v0}, Lo/createSeekBar;->onPostMessage(Lo/createMultiAutoCompleteTextView;)Lo/createSeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lo/createMultiAutoCompleteTextView;

    .line 506
    invoke-virtual {p1, v0}, Lo/createSeekBar;->ICustomTabsCallback(Lo/createMultiAutoCompleteTextView;)Lo/createSeekBar;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lo/createSeekBar;

    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 23717
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0, p1}, Lo/ActionBarOverlayLayout$ActionBarVisibilityCallback;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 23704
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0, p1}, Lo/ActionBarOverlayLayout$ActionBarVisibilityCallback;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public addLottieOnCompositionLoadedListener(Lo/createAutoCompleteTextView;)Z
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addValueCallback(Lo/ActionBarContainer;Ljava/lang/Object;Lo/onMeasureExactFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/ActionBarContainer;",
            "TT;",
            "Lo/onMeasureExactFormat<",
            "TT;>;)V"
        }
    .end annotation

    .line 880
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0, p1, p2, p3}, Lo/createCheckedTextView;->onNavigationEvent(Lo/ActionBarContainer;Ljava/lang/Object;Lo/onMeasureExactFormat;)V

    return-void
.end method

.method public addValueCallback(Lo/ActionBarContainer;Ljava/lang/Object;Lo/setPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/ActionBarContainer;",
            "TT;",
            "Lo/setPresenter<",
            "TT;>;)V"
        }
    .end annotation

    .line 890
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$10;

    invoke-direct {v1, p3}, Lcom/airbnb/lottie/LottieAnimationView$10;-><init>(Lo/setPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lo/createCheckedTextView;->onNavigationEvent(Lo/ActionBarContainer;Ljava/lang/Object;Lo/onMeasureExactFormat;)V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 2

    .line 1013
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 1014
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 1015
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->buildDrawingCache(Z)V

    .line 1016
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1018
    sget-object p1, Lo/createViewFromTag;->onNavigationEvent:Lo/createViewFromTag;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lo/createViewFromTag;)V

    .line 1020
    :cond_0
    iget p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 1021
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 930
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 931
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 932
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    .line 933
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 32918
    iget-object v1, v0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 32919
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->cancel()V

    .line 934
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public disableExtraScaleModeInFitXY()V
    .locals 2

    .line 1071
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    const/4 v1, 0x0

    .line 39289
    iput-boolean v1, v0, Lo/createCheckedTextView;->extraCommand:Z

    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 4

    .line 349
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 6157
    iget-boolean v1, v0, Lo/createCheckedTextView;->newSession:Z

    if-eq v1, p1, :cond_1

    .line 6161
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    const-string p1, "Merge paths are not supported pre-Kit Kat."

    .line 6162
    invoke-static {p1}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    .line 6165
    :cond_0
    iput-boolean p1, v0, Lo/createCheckedTextView;->newSession:Z

    .line 6166
    iget-object p1, v0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-eqz p1, :cond_1

    .line 6297
    new-instance p1, Lo/isTitleOptional;

    iget-object v1, v0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 6298
    invoke-static {v1}, Lo/setActionBarHideOffset;->onNavigationEvent(Lo/createCheckBox;)Lo/setActionBarVisibilityCallback;

    move-result-object v1

    iget-object v2, v0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 7159
    iget-object v2, v2, Lo/createCheckBox;->onTransact:Ljava/util/List;

    .line 6298
    iget-object v3, v0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    invoke-direct {p1, v0, v1, v2, v3}, Lo/isTitleOptional;-><init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;Ljava/util/List;Lo/createCheckBox;)V

    iput-object p1, v0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    :cond_1
    return-void
.end method

.method public getComposition()Lo/createCheckBox;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lo/createCheckBox;

    return-object v0
.end method

.method public getDuration()J
    .locals 3

    .line 972
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lo/createCheckBox;

    if-eqz v0, :cond_0

    .line 35201
    iget v1, v0, Lo/createCheckBox;->getInterfaceDescriptor:F

    iget v2, v0, Lo/createCheckBox;->newSession:F

    sub-float/2addr v1, v2

    .line 35141
    iget v0, v0, Lo/createCheckBox;->ICustomTabsService:F

    div-float/2addr v1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v1, v1, v0

    float-to-long v0, v1

    long-to-float v0, v0

    float-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFrame()I
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 33751
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    .line 34073
    iget v0, v0, Lo/enableContentAnimations;->onMessageChannelReady:F

    float-to-int v0, v0

    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 25200
    iget-object v0, v0, Lo/createCheckedTextView;->onTransact:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFrame()F
    .locals 3

    .line 628
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 17522
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    .line 18255
    iget-object v1, v0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 18258
    :cond_0
    iget v1, v0, Lo/enableContentAnimations;->onNavigationEvent:F

    const/high16 v2, 0x4f000000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v0, v0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    .line 19151
    iget v0, v0, Lo/createCheckBox;->getInterfaceDescriptor:F

    return v0

    .line 18258
    :cond_1
    iget v0, v0, Lo/enableContentAnimations;->onNavigationEvent:F

    return v0
.end method

.method public getMinFrame()F
    .locals 3

    .line 607
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 15483
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    .line 16248
    iget-object v1, v0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 16251
    :cond_0
    iget v1, v0, Lo/enableContentAnimations;->onPostMessage:F

    const/high16 v2, -0x31000000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v0, v0, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    .line 17146
    iget v0, v0, Lo/createCheckBox;->newSession:F

    return v0

    .line 16251
    :cond_1
    iget v0, v0, Lo/enableContentAnimations;->onPostMessage:F

    return v0
.end method

.method public getPerformanceTracker()Lo/checkOnClickListener;
    .locals 2

    .line 981
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 37254
    iget-object v1, v0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-eqz v1, :cond_0

    .line 37255
    iget-object v0, v0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 38128
    iget-object v0, v0, Lo/createCheckBox;->ICustomTabsCallback:Lo/checkOnClickListener;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 968
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 34929
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->onMessageChannelReady()F

    move-result v0

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 24817
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 24795
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 31901
    iget v0, v0, Lo/createCheckedTextView;->extraCallback:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 22700
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    .line 23193
    iget v0, v0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    return v0
.end method

.method public hasMasks()Z
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 13135
    iget-object v1, v0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    invoke-virtual {v0}, Lo/isTitleOptional;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMatte()Z
    .locals 5

    .line 564
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 13142
    iget-object v1, v0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v0, v0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    .line 13171
    iget-object v1, v0, Lo/isTitleOptional;->asBinder:Ljava/lang/Boolean;

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 14141
    iget-object v1, v0, Lo/setOverlayMode;->extraCallback:Lo/setOverlayMode;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 13173
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lo/isTitleOptional;->asBinder:Ljava/lang/Boolean;

    :goto_1
    const/4 v0, 0x1

    goto :goto_4

    .line 13177
    :cond_1
    iget-object v1, v0, Lo/isTitleOptional;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_2
    if-ltz v1, :cond_4

    .line 13178
    iget-object v4, v0, Lo/isTitleOptional;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setOverlayMode;

    .line 15141
    iget-object v4, v4, Lo/setOverlayMode;->extraCallback:Lo/setOverlayMode;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_3

    .line 13179
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lo/isTitleOptional;->asBinder:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 13183
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lo/isTitleOptional;->asBinder:Ljava/lang/Boolean;

    .line 13185
    :cond_5
    iget-object v0, v0, Lo/isTitleOptional;->asBinder:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_6

    return v3

    :cond_6
    return v2
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 240
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    if-ne v0, v1, :cond_0

    .line 243
    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 246
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public isAnimating()Z
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 24828
    iget-object v1, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 24831
    :cond_0
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 7172
    iget-boolean v0, v0, Lo/createCheckedTextView;->newSession:Z

    return v0
.end method

.method public loop(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 746
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 23807
    :goto_0
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0, p1}, Lo/enableContentAnimations;->setRepeatCount(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 319
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 320
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    if-eqz v0, :cond_1

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const/4 v0, 0x0

    .line 323
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 324
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 326
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 334
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 338
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 264
    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;

    if-nez v0, :cond_0

    .line 265
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 269
    :cond_0
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;

    .line 270
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 271
    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->extraCallback:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 275
    :cond_1
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->ICustomTabsCallback:I

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 279
    :cond_2
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onNavigationEvent:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 280
    iget-boolean v0, p1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onMessageChannelReady:Z

    if-eqz v0, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    iget-object v1, p1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 5195
    iput-object v1, v0, Lo/createCheckedTextView;->onTransact:Ljava/lang/String;

    .line 284
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onRelationshipValidationResult:I

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 285
    iget p1, p1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->ICustomTabsCallback$Stub:I

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 251
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;-><init>(Landroid/os/Parcelable;)V

    .line 253
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 254
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->ICustomTabsCallback:I

    .line 255
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 2929
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->onMessageChannelReady()F

    move-result v0

    .line 255
    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onNavigationEvent:F

    .line 256
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 3828
    iget-object v2, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3831
    :cond_0
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->isRunning()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    .line 256
    invoke-static {p0}, Lo/unregisterCallbackListener;->INotificationSideChannel$Stub(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, v1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onMessageChannelReady:Z

    .line 257
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 4200
    iget-object v0, v0, Lo/createCheckedTextView;->onTransact:Ljava/lang/String;

    .line 257
    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 4795
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->getRepeatMode()I

    move-result v0

    .line 258
    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onRelationshipValidationResult:I

    .line 259
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 4817
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/enableContentAnimations;->getRepeatCount()I

    move-result v0

    .line 259
    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->ICustomTabsCallback$Stub:I

    return-object v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 299
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->isInitialized:Z

    if-nez p1, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 303
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    if-eqz p1, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    goto :goto_0

    .line 305
    :cond_1
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    if-eqz p1, :cond_2

    .line 306
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 308
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 309
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    return-void

    .line 311
    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 312
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    const/4 p1, 0x1

    .line 313
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    :cond_4
    return-void
.end method

.method public pauseAnimation()V
    .locals 3

    const/4 v0, 0x0

    .line 939
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 940
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 941
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 942
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    .line 943
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 32923
    iget-object v2, v1, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    .line 32924
    iget-object v1, v1, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    .line 33275
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 33277
    iput-boolean v0, v1, Lo/enableContentAnimations;->onRelationshipValidationResult:Z

    .line 944
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public playAnimation()V
    .locals 1

    .line 573
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0}, Lo/createCheckedTextView;->onPostMessage()V

    .line 575
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 577
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    return-void
.end method

.method public removeAllAnimatorListeners()V
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 23725
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0}, Lo/ActionBarOverlayLayout$ActionBarVisibilityCallback;->removeAllListeners()V

    return-void
.end method

.method public removeAllLottieOnCompositionLoadedListener()V
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 23712
    iget-object v1, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v1}, Lo/ActionBarOverlayLayout$ActionBarVisibilityCallback;->removeAllUpdateListeners()V

    .line 23713
    iget-object v1, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    iget-object v0, v0, Lo/createCheckedTextView;->onRelationshipValidationResult:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v0}, Lo/ActionBarOverlayLayout$ActionBarVisibilityCallback;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 23721
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0, p1}, Lo/ActionBarOverlayLayout$ActionBarVisibilityCallback;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removeLottieOnCompositionLoadedListener(Lo/createAutoCompleteTextView;)Z
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 23708
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0, p1}, Lo/ActionBarOverlayLayout$ActionBarVisibilityCallback;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public resolveKeyPath(Lo/ActionBarContainer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActionBarContainer;",
            ")",
            "Ljava/util/List<",
            "Lo/ActionBarContainer;",
            ">;"
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0, p1}, Lo/createCheckedTextView;->onMessageChannelReady(Lo/ActionBarContainer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public resumeAnimation()V
    .locals 1

    .line 587
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0}, Lo/createCheckedTextView;->onNavigationEvent()V

    .line 589
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 591
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->playAnimationWhenShown:Z

    const/4 v0, 0x1

    .line 592
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 19686
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    .line 20193
    iget v1, v0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    neg-float v1, v1

    .line 21186
    iput v1, v0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    return-void
.end method

.method public setAnimation(I)V
    .locals 1

    .line 376
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 378
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->fromRawRes(I)Lo/createSeekBar;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lo/createSeekBar;)V

    return-void
.end method

.method public setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 441
    invoke-static {p1, p2}, Lo/createButton;->ICustomTabsCallback(Ljava/io/InputStream;Ljava/lang/String;)Lo/createSeekBar;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lo/createSeekBar;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1

    .line 397
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 398
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 399
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->fromAssets(Ljava/lang/String;)Lo/createSeekBar;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lo/createSeekBar;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 430
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 2

    .line 453
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/createButton;->onPostMessage(Landroid/content/Context;Ljava/lang/String;)Lo/createSeekBar;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lo/createButton;->onPostMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/createSeekBar;

    move-result-object p1

    .line 455
    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lo/createSeekBar;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 467
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lo/createButton;->onPostMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/createSeekBar;

    move-result-object p1

    .line 468
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lo/createSeekBar;)V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 39274
    iput-boolean p1, v0, Lo/createCheckedTextView;->requestPostMessageChannel:Z

    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0

    .line 368
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    return-void
.end method

.method public setComposition(Lo/createCheckBox;)V
    .locals 7

    .line 522
    sget-boolean v0, Lo/createEditText;->onNavigationEvent:Z

    .line 525
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 527
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lo/createCheckBox;

    .line 528
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 7209
    iget-object v1, v0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 7213
    :cond_0
    iput-boolean v3, v0, Lo/createCheckedTextView;->updateVisuals:Z

    .line 7214
    invoke-virtual {v0}, Lo/createCheckedTextView;->onMessageChannelReady()V

    .line 7215
    iput-object p1, v0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 7297
    new-instance v1, Lo/isTitleOptional;

    iget-object v4, v0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 7298
    invoke-static {v4}, Lo/setActionBarHideOffset;->onNavigationEvent(Lo/createCheckBox;)Lo/setActionBarVisibilityCallback;

    move-result-object v4

    iget-object v5, v0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 8159
    iget-object v5, v5, Lo/createCheckBox;->onTransact:Ljava/util/List;

    .line 7298
    iget-object v6, v0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    invoke-direct {v1, v0, v4, v5, v6}, Lo/isTitleOptional;-><init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;Ljava/util/List;Lo/createCheckBox;)V

    iput-object v1, v0, Lo/createCheckedTextView;->postMessage:Lo/isTitleOptional;

    .line 7217
    iget-object v1, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    .line 9136
    iget-object v4, v1, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-nez v4, :cond_1

    const/4 v3, 0x1

    .line 9137
    :cond_1
    iput-object p1, v1, Lo/enableContentAnimations;->extraCallback:Lo/createCheckBox;

    if-eqz v3, :cond_2

    .line 9140
    iget v3, v1, Lo/enableContentAnimations;->onPostMessage:F

    .line 10146
    iget v4, p1, Lo/createCheckBox;->newSession:F

    .line 9141
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, v1, Lo/enableContentAnimations;->onNavigationEvent:F

    .line 10151
    iget v5, p1, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 9142
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    .line 9140
    invoke-virtual {v1, v3, v4}, Lo/enableContentAnimations;->onMessageChannelReady(FF)V

    goto :goto_0

    .line 11146
    :cond_2
    iget v3, p1, Lo/createCheckBox;->newSession:F

    float-to-int v3, v3

    int-to-float v3, v3

    .line 11151
    iget v4, p1, Lo/createCheckBox;->getInterfaceDescriptor:F

    float-to-int v4, v4

    int-to-float v4, v4

    .line 9145
    invoke-virtual {v1, v3, v4}, Lo/enableContentAnimations;->onMessageChannelReady(FF)V

    .line 9147
    :goto_0
    iget v3, v1, Lo/enableContentAnimations;->onMessageChannelReady:F

    const/4 v4, 0x0

    .line 9148
    iput v4, v1, Lo/enableContentAnimations;->onMessageChannelReady:F

    float-to-int v3, v3

    int-to-float v3, v3

    .line 9149
    invoke-virtual {v1, v3}, Lo/enableContentAnimations;->onNavigationEvent(F)V

    .line 9150
    invoke-virtual {v1}, Lo/ActionBarOverlayLayout$ActionBarVisibilityCallback;->ICustomTabsCallback()V

    .line 7218
    iget-object v1, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v1}, Lo/enableContentAnimations;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lo/createCheckedTextView;->onNavigationEvent(F)V

    .line 7219
    iget v1, v0, Lo/createCheckedTextView;->extraCallback:F

    .line 11853
    iput v1, v0, Lo/createCheckedTextView;->extraCallback:F

    .line 11854
    invoke-virtual {v0}, Lo/createCheckedTextView;->extraCallback()V

    .line 7220
    invoke-virtual {v0}, Lo/createCheckedTextView;->extraCallback()V

    .line 7224
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7225
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/createCheckedTextView$extraCallback;

    .line 7227
    invoke-interface {v3}, Lo/createCheckedTextView$extraCallback;->extraCallback()V

    .line 7228
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 7230
    :cond_3
    iget-object v1, v0, Lo/createCheckedTextView;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 7232
    iget-boolean v1, v0, Lo/createCheckedTextView;->mayLaunchUrl:Z

    .line 12124
    iget-object p1, p1, Lo/createCheckBox;->ICustomTabsCallback:Lo/checkOnClickListener;

    .line 13041
    iput-boolean v1, p1, Lo/checkOnClickListener;->onNavigationEvent:Z

    .line 7236
    invoke-virtual {v0}, Lo/createCheckedTextView;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 7237
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 7238
    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7239
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 530
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    if-ne p1, v0, :cond_5

    if-nez v2, :cond_5

    return-void

    .line 539
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 541
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 543
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_3

    :cond_6
    return-void
.end method

.method public setFailureListener(Lo/createMultiAutoCompleteTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/createMultiAutoCompleteTextView<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 486
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lo/createMultiAutoCompleteTextView;

    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0

    .line 498
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    return-void
.end method

.method public setFontAssetDelegate(Lo/createImageButton;)V
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 29881
    iput-object p1, v0, Lo/createCheckedTextView;->ICustomTabsService:Lo/createImageButton;

    return-void
.end method

.method public setFrame(I)V
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0, p1}, Lo/createCheckedTextView;->ICustomTabsCallback(I)V

    return-void
.end method

.method public setImageAssetDelegate(Lo/createSpinner;)V
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 28870
    iput-object p1, v0, Lo/createCheckedTextView;->warmup:Lo/createSpinner;

    .line 28871
    iget-object v1, v0, Lo/createCheckedTextView;->asBinder:Lo/onFinishInflate;

    if-eqz v1, :cond_0

    .line 28872
    iget-object v0, v0, Lo/createCheckedTextView;->asBinder:Lo/onFinishInflate;

    .line 29051
    iput-object p1, v0, Lo/onFinishInflate;->onMessageChannelReady:Lo/createSpinner;

    :cond_0
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 25195
    iput-object p1, v0, Lo/createCheckedTextView;->onTransact:Ljava/lang/String;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 236
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 230
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 231
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 226
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0, p1}, Lo/createCheckedTextView;->onMessageChannelReady(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0, p1}, Lo/createCheckedTextView;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0, p1}, Lo/createCheckedTextView;->extraCallback(F)V

    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0, p1, p2}, Lo/createCheckedTextView;->onMessageChannelReady(II)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0, p1}, Lo/createCheckedTextView;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0, p1, p2, p3}, Lo/createCheckedTextView;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0, p1, p2}, Lo/createCheckedTextView;->onNavigationEvent(FF)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0, p1}, Lo/createCheckedTextView;->onNavigationEvent(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0, p1}, Lo/createCheckedTextView;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0, p1}, Lo/createCheckedTextView;->ICustomTabsCallback(F)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 2

    .line 976
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 35246
    iput-boolean p1, v0, Lo/createCheckedTextView;->mayLaunchUrl:Z

    .line 35247
    iget-object v1, v0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    if-eqz v1, :cond_0

    .line 35248
    iget-object v0, v0, Lo/createCheckedTextView;->onMessageChannelReady:Lo/createCheckBox;

    .line 36124
    iget-object v0, v0, Lo/createCheckBox;->ICustomTabsCallback:Lo/checkOnClickListener;

    .line 37041
    iput-boolean p1, v0, Lo/checkOnClickListener;->onNavigationEvent:Z

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {v0, p1}, Lo/createCheckedTextView;->onNavigationEvent(F)V

    return-void
.end method

.method public setRenderMode(Lo/createViewFromTag;)V
    .locals 0

    .line 1039
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:Lo/createViewFromTag;

    .line 1040
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 24807
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0, p1}, Lo/enableContentAnimations;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 24785
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    invoke-virtual {v0, p1}, Lo/enableContentAnimations;->setRepeatMode(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 38321
    iput-boolean p1, v0, Lo/createCheckedTextView;->onPostMessage:Z

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 31853
    iput p1, v0, Lo/createCheckedTextView;->extraCallback:F

    .line 31854
    invoke-virtual {v0}, Lo/createCheckedTextView;->extraCallback()V

    .line 911
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 912
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 913
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 922
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 923
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    if-eqz v0, :cond_0

    .line 32134
    iput-object p1, v0, Lo/createCheckedTextView;->ICustomTabsCallback$Stub:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 21693
    iget-object v0, v0, Lo/createCheckedTextView;->ICustomTabsCallback:Lo/enableContentAnimations;

    .line 22186
    iput p1, v0, Lo/enableContentAnimations;->ICustomTabsCallback:F

    return-void
.end method

.method public setTextDelegate(Lo/setPopupCallback;)V
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 30888
    iput-object p1, v0, Lo/createCheckedTextView;->getInterfaceDescriptor:Lo/setPopupCallback;

    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 827
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lo/createCheckedTextView;

    .line 26029
    invoke-virtual {v0}, Lo/createCheckedTextView;->ICustomTabsCallback()Lo/onFinishInflate;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    .line 26031
    invoke-static {p1}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    return-object v2

    :cond_0
    if-nez p2, :cond_1

    .line 26059
    iget-object p2, v1, Lo/onFinishInflate;->extraCallback:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;

    .line 27052
    iget-object p2, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->onPostMessage:Landroid/graphics/Bitmap;

    .line 27059
    iput-object v2, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->onPostMessage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 26064
    :cond_1
    iget-object v2, v1, Lo/onFinishInflate;->extraCallback:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;

    .line 28052
    iget-object v2, v2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->onPostMessage:Landroid/graphics/Bitmap;

    .line 26065
    invoke-virtual {v1, p1, p2}, Lo/onFinishInflate;->onPostMessage(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-object p2, v2

    .line 26036
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-object p2
.end method
