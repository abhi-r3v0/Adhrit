.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ExtendedFloatingActionButtonBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private extraCallback:Z

.field private onMessageChannelReady:Landroid/graphics/Rect;

.field private onNavigationEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 659
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;-><init>()V

    const/4 v0, 0x0

    .line 660
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->extraCallback:Z

    const/4 v0, 0x1

    .line 661
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onNavigationEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 668
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 669
    sget-object v0, Lo/toStringMap$newSession;->ExtendedFloatingActionButton_Behavior_Layout:[I

    .line 670
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 672
    sget p2, Lo/toStringMap$newSession;->ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide:I

    const/4 v0, 0x0

    .line 673
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->extraCallback:Z

    .line 676
    sget p2, Lo/toStringMap$newSession;->ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink:I

    const/4 v0, 0x1

    .line 677
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onNavigationEvent:Z

    .line 680
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private ICustomTabsCallback(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 2

    .line 820
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onNavigationEvent(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 823
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 824
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v0

    const/4 v0, 0x0

    if-ge p1, v1, :cond_2

    .line 8848
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onNavigationEvent:Z

    if-eqz p1, :cond_1

    .line 9070
    iget-object p1, p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ICustomTabsCallback$Stub:Lo/getAdditionalUserInfo;

    goto :goto_0

    .line 10070
    :cond_1
    iget-object p1, p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onTransact:Lo/getAdditionalUserInfo;

    .line 8852
    :goto_0
    invoke-static {p2, p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onMessageChannelReady(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getAdditionalUserInfo;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;)V

    goto :goto_2

    .line 10871
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onNavigationEvent:Z

    if-eqz p1, :cond_3

    .line 11070
    iget-object p1, p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onRelationshipValidationResult:Lo/getAdditionalUserInfo;

    goto :goto_1

    .line 12070
    :cond_3
    iget-object p1, p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->asInterface:Lo/getAdditionalUserInfo;

    .line 10875
    :goto_1
    invoke-static {p2, p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onMessageChannelReady(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getAdditionalUserInfo;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method private extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)Z
    .locals 7

    .line 884
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 885
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 886
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 887
    instance-of v5, v4, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v5, :cond_0

    .line 888
    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0, p1, v4, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 12758
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 12759
    instance-of v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    if-eqz v6, :cond_1

    .line 12760
    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 12952
    iget-object v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    .line 12760
    instance-of v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 892
    invoke-direct {p0, v4, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->ICustomTabsCallback(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 898
    :cond_3
    :goto_2
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNavigationEvent(Landroid/view/View;I)V

    .line 14070
    iget-object p3, p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ICustomTabsCallback:Landroid/graphics/Rect;

    if-eqz p3, :cond_9

    .line 13929
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    if-lez v0, :cond_9

    .line 13931
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 13936
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_4

    .line 13938
    iget v1, p3, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 13939
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gt v1, v3, :cond_5

    .line 13941
    iget v1, p3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 13943
    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p1, v4

    if-lt v3, p1, :cond_6

    .line 13945
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 13946
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-gt p1, v0, :cond_7

    .line 13948
    iget p1, p3, Landroid/graphics/Rect;->top:I

    neg-int v2, p1

    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    .line 13952
    invoke-static {p2, v2}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    :cond_8
    if-eqz v1, :cond_9

    .line 13955
    invoke-static {p2, v1}, Lo/unregisterCallbackListener;->asBinder(Landroid/view/View;I)V

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method private onNavigationEvent(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 2

    .line 778
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 779
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->extraCallback:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onNavigationEvent:Z

    if-nez v0, :cond_0

    return v1

    .line 3926
    :cond_0
    iget p2, p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onRelationshipValidationResult:I

    .line 783
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eq p2, p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 1

    .line 796
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onNavigationEvent(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onMessageChannelReady:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 801
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onMessageChannelReady:Landroid/graphics/Rect;

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onMessageChannelReady:Landroid/graphics/Rect;

    .line 806
    invoke-static {p1, p2, v0}, Lo/getPivotY;->extraCallback(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 808
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->onNavigationEvent()I

    move-result p2

    const/4 v0, 0x0

    if-gt p1, p2, :cond_3

    .line 4848
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onNavigationEvent:Z

    if-eqz p1, :cond_2

    .line 5070
    iget-object p1, p3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ICustomTabsCallback$Stub:Lo/getAdditionalUserInfo;

    goto :goto_0

    .line 6070
    :cond_2
    iget-object p1, p3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onTransact:Lo/getAdditionalUserInfo;

    .line 4852
    :goto_0
    invoke-static {p3, p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onMessageChannelReady(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getAdditionalUserInfo;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;)V

    goto :goto_2

    .line 6871
    :cond_3
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onNavigationEvent:Z

    if-eqz p1, :cond_4

    .line 7070
    iget-object p1, p3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onRelationshipValidationResult:Lo/getAdditionalUserInfo;

    goto :goto_1

    .line 8070
    :cond_4
    iget-object p1, p3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->asInterface:Lo/getAdditionalUserInfo;

    .line 6875
    :goto_1
    invoke-static {p3, p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onMessageChannelReady(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getAdditionalUserInfo;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 646
    check-cast p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)Z

    move-result p1

    return p1
.end method

.method public final extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;)V
    .locals 1

    .line 737
    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onTransact:I

    if-nez v0, :cond_0

    const/16 v0, 0x50

    .line 740
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onTransact:I

    :cond_0
    return-void
.end method

.method public final synthetic extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 4

    .line 646
    check-cast p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 15070
    iget-object p1, p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ICustomTabsCallback:Landroid/graphics/Rect;

    .line 14913
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    .line 14914
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 14915
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 14916
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p1

    .line 14912
    invoke-virtual {p3, v0, v1, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 646
    check-cast p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 15747
    instance-of v0, p3, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 15750
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z

    goto :goto_1

    .line 15758
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 15759
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    if-eqz v0, :cond_1

    .line 15760
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 15952
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    .line 15760
    instance-of p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 15752
    invoke-direct {p0, p3, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->ICustomTabsCallback(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z

    :cond_2
    :goto_1
    return v1
.end method
