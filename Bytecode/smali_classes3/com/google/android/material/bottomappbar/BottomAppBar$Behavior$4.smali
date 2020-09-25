.class final Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$4;->onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 888
    iget-object p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$4;->onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 1867
    iget-object p2, p2, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->onTransact:Ljava/lang/ref/WeakReference;

    .line 888
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    if-eqz p2, :cond_3

    .line 891
    instance-of p3, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez p3, :cond_0

    goto :goto_0

    .line 896
    :cond_0
    move-object p3, p1

    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 898
    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$4;->onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 2867
    iget-object p4, p4, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->onPostMessage:Landroid/graphics/Rect;

    .line 2880
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p6

    const/4 p7, 0x0

    invoke-virtual {p4, p7, p7, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2881
    invoke-virtual {p3, p4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent(Landroid/graphics/Rect;)V

    .line 899
    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$4;->onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 3867
    iget-object p4, p4, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->onPostMessage:Landroid/graphics/Rect;

    .line 899
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p5, p4

    .line 4776
    iget-object p6, p2, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 5255
    iget-object p6, p6, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object p6, p6, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 5712
    iget-object p6, p6, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 4777
    check-cast p6, Lo/convertMapsToExperimentInfos;

    .line 6158
    iget p6, p6, Lo/convertMapsToExperimentInfos;->ICustomTabsCallback:F

    cmpl-float p6, p5, p6

    if-eqz p6, :cond_1

    .line 6776
    iget-object p6, p2, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    .line 7255
    iget-object p6, p6, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object p6, p6, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 7712
    iget-object p6, p6, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 6777
    check-cast p6, Lo/convertMapsToExperimentInfos;

    .line 8168
    iput p5, p6, Lo/convertMapsToExperimentInfos;->ICustomTabsCallback:F

    .line 4467
    iget-object p5, p2, Lcom/google/android/material/bottomappbar/BottomAppBar;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 905
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 909
    iget-object p5, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$4;->onPostMessage:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 8867
    iget p5, p5, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->onRelationshipValidationResult:I

    if-nez p5, :cond_2

    .line 912
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    .line 915
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lo/toStringMap$onMessageChannelReady;->mtrl_bottomappbar_fab_bottom_margin:I

    .line 916
    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    sub-int/2addr p4, p3

    .line 9828
    iget p2, p2, Lcom/google/android/material/bottomappbar/BottomAppBar;->asBinder:I

    add-int/2addr p2, p4

    .line 919
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_2
    return-void

    .line 892
    :cond_3
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
