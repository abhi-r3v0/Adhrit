.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final IPostMessageService$Stub$Proxy:I


# instance fields
.field ICustomTabsCallback:Lo/setFirebaseUIVersion;

.field public ICustomTabsCallback$Stub:Z

.field ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public ICustomTabsService:I

.field private ICustomTabsService$Stub:Z

.field private ICustomTabsService$Stub$Proxy:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "TV;>.extraCallback;"
        }
    .end annotation
.end field

.field private INotificationSideChannel:F

.field private INotificationSideChannel$Default:I

.field private INotificationSideChannel$Stub:Landroid/view/VelocityTracker;

.field private INotificationSideChannel$Stub$Proxy:I

.field private IPostMessageService:I

.field private IPostMessageService$Stub:Z

.field asBinder:I

.field asInterface:I

.field private cancel:F

.field private cancelAll:Z

.field extraCallback:Z

.field extraCommand:I

.field private getDefaultImpl:Z

.field getInterfaceDescriptor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field

.field mayLaunchUrl:Z

.field newSession:Lo/rate;

.field private notify:Landroid/animation/ValueAnimator;

.field onMessageChannelReady:I

.field public onNavigationEvent:I

.field public onPostMessage:Z

.field onRelationshipValidationResult:I

.field public onTransact:Z

.field public final postMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final read:Lo/rate$ICustomTabsCallback;

.field private requestPostMessageChannel:I

.field private setDefaultImpl:I

.field private updateVisuals:F

.field private validateRelationship:Lo/useAppLanguage;

.field warmup:I

