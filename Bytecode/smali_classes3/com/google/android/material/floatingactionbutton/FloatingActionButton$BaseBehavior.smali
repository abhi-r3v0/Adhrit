.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private extraCallback:Landroid/graphics/Rect;

.field private onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 966
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;-><init>()V

    const/4 v0, 0x1

    .line 967
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onPostMessage:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 971
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 972
    sget-object v0, Lo/toStringMap$newSession;->FloatingActionButton_Behavior_Layout:[I

    .line 973
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 974
    sget p2, Lo/toStringMap$newSession;->FloatingActionButton_Behavior_Layout_behavior_autoHide:I

    const/4 v0, 0x1

    .line 975
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onPostMessage:Z

    .line 978
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private onMessageChannelReady(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z
    .locals 3

    .line 1091
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onNavigationEvent(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1094
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 1095
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v0

    const/4 v0, 0x0

    if-ge p1, v2, :cond_1

    .line 1096
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;Z)V

    goto :goto_0

    .line 6434
    :cond_1
    iget-object p1, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez p1, :cond_2

    .line 6435
    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 6437
    :cond_2
    iget-object p1, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 5584
    invoke-virtual {p1, v0, v1}, Lo/getUid;->onNavigationEvent(Lo/getUid$onMessageChannelReady;Z)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private onNavigationEvent(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z
    .locals 3

    .line 1043
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 1044
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onPostMessage:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 4926
    :cond_0
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onRelationshipValidationResult:I

    .line 1048
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eq v0, p1, :cond_1

    return v2

    .line 5064
    :cond_1
    iget p1, p2, Lo/updateCurrentUser;->asInterface:I

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z
    .locals 2

    .line 1067
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onNavigationEvent(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->extraCallback:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 1072
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->extraCallback:Landroid/graphics/Rect;

    .line 1076
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->extraCallback:Landroid/graphics/Rect;

    .line 1077
    invoke-static {p1, p2, v0}, Lo/getPivotY;->extraCallback(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1079
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->onNavigationEvent()I

    move-result p2

    const/4 v0, 0x0

    if-gt p1, p2, :cond_2

    .line 1081
    invoke-virtual {p3, v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;Z)V

    goto :goto_0

    .line 1084
    :cond_2
    invoke-virtual {p3, v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onMessageChannelReady(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;Z)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 957
    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;I)Z

    move-result p1

    return p1
.end method

.method public ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/Rect;)Z
    .locals 4

    .line 1136
    iget-object p1, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent:Landroid/graphics/Rect;

    .line 1138
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    .line 1139
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 1140
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 1141
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p1

    .line 1137
    invoke-virtual {p3, v0, v1, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;)V
    .locals 1

    .line 1007
    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onTransact:I

    if-nez v0, :cond_0

    const/16 v0, 0x50

    .line 1010
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onTransact:I

    :cond_0
    return-void
.end method

.method public final synthetic extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 0

    .line 957
    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final synthetic extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 957
    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;I)Z
    .locals 7

    .line 1109
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 1110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 1111
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1112
    instance-of v5, v4, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v5, :cond_0

    .line 1113
    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0, p1, v4, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 7028
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 7029
    instance-of v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    if-eqz v6, :cond_1

    .line 7030
    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 7952
    iget-object v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    .line 7030
    instance-of v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 1117
    invoke-direct {p0, v4, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onMessageChannelReady(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1123
    :cond_3
    :goto_2
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNavigationEvent(Landroid/view/View;I)V

    .line 8152
    iget-object p3, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent:Landroid/graphics/Rect;

    if-eqz p3, :cond_9

    .line 8154
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    if-lez v0, :cond_9

    .line 8156
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 8161
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_4

    .line 8163
    iget v1, p3, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 8164
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gt v1, v3, :cond_5

    .line 8166
    iget v1, p3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 8168
    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p1, v4

    if-lt v3, p1, :cond_6

    .line 8170
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 8171
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-gt p1, v0, :cond_7

    .line 8173
    iget p1, p3, Landroid/graphics/Rect;->top:I

    neg-int v2, p1

    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    .line 8177
    invoke-static {p2, v2}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    :cond_8
    if-eqz v1, :cond_9

    .line 8180
    invoke-static {p2, v1}, Lo/unregisterCallbackListener;->asBinder(Landroid/view/View;I)V

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method public onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;)Z
    .locals 2

    .line 1017
    instance-of v0, p3, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1020
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    goto :goto_1

    .line 3028
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 3029
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    if-eqz v0, :cond_1

    .line 3030
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 3952
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    .line 3030
    instance-of p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1022
    invoke-direct {p0, p3, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onMessageChannelReady(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    :cond_2
    :goto_1
    return v1
.end method
