.class final Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 236
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_0

    return v1

    .line 241
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 12067
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 12068
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    .line 12025
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 13160
    iget v4, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage;->extraCallback:I

    const/4 v5, 0x2

    if-ne v4, v2, :cond_2

    new-array v1, v5, [F

    .line 13891
    fill-array-data v1, :array_0

    .line 13904
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 13905
    sget-object v3, Lo/preferLastSpan$ICustomTabsCallback$Stub;->onMessageChannelReady:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13906
    new-instance v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;

    invoke-direct {v3, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0x4b

    .line 13892
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13893
    new-instance v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;

    invoke-direct {v3, v0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13900
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 13978
    :cond_2
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v5, [I

    aput v1, v5, v1

    .line 14016
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 14017
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 14018
    instance-of v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_3

    .line 14019
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    :cond_3
    aput v1, v5, v2

    .line 13979
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 13980
    sget-object v1, Lo/preferLastSpan$ICustomTabsCallback$Stub;->onPostMessage:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xfa

    .line 13981
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13982
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;

    invoke-direct {v1, v0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13994
    new-instance p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;

    invoke-direct {p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v4, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14012
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 12029
    :cond_4
    invoke-static {}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraCallback()V

    :goto_1
    return v2

    .line 238
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 1697
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;

    invoke-direct {v0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 1728
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1729
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1731
    instance-of v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    if-eqz v4, :cond_6

    .line 1732
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 3693
    new-instance v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    invoke-direct {v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    .line 2793
    move-object v5, v4

    check-cast v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 4186
    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->onRelationshipValidationResult:Lcom/google/android/material/snackbar/BaseTransientBottomBar$ICustomTabsCallback;

    .line 4216
    iput-object v3, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar$ICustomTabsCallback;->onNavigationEvent:Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;

    .line 2796
    new-instance v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;

    invoke-direct {v5, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 5112
    iput-object v5, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onPostMessage:Lcom/google/android/material/behavior/SwipeDismissBehavior$onPostMessage;

    .line 2821
    invoke-virtual {v0, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;)V

    const/16 v4, 0x50

    .line 2825
    iput v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 6440
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6442
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onMessageChannelReady:Ljava/lang/String;

    const-string v4, "Unable to update margins because layout params are not MarginLayoutParams"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 1740
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1741
    invoke-virtual {v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1744
    :cond_7
    invoke-static {v3}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7067
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 7068
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_9

    .line 7847
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;

    invoke-direct {v0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 6766
    :cond_9
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9037
    sget-object p1, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    if-nez p1, :cond_a

    .line 9038
    new-instance p1, Lo/FirebaseAuthMultiFactorException;

    invoke-direct {p1}, Lo/FirebaseAuthMultiFactorException;-><init>()V

    sput-object p1, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 9040
    :cond_a
    sget-object p1, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 9137
    iget-object p1, p1, Lo/FirebaseAuthMultiFactorException;->onPostMessage:Ljava/lang/Object;

    monitor-enter p1

    .line 9141
    monitor-exit p1

    goto :goto_3

    .line 1750
    :cond_b
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;

    invoke-direct {v0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    :goto_3
    return v2

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