.field private write:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 214
    sget v0, Lo/toStringMap$onRelationshipValidationResult;->Widget_Design_BottomSheet_Modal:I

    sput v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->IPostMessageService$Stub$Proxy:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 261
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;-><init>()V

    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->requestPostMessageChannel:I

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService$Stub$Proxy:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 222
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 226
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cancel:F

    const/4 v0, 0x4

    .line 232
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    .line 1204
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->read:Lo/rate$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 264
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->requestPostMessageChannel:I

    const/4 v1, 0x1

    .line 187
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    const/4 v2, 0x0

    .line 210
    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService$Stub$Proxy:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;

    const/high16 v3, 0x3f000000    # 0.5f

    .line 222
    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel:F

    const/high16 v4, -0x40800000    # -1.0f

    .line 226
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cancel:F

    const/4 v5, 0x4

    .line 232
    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    .line 249
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    .line 1204
    new-instance v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;

    invoke-direct {v5, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->read:Lo/rate$ICustomTabsCallback;

    .line 265
    sget-object v5, Lo/toStringMap$newSession;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 266
    sget v6, Lo/toStringMap$newSession;->BottomSheetBehavior_Layout_shapeAppearance:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->IPostMessageService$Stub:Z

    .line 267
    sget v6, Lo/toStringMap$newSession;->BottomSheetBehavior_Layout_backgroundTint:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 269
    sget v2, Lo/toStringMap$newSession;->BottomSheetBehavior_Layout_backgroundTint:I

    .line 270
    invoke-static {p1, v5, v2}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 272
    invoke-direct {p0, p1, p2, v6, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3102
    :cond_0
    invoke-direct {p0, p1, p2, v6, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V

    :goto_0
    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 3130
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->notify:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x1f4

    .line 3131
    invoke-virtual {p2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3132
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->notify:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;

    invoke-direct {v2, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 278
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p2, v2, :cond_1

    .line 279
    sget p2, Lo/toStringMap$newSession;->BottomSheetBehavior_Layout_android_elevation:I

    invoke-virtual {v5, p2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cancel:F

    .line 282
    :cond_1
    sget p2, Lo/toStringMap$newSession;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v5, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    const/4 v2, -0x1

    if-eqz p2, :cond_2

    .line 283
    iget v4, p2, Landroid/util/TypedValue;->data:I

    if-ne v4, v2, :cond_2

    .line 284
    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 3702
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(I)V

    goto :goto_1

    .line 286
    :cond_2
    sget p2, Lo/toStringMap$newSession;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    .line 287
    invoke-virtual {v5, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 4702
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(I)V

    .line 290
    :goto_1
    sget p2, Lo/toStringMap$newSession;->BottomSheetBehavior_Layout_behavior_hideable:I

    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 291
    sget p2, Lo/toStringMap$newSession;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    .line 292
    invoke-virtual {v5, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 5677
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eq v1, p2, :cond_5

    .line 5680
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    .line 5684
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_3

    .line 5685
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback()V

    .line 5688
    :cond_3
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    const/4 v1, 0x6

    if-ne p2, v1, :cond_4

    const/4 p2, 0x3

    goto :goto_2

    :cond_4
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    :goto_2
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(I)V

    .line 5690
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onPostMessage()V

    .line 293
    :cond_5
    sget p2, Lo/toStringMap$newSession;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    .line 294
    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 5838
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 295
    sget p2, Lo/toStringMap$newSession;->BottomSheetBehavior_Layout_behavior_saveFlags:I

    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 5862
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->requestPostMessageChannel:I

    .line 296
    sget p2, Lo/toStringMap$newSession;->BottomSheetBehavior_Layout_behavior_halfExpandedRatio:I

    .line 297
    invoke-virtual {v5, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-lez v1, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-gez v1, :cond_7

    .line 6771
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel:F

    .line 298
    sget p2, Lo/toStringMap$newSession;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_6

    .line 6788
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady:I

    .line 299
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateVisuals:F

    return-void

    .line 6786
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset must be greater than or equal to 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6769
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ratio must be a float value between 0 and 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private ICustomTabsCallback$Stub(I)V
    .locals 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1008
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService$Stub:Z

    if-eq v1, p1, :cond_4

    .line 1009
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService$Stub:Z

    .line 1010
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback:Lo/setFirebaseUIVersion;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->notify:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    .line 1011
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1012
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->notify:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    return-void

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    sub-float/2addr v1, p1

    .line 1016
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->notify:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    aput v1, v0, v3

    aput p1, v0, v2

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1017
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->notify:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method private extraCallback(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1085
    invoke-static {p1}, Lo/unregisterCallbackListener;->notify(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 1088
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1089
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1090
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 1091
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private extraCallback()V
    .locals 3

    .line 1025
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 1026
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->IPostMessageService:I

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->warmup:I

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Stub$Proxy:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1028
    :cond_0
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onNavigationEvent:I

    .line 1031
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz v1, :cond_1

    .line 1032
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->warmup:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    return-void

    .line 1034
    :cond_1
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->warmup:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    return-void
.end method

.method private extraCallback(Z)V
    .locals 7

    .line 1492
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 1496
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1497
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_1

    return-void

    .line 1501
    :cond_1
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1502
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1503
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    if-eqz p1, :cond_3

    .line 1504
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->write:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 1505
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->write:Ljava/util/Map;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    .line 1513
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1514
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_6

    if-nez p1, :cond_4

    .line 1519
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->write:Ljava/util/Map;

    if-eqz v5, :cond_6

    .line 1520
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1522
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->write:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    goto :goto_2

    .line 1526
    :cond_4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_5

    .line 1527
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->write:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v5, 0x4

    .line 1530
    invoke-static {v4, v5}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 1536
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->write:Ljava/util/Map;

    :cond_8
    return-void
.end method

.method public static onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    .line 1479
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1480
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    if-eqz v0, :cond_1

    .line 1483
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 21952
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    .line 1485
    instance-of v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 1488
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0

    .line 1486
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not associated with BottomSheetBehavior"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1481
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not a child of CoordinatorLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private onPostMessage()V
    .locals 6

    .line 1541
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 1544
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v1, 0x80000

    .line 1548
    invoke-static {v0, v1}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;I)V

    const/high16 v1, 0x40000

    .line 1549
    invoke-static {v0, v1}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;I)V

    const/high16 v1, 0x100000

    .line 1550
    invoke-static {v0, v1}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;I)V

    .line 1552
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    .line 1553
    sget-object v1, Lo/getPlaybackState$extraCallback;->validateRelationship:Lo/getPlaybackState$extraCallback;

    .line 22584
    new-instance v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;

    invoke-direct {v4, p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    invoke-static {v0, v1, v2, v4}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Lo/getPlaybackState$extraCallback;Ljava/lang/CharSequence;Lo/getRatingType;)V

    .line 1556
    :cond_2
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 1566
    :cond_3
    sget-object v1, Lo/getPlaybackState$extraCallback;->updateVisuals:Lo/getPlaybackState$extraCallback;

    .line 24584
    new-instance v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;

    invoke-direct {v3, p0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    invoke-static {v0, v1, v2, v3}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Lo/getPlaybackState$extraCallback;Ljava/lang/CharSequence;Lo/getRatingType;)V

    .line 1568
    sget-object v1, Lo/getPlaybackState$extraCallback;->mayLaunchUrl:Lo/getPlaybackState$extraCallback;

    .line 25584
    new-instance v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;

    invoke-direct {v3, p0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    invoke-static {v0, v1, v2, v3}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Lo/getPlaybackState$extraCallback;Ljava/lang/CharSequence;Lo/getRatingType;)V

    return-void

    .line 1574
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz v1, :cond_5

    const/4 v3, 0x3

    .line 1575
    :cond_5
    sget-object v1, Lo/getPlaybackState$extraCallback;->mayLaunchUrl:Lo/getPlaybackState$extraCallback;

    .line 26584
    new-instance v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;

    invoke-direct {v4, p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    invoke-static {v0, v1, v2, v4}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Lo/getPlaybackState$extraCallback;Ljava/lang/CharSequence;Lo/getRatingType;)V

    :goto_0
    return-void

    .line 1559
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz v1, :cond_7

    const/4 v3, 0x4

    .line 1560
    :cond_7
    sget-object v1, Lo/getPlaybackState$extraCallback;->updateVisuals:Lo/getPlaybackState$extraCallback;

    .line 23584
    new-instance v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;

    invoke-direct {v4, p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    invoke-static {v0, v1, v2, v4}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Lo/getPlaybackState$extraCallback;Ljava/lang/CharSequence;Lo/getRatingType;)V

    return-void
.end method

.method private onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V
    .locals 4

    .line 1110
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->IPostMessageService$Stub:Z

    if-eqz v0, :cond_2

    .line 1111
    sget v0, Lo/toStringMap$extraCallback;->bottomSheetStyle:I

    sget v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->IPostMessageService$Stub$Proxy:I

    .line 16454
    new-instance v2, Lo/startActivityForSignInWithProvider;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    invoke-static {p1, p2, v0, v1, v2}, Lo/useAppLanguage;->extraCallback(Landroid/content/Context;Landroid/util/AttributeSet;IILo/signOut;)Lo/useAppLanguage$ICustomTabsCallback;

    move-result-object p2

    .line 17429
    new-instance v0, Lo/useAppLanguage;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 1113
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->validateRelationship:Lo/useAppLanguage;

    .line 1115
    new-instance p2, Lo/setFirebaseUIVersion;

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->validateRelationship:Lo/useAppLanguage;

    invoke-direct {p2, v0}, Lo/setFirebaseUIVersion;-><init>(Lo/useAppLanguage;)V

    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback:Lo/setFirebaseUIVersion;

    .line 17585
    iget-object v0, p2, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    new-instance v1, Lo/getUsername;

    invoke-direct {v1, p1}, Lo/getUsername;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    .line 17586
    invoke-virtual {p2}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1119
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback:Lo/setFirebaseUIVersion;

    .line 18288
    iget-object p2, p1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object p2, p2, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq p2, p4, :cond_0

    .line 18289
    iget-object p2, p1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p4, p2, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 18290
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    :cond_0
    return-void

    .line 1122
    :cond_1
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 1123
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x1010031

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1124
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback:Lo/setFirebaseUIVersion;

    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, p2}, Lo/setFirebaseUIVersion;->setTint(I)V

    :cond_2
    return-void
.end method

.method private onTransact(I)V
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 947
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 948
    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lo/unregisterCallbackListener;->INotificationSideChannel$Stub(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 958
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onNavigationEvent(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 336
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->ICustomTabsCallback()V

    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    .line 339
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->newSession:Lo/rate;

    return-void
.end method

.method final ICustomTabsCallback(I)V
    .locals 3

    .line 974
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    if-ne v0, p1, :cond_0

    return-void

    .line 977
    :cond_0
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    .line 979
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return-void

    .line 983
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    .line 991
    :cond_4
    invoke-direct {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(Z)V

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v1, 0x1

    .line 989
    invoke-direct {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(Z)V

    .line 994
    :cond_6
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub(I)V

    .line 995
    :goto_2
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 996
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;->onPostMessage(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 998
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onPostMessage()V

    return-void
.end method

.method public final ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 313
    check-cast p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;

    .line 314
    invoke-virtual {p3}, Lo/pause;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 7051
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->requestPostMessageChannel:I

    const/4 p2, 0x2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_1

    .line 7055
    :cond_0
    iget p1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->onNavigationEvent:I

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onNavigationEvent:I

    .line 7057
    :cond_1
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->requestPostMessageChannel:I

    if-eq p1, v2, :cond_2

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_3

    .line 7059
    :cond_2
    iget-boolean p1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->ICustomTabsCallback:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    .line 7061
    :cond_3
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->requestPostMessageChannel:I

    if-eq p1, v2, :cond_4

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_5

    .line 7062
    :cond_4
    iget-boolean p1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->extraCallback:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub:Z

    .line 7064
    :cond_5
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->requestPostMessageChannel:I

    if-eq p1, v2, :cond_6

    const/16 v2, 0x8

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_7

    .line 7066
    :cond_6
    iget-boolean p1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->onMessageChannelReady:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 318
    :cond_7
    iget p1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->onPostMessage:I

    if-eq p1, v1, :cond_9

    iget p1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->onPostMessage:I

    if-ne p1, p2, :cond_8

    goto :goto_0

    .line 321
    :cond_8
    iget p1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->onPostMessage:I

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    return-void

    .line 319
    :cond_9
    :goto_0
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    return-void
.end method

.method public final ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 1

    .line 809
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub:Z

    if-eq v0, p1, :cond_1

    .line 810
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub:Z

    if-nez p1, :cond_0

    .line 811
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    .line 813
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 815
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onPostMessage()V

    :cond_1
    return-void
.end method

.method public final ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 345
    invoke-static {p1}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez v0, :cond_7

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lo/toStringMap$onMessageChannelReady;->design_bottom_sheet_peek_height_min:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->IPostMessageService:I

    .line 353
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    .line 356
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->IPostMessageService$Stub:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback:Lo/setFirebaseUIVersion;

    if-eqz v0, :cond_1

    .line 357
    invoke-static {p2, v0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback:Lo/setFirebaseUIVersion;

    if-eqz v0, :cond_6

    .line 362
    iget v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cancel:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v5, v6

    if-nez v6, :cond_2

    .line 363
    invoke-static {p2}, Lo/unregisterCallbackListener;->mayLaunchUrl(Landroid/view/View;)F

    move-result v5

    .line 7651
    :cond_2
    iget-object v6, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v6, v6, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_3

    .line 7652
    iget-object v6, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput v5, v6, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 7653
    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    .line 365
    :cond_3
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService$Stub:Z

    .line 366
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback:Lo/setFirebaseUIVersion;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8616
    :goto_1
    iget-object v6, v5, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v6, v6, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    cmpl-float v6, v6, v0

    if-eqz v6, :cond_6

    .line 8617
    iget-object v6, v5, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput v0, v6, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    .line 8618
    iput-boolean v1, v5, Lo/setFirebaseUIVersion;->RemoteActionCompatParcelizer:Z

    .line 8619
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 368
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onPostMessage()V

    .line 369
    invoke-static {p2}, Lo/unregisterCallbackListener;->asBinder(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_7

    .line 371
    invoke-static {p2, v1}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    .line 374
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->newSession:Lo/rate;

    if-nez v0, :cond_8

    .line 375
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->read:Lo/rate$ICustomTabsCallback;

    invoke-static {p1, v0}, Lo/rate;->onMessageChannelReady(Landroid/view/ViewGroup;Lo/rate$ICustomTabsCallback;)Lo/rate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->newSession:Lo/rate;

    .line 378
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 380
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNavigationEvent(Landroid/view/View;I)V

    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Stub$Proxy:I

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->warmup:I

    .line 384
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    .line 9039
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->warmup:I

    int-to-float p1, p1

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel:F

    sub-float/2addr v3, p3

    mul-float p1, p1, v3

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    .line 386
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback()V

    .line 388
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    if-ne p1, v2, :cond_a

    .line 9153
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    goto :goto_2

    :cond_9
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady:I

    .line 389
    :goto_2
    invoke-static {p2, p1}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    goto :goto_3

    :cond_a
    const/4 p3, 0x6

    if-ne p1, p3, :cond_b

    .line 391
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    invoke-static {p2, p1}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    goto :goto_3

    .line 392
    :cond_b
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub:Z

    if-eqz p3, :cond_c

    const/4 p3, 0x5

    if-ne p1, p3, :cond_c

    .line 393
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->warmup:I

    invoke-static {p2, p1}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    goto :goto_3

    .line 394
    :cond_c
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    const/4 p3, 0x4

    if-ne p1, p3, :cond_d

    .line 395
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    invoke-static {p2, p1}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    goto :goto_3

    :cond_d
    if-eq p1, v1, :cond_e

    const/4 p3, 0x2

    if-ne p1, p3, :cond_f

    .line 397
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    .line 400
    :cond_f
    :goto_3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    return v1
.end method

.method public final extraCallback(I)V
    .locals 1

    .line 925
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    if-ne p1, v0, :cond_0

    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    .line 930
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 934
    :cond_1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    :cond_2
    return-void

    .line 938
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact(I)V

    return-void
.end method

.method final extraCallback(Landroid/view/View;IIZ)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1178
    iget-object p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->newSession:Lo/rate;

    .line 1180
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p4, v0, p3}, Lo/rate;->onPostMessage(II)Z

    move-result p3

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->newSession:Lo/rate;

    .line 1181
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p4, p1, v0, p3}, Lo/rate;->onPostMessage(Landroid/view/View;II)Z

    move-result p3

    :goto_0
    if-eqz p3, :cond_3

    const/4 p3, 0x2

    .line 1183
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(I)V

    .line 1185
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub(I)V

    .line 1186
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService$Stub$Proxy:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;

    if-nez p3, :cond_1

    .line 1188
    new-instance p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService$Stub$Proxy:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;

    .line 1191
    :cond_1
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService$Stub$Proxy:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;

    .line 19369
    iget-boolean p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;->onMessageChannelReady:Z

    if-nez p3, :cond_2

    .line 1192
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService$Stub$Proxy:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;

    iput p2, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;->ICustomTabsCallback:I

    .line 1193
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService$Stub$Proxy:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;

    invoke-static {p1, p2}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1194
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService$Stub$Proxy:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;

    const/4 p2, 0x1

    .line 20369
    iput-boolean p2, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;->onMessageChannelReady:Z

    return-void

    .line 1197
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService$Stub$Proxy:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;

    iput p2, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;->ICustomTabsCallback:I

    return-void

    .line 1200
    :cond_3
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(I)V

    return-void
.end method

.method public final extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;)V
    .locals 0

    .line 327
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;)V

    const/4 p1, 0x0

    .line 330
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    .line 331
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->newSession:Lo/rate;

    return-void
.end method

.method public extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 407
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 408
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cancelAll:Z

    return v1

    .line 411
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez v0, :cond_1

    .line 10043
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCommand:I

    .line 10044
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Stub:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_1

    .line 10045
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 10046
    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Stub:Landroid/view/VelocityTracker;

    .line 416
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Stub:Landroid/view/VelocityTracker;

    if-nez v5, :cond_2

    .line 417
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Stub:Landroid/view/VelocityTracker;

    .line 419
    :cond_2
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Stub:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v5, 0x2

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_3

    goto :goto_2

    .line 423
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->mayLaunchUrl:Z

    .line 424
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCommand:I

    .line 426
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cancelAll:Z

    if-eqz p2, :cond_8

    .line 427
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cancelAll:Z

    return v1

    .line 432
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    .line 433
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Default:I

    .line 436
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    if-eq v7, v5, :cond_6

    .line 437
    iget-object v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_0

    :cond_5
    move-object v7, v3

    :goto_0
    if-eqz v7, :cond_6

    .line 438
    iget v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Default:I

    invoke-virtual {p1, v7, v6, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 439
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCommand:I

    .line 440
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->mayLaunchUrl:Z

    .line 443
    :cond_6
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCommand:I

    if-ne v7, v4, :cond_7

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Default:I

    .line 445
    invoke-virtual {p1, p2, v6, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Landroid/view/View;II)Z

    move-result p2

    if-nez p2, :cond_7

    const/4 p2, 0x1

    goto :goto_1

    :cond_7
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cancelAll:Z

    .line 449
    :cond_8
    :goto_2
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cancelAll:Z

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->newSession:Lo/rate;

    if-eqz p2, :cond_9

    .line 451
    invoke-virtual {p2, p3}, Lo/rate;->onPostMessage(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_9

    return v2

    .line 457
    :cond_9
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/view/View;

    :cond_a
    if-ne v0, v5, :cond_b

    if-eqz v3, :cond_b

    .line 458
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cancelAll:Z

    if-nez p2, :cond_b

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    if-eq p2, v2, :cond_b

    .line 462
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v3, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->newSession:Lo/rate;

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Default:I

    int-to-float p1, p1

    .line 464
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->newSession:Lo/rate;

    .line 10503
    iget p2, p2, Lo/rate;->onMessageChannelReady:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_b

    return v2

    :cond_b
    return v1
.end method

.method public final onMessageChannelReady(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 718
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onPostMessage:Z

    if-nez p1, :cond_1

    .line 719
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onPostMessage:Z

    goto :goto_1

    .line 722
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onPostMessage:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onNavigationEvent:I

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 723
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onPostMessage:Z

    .line 724
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onNavigationEvent:I

    :goto_1
    if-eqz v0, :cond_3

    .line 729
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    .line 730
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback()V

    .line 731
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 732
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 737
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method public onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 564
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 14153
    iget-boolean p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz p4, :cond_0

    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    goto :goto_0

    :cond_0
    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady:I

    :goto_0
    const/4 v0, 0x3

    if-ne p1, p4, :cond_1

    .line 565
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(I)V

    return-void

    .line 568
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_e

    .line 569
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_e

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getDefaultImpl:Z

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 575
    :cond_2
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDefaultImpl:I

    const/4 p3, 0x6

    const/4 p4, 0x4

    if-lez p1, :cond_4

    .line 15153
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    goto/16 :goto_4

    :cond_3
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady:I

    goto/16 :goto_4

    .line 578
    :cond_4
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub:Z

    if-eqz p1, :cond_6

    .line 16145
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Stub:Landroid/view/VelocityTracker;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    const/16 v1, 0x3e8

    .line 16148
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateVisuals:F

    invoke-virtual {p1, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 16149
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Stub:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCommand:I

    invoke-virtual {p1, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    .line 578
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onNavigationEvent(Landroid/view/View;F)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 579
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->warmup:I

    const/4 v0, 0x5

    goto/16 :goto_4

    .line 581
    :cond_6
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDefaultImpl:I

    if-nez p1, :cond_c

    .line 582
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 583
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz v1, :cond_8

    .line 584
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    sub-int p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p3, p1, :cond_7

    .line 585
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    goto :goto_4

    .line 588
    :cond_7
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    goto :goto_3

    .line 592
    :cond_8
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    if-ge p1, v1, :cond_a

    .line 593
    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    sub-int p4, p1, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    if-ge p1, p4, :cond_9

    .line 594
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady:I

    goto :goto_4

    .line 597
    :cond_9
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    goto :goto_2

    :cond_a
    sub-int v0, p1, v1

    .line 601
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_b

    .line 602
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    goto :goto_2

    .line 605
    :cond_b
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    goto :goto_3

    .line 611
    :cond_c
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-nez p1, :cond_d

    .line 616
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 617
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_d

    .line 618
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    :goto_2
    const/4 v0, 0x6

    goto :goto_4

    .line 621
    :cond_d
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    :goto_3
    const/4 v0, 0x4

    :goto_4
    const/4 p3, 0x0

    .line 626
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(Landroid/view/View;IIZ)V

    .line 627
    iput-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getDefaultImpl:Z

    :cond_e
    :goto_5
    return-void
.end method

.method public onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    const/4 p1, 0x1

    if-ne p7, p1, :cond_0

    return-void

    .line 524
    :cond_0
    iget-object p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    if-eq p3, p4, :cond_2

    return-void

    .line 528
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int p7, p4, p5

    if-lez p5, :cond_6

    .line 12153
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz p3, :cond_3

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    goto :goto_1

    :cond_3
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady:I

    :goto_1
    if-ge p7, p3, :cond_5

    .line 13153
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz p3, :cond_4

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    goto :goto_2

    :cond_4
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady:I

    :goto_2
    sub-int/2addr p4, p3

    .line 532
    aput p4, p6, p1

    .line 533
    aget p3, p6, p1

    neg-int p3, p3

    invoke-static {p2, p3}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    const/4 p3, 0x3

    .line 534
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(I)V

    goto :goto_4

    .line 536
    :cond_5
    aput p5, p6, p1

    neg-int p3, p5

    .line 537
    invoke-static {p2, p3}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    .line 538
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(I)V

    goto :goto_4

    :cond_6
    if-gez p5, :cond_9

    const/4 v0, -0x1

    .line 541
    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-nez p3, :cond_9

    .line 542
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    if-le p7, p3, :cond_8

    iget-boolean p7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub:Z

    if-eqz p7, :cond_7

    goto :goto_3

    :cond_7
    sub-int/2addr p4, p3

    .line 547
    aput p4, p6, p1

    .line 548
    aget p3, p6, p1

    neg-int p3, p3

    invoke-static {p2, p3}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    const/4 p3, 0x4

    .line 549
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(I)V

    goto :goto_4

    .line 543
    :cond_8
    :goto_3
    aput p5, p6, p1

    neg-int p3, p5

    .line 544
    invoke-static {p2, p3}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    .line 545
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(I)V

    .line 553
    :cond_9
    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onPostMessage(I)V

    .line 554
    iput p5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDefaultImpl:I

    .line 555
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getDefaultImpl:Z

    return-void
.end method

.method final onNavigationEvent(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 1159
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    .line 1161
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    .line 1162
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    if-gt v1, v2, :cond_1

    move v0, v2

    const/4 p2, 0x3

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_4

    .line 19153
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady:I

    goto :goto_0

    .line 1169
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    if-ne p2, v0, :cond_5

    .line 1170
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->warmup:I

    :goto_0
    const/4 v1, 0x0

    .line 1174
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(Landroid/view/View;IIZ)V

    return-void

    .line 1172
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Illegal state argument: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onNavigationEvent(Landroid/view/View;F)Z
    .locals 4

    .line 1071
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1074
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    return v3

    .line 1078
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    .line 1079
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onNavigationEvent:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    return v1

    :cond_2
    return v3
.end method

.method public onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 470
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 473
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 474
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez p1, :cond_1

    return v2

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->newSession:Lo/rate;

    if-eqz v1, :cond_2

    .line 478
    invoke-virtual {v1, p3}, Lo/rate;->extraCallback(Landroid/view/MotionEvent;)V

    :cond_2
    if-nez p1, :cond_3

    const/4 v1, -0x1

    .line 11043
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCommand:I

    .line 11044
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Stub:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_3

    .line 11045
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    .line 11046
    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Stub:Landroid/view/VelocityTracker;

    .line 484
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Stub:Landroid/view/VelocityTracker;

    if-nez v1, :cond_4

    .line 485
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Stub:Landroid/view/VelocityTracker;

    .line 487
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Stub:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 490
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cancelAll:Z

    if-nez p1, :cond_5

    .line 491
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->INotificationSideChannel$Default:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->newSession:Lo/rate;

    .line 11503
    iget v1, v1, Lo/rate;->onMessageChannelReady:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    .line 492
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->newSession:Lo/rate;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lo/rate;->extraCallback(Landroid/view/View;I)V

    .line 495
    :cond_5
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cancelAll:Z

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 654
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    .line 506
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDefaultImpl:I

    .line 507
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getDefaultImpl:Z

    and-int/lit8 p2, p5, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public final onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 307
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;

    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;-><init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-object v0
.end method

.method final onPostMessage(I)V
    .locals 4

    .line 1338
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1339
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1340
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    if-le p1, v1, :cond_0

    sub-int p1, v1, p1

    int-to-float p1, p1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->warmup:I

    move v3, v2

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    sub-int p1, v1, p1

    int-to-float p1, p1

    .line 21153
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady:I

    :goto_0
    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/4 v1, 0x0

    .line 1344
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1345
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;

    invoke-virtual {v2, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;->extraCallback(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
