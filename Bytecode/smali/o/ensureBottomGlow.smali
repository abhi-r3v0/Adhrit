.class public final Lo/ensureBottomGlow;
.super Lo/getContentPaddingTop;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ensureBottomGlow$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001%B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u0005H\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\u0017H\u0002J\u000e\u0010!\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\u0017J\u001e\u0010\"\u001a\u00020 2\u0016\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\u0008\u0012\u0004\u0012\u00020\u0012`\u0013J\u0010\u0010$\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\u0017H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\u0008\u0012\u0004\u0012\u00020\u0012`\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006&"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/referal/FabrikReferalIntroPagerAdapter;",
        "Lcom/dreamplug/androidapp/ui/widget/ViewPagerAdapter;",
        "context",
        "Landroid/content/Context;",
        "viewPager",
        "Landroidx/viewpager/widget/ViewPager;",
        "(Landroid/content/Context;Landroidx/viewpager/widget/ViewPager;)V",
        "getContext",
        "()Landroid/content/Context;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "getInflater",
        "()Landroid/view/LayoutInflater;",
        "runnableStore",
        "Landroid/util/SparseArray;",
        "Ljava/lang/Runnable;",
        "splashPagerList",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/referal/FabrikReferalIntroPagerAdapter$BoosterPagerItem;",
        "Lkotlin/collections/ArrayList;",
        "getViewPager",
        "()Landroidx/viewpager/widget/ViewPager;",
        "getCount",
        "",
        "getItemPosition",
        "object",
        "",
        "getView",
        "Landroid/view/View;",
        "position",
        "pager",
        "playAnimation",
        "",
        "runAnim",
        "setList",
        "rList",
        "stopAnimation",
        "BoosterPagerItem",
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
.field private final asInterface:Landroid/content/Context;

.field private final onMessageChannelReady:Landroid/view/LayoutInflater;

.field onNavigationEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/ensureBottomGlow$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Lo/PlaybackStateCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/PlaybackStateCompat;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewPager"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lo/getContentPaddingTop;-><init>()V

    iput-object p1, p0, Lo/ensureBottomGlow;->asInterface:Landroid/content/Context;

    iput-object p2, p0, Lo/ensureBottomGlow;->onRelationshipValidationResult:Lo/PlaybackStateCompat;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/ensureBottomGlow;->onNavigationEvent:Ljava/util/ArrayList;

    .line 25
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/ensureBottomGlow;->onPostMessage:Landroid/util/SparseArray;

    .line 27
    iget-object p1, p0, Lo/ensureBottomGlow;->asInterface:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    iput-object p1, p0, Lo/ensureBottomGlow;->onMessageChannelReady:Landroid/view/LayoutInflater;

    return-void
.end method

.method private final extraCallback(I)V
    .locals 4

    if-ltz p1, :cond_2

    .line 65
    iget-object v0, p0, Lo/ensureBottomGlow;->onRelationshipValidationResult:Lo/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 66
    iget-object v0, p0, Lo/ensureBottomGlow;->onRelationshipValidationResult:Lo/PlaybackStateCompat;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b0450

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    iget-object v1, p0, Lo/ensureBottomGlow;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 70
    :cond_1
    new-instance v1, Lo/ensureBottomGlow$onNavigationEvent;

    invoke-direct {v1, v0}, Lo/ensureBottomGlow$onNavigationEvent;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 74
    iget-object v2, p0, Lo/ensureBottomGlow;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v0, :cond_2

    const-wide/16 v2, 0xc8

    .line 75
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 1

    const-string v0, "object"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1
.end method

.method public final ICustomTabsCallback(ILo/PlaybackStateCompat;)Landroid/view/View;
    .locals 7

    const-string v0, "pager"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lo/ensureBottomGlow;->onMessageChannelReady:Landroid/view/LayoutInflater;

    check-cast p2, Landroid/view/ViewGroup;

    const v1, 0x7f0e0175

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view"

    .line 30
    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 32
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->description:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 33
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->parentLayout:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    .line 34
    iget-object v4, p0, Lo/ensureBottomGlow;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v4, "splashPagerList[position]"

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ensureBottomGlow$ICustomTabsCallback;

    const-string v4, "parent"

    .line 35
    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lo/ensureBottomGlow;->asInterface:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1020
    iget v5, p1, Lo/ensureBottomGlow$ICustomTabsCallback;->onPostMessage:I

    const/4 v6, 0x0

    .line 35
    invoke-static {v4, v5, v6}, Lo/containsKey;->ICustomTabsCallback(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/onChildrenLoaded;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const-string/jumbo v3, "title"

    .line 36
    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2017
    iget-object v3, p1, Lo/ensureBottomGlow$ICustomTabsCallback;->extraCallback:Ljava/lang/CharSequence;

    .line 36
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "subTitle"

    .line 37
    invoke-static {v2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2018
    iget-object v0, p1, Lo/ensureBottomGlow$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    .line 37
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2019
    iget p1, p1, Lo/ensureBottomGlow$ICustomTabsCallback;->onMessageChannelReady:I

    .line 38
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    return-object p2
.end method

.method public final extraCallback()I
    .locals 1

    .line 46
    iget-object v0, p0, Lo/ensureBottomGlow;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(I)V
    .locals 2

    add-int/lit8 v0, p1, -0x1

    .line 49
    invoke-direct {p0, v0}, Lo/ensureBottomGlow;->extraCallback(I)V

    if-ltz p1, :cond_2

    .line 2055
    iget-object v0, p0, Lo/ensureBottomGlow;->onRelationshipValidationResult:Lo/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2056
    iget-object v0, p0, Lo/ensureBottomGlow;->onRelationshipValidationResult:Lo/PlaybackStateCompat;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b0450

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2057
    :goto_0
    iget-object v1, p0, Lo/ensureBottomGlow;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 2058
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    if-eqz v0, :cond_2

    .line 2060
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 51
    invoke-direct {p0, p1}, Lo/ensureBottomGlow;->extraCallback(I)V

    return-void
.end method
