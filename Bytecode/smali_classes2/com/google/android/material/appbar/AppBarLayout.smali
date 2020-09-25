.class public Lcom/google/android/material/appbar/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation runtime Landroidx/coordinatorlayout/widget/CoordinatorLayout$ICustomTabsCallback;
    extraCallback = Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$Behavior;,
        Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;,
        Lcom/google/android/material/appbar/AppBarLayout$onNavigationEvent;,
        Lcom/google/android/material/appbar/AppBarLayout$onPostMessage;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/getVolumeAttributes;

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService:Z

.field asBinder:Landroid/graphics/drawable/Drawable;

.field private asInterface:I

.field extraCallback:Z

.field private getInterfaceDescriptor:Landroid/animation/ValueAnimator;

.field private newSession:Z

.field public onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/appbar/AppBarLayout$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:I

.field onPostMessage:Z

.field private onRelationshipValidationResult:I

.field private onTransact:I

.field private postMessage:[I

.field private warmup:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 194
    sget v0, Lo/toStringMap$extraCallback;->appBarLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 198
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 164
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback$Stub:I

    .line 165
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->onTransact:I

    .line 166
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->onRelationshipValidationResult:I

    const/4 v1, 0x0

    .line 170
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->onNavigationEvent:I

    const/4 v2, 0x1

    .line 199
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 201
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 2039
    sget-object v2, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 208
    sget v2, Lo/toStringMap$onRelationshipValidationResult;->Widget_Design_AppBarLayout:I

    .line 2044
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 2045
    sget-object v11, Lo/getExperimentsToAdd;->onPostMessage:[I

    new-array v9, v1, [I

    .line 2081
    invoke-static {v10, p2, p3, v2}, Lo/signInWithCustomToken;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v4, v10

    move-object v5, p2

    move-object v6, v11

    move v7, p3

    move v8, v2

    .line 2084
    invoke-static/range {v4 .. v9}, Lo/signInWithCustomToken;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 2087
    invoke-virtual {v10, p2, v11, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2049
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2051
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-static {v10, v4}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v4

    .line 2052
    invoke-virtual {p0, v4}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2055
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2056
    throw p1

    .line 212
    :cond_1
    :goto_0
    sget-object v2, Lo/toStringMap$newSession;->AppBarLayout:[I

    sget v10, Lo/toStringMap$onRelationshipValidationResult;->Widget_Design_AppBarLayout:I

    new-array v9, v1, [I

    .line 3081
    invoke-static {p1, p2, p3, v10}, Lo/signInWithCustomToken;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v4, p1

    move-object v5, p2

    move-object v6, v2

    move v7, p3

    move v8, v10

    .line 3084
    invoke-static/range {v4 .. v9}, Lo/signInWithCustomToken;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 3087
    invoke-virtual {p1, p2, v2, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 220
    sget p3, Lo/toStringMap$newSession;->AppBarLayout_android_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p0, p3}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_3

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/ColorDrawable;

    .line 224
    new-instance v2, Lo/setFirebaseUIVersion;

    invoke-direct {v2}, Lo/setFirebaseUIVersion;-><init>()V

    .line 225
    invoke-virtual {p3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 3288
    iget-object v4, v2, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v4, v4, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq v4, p3, :cond_2

    .line 3289
    iget-object v4, v2, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p3, v4, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 3290
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p3

    invoke-virtual {v2, p3}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 3585
    :cond_2
    iget-object p3, v2, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    new-instance v4, Lo/getUsername;

    invoke-direct {v4, p1}, Lo/getUsername;-><init>(Landroid/content/Context;)V

    iput-object v4, p3, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    .line 3586
    invoke-virtual {v2}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    .line 227
    invoke-static {p0, v2}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 230
    :cond_3
    sget p1, Lo/toStringMap$newSession;->AppBarLayout_expanded:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 231
    sget p1, Lo/toStringMap$newSession;->AppBarLayout_expanded:I

    .line 232
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 231
    invoke-direct {p0, p1, v1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback(ZZZ)V

    .line 237
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_5

    sget p1, Lo/toStringMap$newSession;->AppBarLayout_elevation:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 238
    sget p1, Lo/toStringMap$newSession;->AppBarLayout_elevation:I

    .line 239
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    .line 238
    invoke-static {p0, p1}, Lo/getExperimentsToAdd;->ICustomTabsCallback(Landroid/view/View;F)V

    .line 242
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_7

    .line 245
    sget p1, Lo/toStringMap$newSession;->AppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 246
    sget p1, Lo/toStringMap$newSession;->AppBarLayout_android_keyboardNavigationCluster:I

    .line 247
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 246
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setKeyboardNavigationCluster(Z)V

    .line 249
    :cond_6
    sget p1, Lo/toStringMap$newSession;->AppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 250
    sget p1, Lo/toStringMap$newSession;->AppBarLayout_android_touchscreenBlocksFocus:I

    .line 251
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 250
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setTouchscreenBlocksFocus(Z)V

    .line 255
    :cond_7
    sget p1, Lo/toStringMap$newSession;->AppBarLayout_liftOnScroll:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback:Z

    .line 256
    sget p1, Lo/toStringMap$newSession;->AppBarLayout_liftOnScrollTargetViewId:I

    .line 257
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->warmup:I

    .line 259
    sget p1, Lo/toStringMap$newSession;->AppBarLayout_statusBarForeground:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    .line 260
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 262
    new-instance p1, Lcom/google/android/material/appbar/AppBarLayout$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout$1;-><init>(Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Lo/ArrayCreatingInputMerger$extraCallback;)V

    return-void
.end method

.method private static ICustomTabsCallback(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;
    .locals 2

    .line 587
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 588
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 589
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 590
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 592
    :cond_1
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private ICustomTabsCallback(ZZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    or-int/2addr p1, p2

    if-eqz p3, :cond_2

    const/16 v0, 0x8

    :cond_2
    or-int/2addr p1, v0

    .line 563
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->onNavigationEvent:I

    .line 567
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private extraCallback()Z
    .locals 4

    .line 975
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 976
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 977
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-static {v0}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method final ICustomTabsCallback()I
    .locals 9

    .line 659
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->onTransact:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 665
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_6

    .line 666
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 667
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    .line 668
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 669
    iget v6, v4, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;->onNavigationEvent:I

    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_5

    .line 673
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v4

    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_1

    .line 677
    invoke-static {v3}, Lo/unregisterCallbackListener;->warmup(Landroid/view/View;)I

    move-result v4

    :goto_1
    add-int/2addr v7, v4

    goto :goto_2

    :cond_1
    and-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_2

    .line 680
    invoke-static {v3}, Lo/unregisterCallbackListener;->warmup(Landroid/view/View;)I

    move-result v4

    sub-int v4, v5, v4

    goto :goto_1

    :cond_2
    add-int/2addr v7, v5

    :goto_2
    if-nez v0, :cond_4

    .line 685
    invoke-static {v3}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13967
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    sub-int/2addr v5, v3

    .line 688
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_4
    add-int/2addr v2, v7

    goto :goto_4

    :cond_5
    if-gtz v2, :cond_6

    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 697
    :cond_6
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->onTransact:I

    return v0
.end method

.method final ICustomTabsCallback(Landroid/view/View;)Z
    .locals 4

    .line 16910
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->warmup:I

    if-eq v0, v2, :cond_2

    if-eqz p1, :cond_0

    .line 16913
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 16915
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 16918
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->warmup:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 16921
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    .line 16924
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    :cond_3
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_6

    .line 905
    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-lez p1, :cond_6

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 572
    instance-of p1, p1, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 380
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5489
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->asBinder:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5967
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 384
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v1, 0x0

    .line 385
    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->asInterface:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 386
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->asBinder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 387
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 393
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 395
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->asBinder:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method final extraCallback(Z)Z
    .locals 6

    .line 828
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->newSession:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_4

    .line 829
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->newSession:Z

    .line 830
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 831
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lo/setFirebaseUIVersion;

    if-eqz v0, :cond_3

    .line 832
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lo/setFirebaseUIVersion;

    .line 15841
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lo/toStringMap$onMessageChannelReady;->design_appbar_elevation:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 15845
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->getInterfaceDescriptor:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 15846
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    aput v5, p1, v1

    aput v3, p1, v2

    .line 15849
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->getInterfaceDescriptor:Landroid/animation/ValueAnimator;

    .line 15851
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lo/toStringMap$ICustomTabsCallback$Stub;->app_bar_elevation_anim_duration:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v3, v1

    .line 15850
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15852
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->getInterfaceDescriptor:Landroid/animation/ValueAnimator;

    sget-object v1, Lo/preferLastSpan$ICustomTabsCallback$Stub;->onMessageChannelReady:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 15853
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->getInterfaceDescriptor:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$5;

    invoke-direct {v1, v0}, Lcom/google/android/material/appbar/AppBarLayout$5;-><init>(Lo/setFirebaseUIVersion;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15860
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->getInterfaceDescriptor:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 18577
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    invoke-direct {v0}, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;-><init>()V

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 17577
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    invoke-direct {v0}, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;-><init>()V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 18582
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 125
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 17582
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 125
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 519
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 521
    invoke-static {p0}, Lo/extraCallback;->extraCallback(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    .line 778
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->postMessage:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 781
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->postMessage:[I

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->postMessage:[I

    .line 784
    array-length v1, v0

    add-int/2addr p1, v1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    const/4 v1, 0x0

    .line 786
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsService:Z

    if-eqz v2, :cond_1

    sget v2, Lo/toStringMap$extraCallback;->state_liftable:I

    goto :goto_0

    :cond_1
    sget v2, Lo/toStringMap$extraCallback;->state_liftable:I

    neg-int v2, v2

    :goto_0
    aput v2, v0, v1

    const/4 v1, 0x1

    .line 787
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsService:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->newSession:Z

    if-eqz v2, :cond_2

    sget v2, Lo/toStringMap$extraCallback;->state_lifted:I

    goto :goto_1

    :cond_2
    sget v2, Lo/toStringMap$extraCallback;->state_lifted:I

    neg-int v2, v2

    :goto_1
    aput v2, v0, v1

    const/4 v1, 0x2

    .line 791
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsService:Z

    if-eqz v2, :cond_3

    sget v2, Lo/toStringMap$extraCallback;->state_collapsible:I

    goto :goto_2

    :cond_3
    sget v2, Lo/toStringMap$extraCallback;->state_collapsible:I

    neg-int v2, v2

    :goto_2
    aput v2, v0, v1

    const/4 v1, 0x3

    .line 792
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsService:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->newSession:Z

    if-eqz v2, :cond_4

    sget v2, Lo/toStringMap$extraCallback;->state_collapsed:I

    goto :goto_3

    :cond_4
    sget v2, Lo/toStringMap$extraCallback;->state_collapsed:I

    neg-int v2, v2

    :goto_3
    aput v2, v0, v1

    .line 794
    invoke-static {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object p1

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 597
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 12928
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 12929
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 12931
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 450
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 452
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8967
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/getVolumeAttributes;->extraCallback()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 455
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    sub-int/2addr p4, p2

    :goto_1
    if-ltz p4, :cond_1

    .line 456
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-static {p5, p1}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    .line 9503
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback$Stub:I

    .line 9504
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->onTransact:I

    .line 9505
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->onRelationshipValidationResult:I

    .line 462
    iput-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->onPostMessage:Z

    .line 463
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p4, 0x0

    :goto_2
    if-ge p4, p1, :cond_3

    .line 464
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 465
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    .line 10169
    iget-object p5, p5, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;->extraCallback:Landroid/view/animation/Interpolator;

    if-eqz p5, :cond_2

    .line 469
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->onPostMessage:Z

    goto :goto_3

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 474
    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->asBinder:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    .line 475
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    .line 10967
    iget-object p5, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Lo/getVolumeAttributes;->extraCallback()I

    move-result p5

    goto :goto_4

    :cond_4
    const/4 p5, 0x0

    .line 475
    :goto_4
    invoke-virtual {p1, p3, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 480
    :cond_5
    iget-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback:Z

    if-nez p1, :cond_a

    .line 11493
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p4, 0x0

    :goto_5
    if-ge p4, p1, :cond_8

    .line 11494
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    .line 12174
    iget v0, p5, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;->onNavigationEvent:I

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_6

    iget p5, p5, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;->onNavigationEvent:I

    and-int/lit8 p5, p5, 0xa

    if-eqz p5, :cond_6

    const/4 p5, 0x1

    goto :goto_6

    :cond_6
    const/4 p5, 0x0

    :goto_6
    if-eqz p5, :cond_7

    const/4 p1, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_9

    goto :goto_8

    :cond_9
    const/4 p2, 0x0

    .line 12809
    :cond_a
    :goto_8
    iget-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsService:Z

    if-eq p1, p2, :cond_b

    .line 12810
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsService:Z

    .line 12811
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_b
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 420
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 424
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_6

    .line 426
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 427
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 428
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_0

    goto :goto_1

    .line 7967
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    goto :goto_1

    .line 434
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 6967
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    .line 434
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-gez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    if-le p1, p2, :cond_5

    move v0, p2

    goto :goto_1

    :cond_5
    move v0, p1

    .line 442
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setMeasuredDimension(II)V

    :cond_6
    const/4 p1, -0x1

    .line 8503
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback$Stub:I

    .line 8504
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->onTransact:I

    .line 8505
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->onRelationshipValidationResult:I

    return-void
.end method

.method public final onMessageChannelReady()I
    .locals 9

    .line 612
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback$Stub:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 617
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 618
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 619
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    .line 620
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 621
    iget v7, v5, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;->onNavigationEvent:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_4

    .line 625
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    if-nez v2, :cond_2

    .line 627
    invoke-static {v4}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12967
    iget-object v5, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    sub-int/2addr v3, v5

    :cond_2
    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_3

    .line 636
    invoke-static {v4}, Lo/unregisterCallbackListener;->warmup(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 645
    :cond_4
    :goto_2
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback$Stub:I

    return v0
.end method

.method final onMessageChannelReady(I)V
    .locals 3

    .line 737
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->asInterface:I

    .line 739
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->onMessageChannelReady:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 746
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 747
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$onPostMessage;

    if-eqz v2, :cond_1

    .line 749
    invoke-interface {v2, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$onPostMessage;->ICustomTabsCallback(Lcom/google/android/material/appbar/AppBarLayout;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onNavigationEvent()I
    .locals 3

    .line 14967
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 757
    :goto_0
    invoke-static {p0}, Lo/unregisterCallbackListener;->warmup(Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_1

    shl-int/lit8 v1, v2, 0x1

    :goto_1
    add-int/2addr v1, v0

    return v1

    .line 764
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 766
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lo/unregisterCallbackListener;->warmup(Landroid/view/View;)I

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 773
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method final onPostMessage()I
    .locals 9

    .line 702
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->onRelationshipValidationResult:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 708
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 709
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 710
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    .line 711
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 712
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 714
    iget v5, v5, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;->onNavigationEvent:I

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_2

    add-int/2addr v3, v6

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 724
    invoke-static {v4}, Lo/unregisterCallbackListener;->warmup(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 733
    :cond_2
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->onRelationshipValidationResult:I

    return v0
.end method

.method public setElevation(F)V
    .locals 0

    .line 527
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 529
    invoke-static {p0, p1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;F)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 544
    invoke-static {p0}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 559
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback(ZZZ)V

    return-void
.end method

.method public setLiftOnScroll(Z)V
    .locals 0

    .line 872
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback:Z

    return-void
.end method

.method public setLiftOnScrollTargetViewId(I)V
    .locals 0

    .line 885
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->warmup:I

    .line 15928
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 15929
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    const/4 p1, 0x0

    .line 15931
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 514
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    .line 511
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->asBinder:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_7

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 327
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->asBinder:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    .line 329
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->asBinder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->asBinder:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Lo/MediaMetadataCompat$BitmapKey;->extraCallback(Landroid/graphics/drawable/Drawable;I)Z

    .line 333
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->asBinder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 334
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->asBinder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4489
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->asBinder:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 4967
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-lez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    xor-int/2addr p1, v0

    .line 4485
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 337
    invoke-static {p0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public setStatusBarForegroundColor(I)V
    .locals 1

    .line 351
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarForegroundResource(I)V
    .locals 1

    .line 364
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTargetElevation(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 943
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 944
    invoke-static {p0, p1}, Lo/getExperimentsToAdd;->ICustomTabsCallback(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 410
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 413
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->asBinder:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 414
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 405
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->asBinder:Landroid/graphics/drawable/Drawable;

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
