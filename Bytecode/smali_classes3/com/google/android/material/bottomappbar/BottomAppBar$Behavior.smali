.class public Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.super Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<",
        "Lcom/google/android/material/bottomappbar/BottomAppBar;",
        ">;"
    }
.end annotation


# instance fields
.field private final asInterface:Landroid/view/View$OnLayoutChangeListener;

.field final onPostMessage:Landroid/graphics/Rect;

.field onRelationshipValidationResult:I

.field onTransact:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/bottomappbar/BottomAppBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 924
    invoke-direct {p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;-><init>()V

    .line 875
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$4;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->asInterface:Landroid/view/View$OnLayoutChangeListener;

    .line 925
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->onPostMessage:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 929
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 875
    new-instance p1, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$4;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$4;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->asInterface:Landroid/view/View$OnLayoutChangeListener;

    .line 930
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->onPostMessage:Landroid/graphics/Rect;

    return-void
.end method

.method private ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomappbar/BottomAppBar;I)Z
    .locals 4

    .line 936
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->onTransact:Ljava/lang/ref/WeakReference;

    .line 938
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 939
    invoke-static {v0}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 943
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    const/16 v2, 0x31

    .line 944
    iput v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onNavigationEvent:I

    .line 948
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->onRelationshipValidationResult:I

    .line 950
    instance-of v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_6

    .line 951
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 954
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->asInterface:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2810
    iget-object v1, p2, Lcom/google/android/material/bottomappbar/BottomAppBar;->asInterface:Landroid/animation/AnimatorListenerAdapter;

    .line 4434
    iget-object v2, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v2, :cond_0

    .line 4435
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 4437
    :cond_0
    iget-object v2, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 5401
    iget-object v3, v2, Lo/getUid;->mayLaunchUrl:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 5402
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lo/getUid;->mayLaunchUrl:Ljava/util/ArrayList;

    .line 5404
    :cond_1
    iget-object v2, v2, Lo/getUid;->mayLaunchUrl:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2811
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$6;

    invoke-direct {v1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$6;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 6434
    iget-object v2, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v2, :cond_2

    .line 6435
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 6437
    :cond_2
    iget-object v2, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 7385
    iget-object v3, v2, Lo/getUid;->updateVisuals:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 7386
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lo/getUid;->updateVisuals:Ljava/util/ArrayList;

    .line 7388
    :cond_3
    iget-object v2, v2, Lo/getUid;->updateVisuals:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2824
    iget-object v1, p2, Lcom/google/android/material/bottomappbar/BottomAppBar;->onRelationshipValidationResult:Lo/validateRunningExperiments;

    .line 8434
    iget-object v2, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v2, :cond_4

    .line 8435
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 8437
    :cond_4
    iget-object v2, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 8349
    new-instance v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$onPostMessage;

    invoke-direct {v3, v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$onPostMessage;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lo/validateRunningExperiments;)V

    .line 8623
    iget-object v0, v2, Lo/getUid;->ICustomTabsService$Stub:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 8624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lo/getUid;->ICustomTabsService$Stub:Ljava/util/ArrayList;

    .line 8626
    :cond_5
    iget-object v0, v2, Lo/getUid;->ICustomTabsService$Stub:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 961
    :cond_6
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 965
    :cond_7
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNavigationEvent(Landroid/view/View;I)V

    .line 966
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 867
    check-cast p2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomappbar/BottomAppBar;I)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 7

    .line 867
    move-object v2, p2

    check-cast v2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 9386
    iget-boolean p2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback:Z

    if-eqz p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 8979
    invoke-super/range {v0 .. v6}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
