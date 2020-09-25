.class final Lcom/google/android/material/bottomappbar/BottomAppBar$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->ICustomTabsCallback:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->ICustomTabsCallback:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget-object v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->asInterface:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 818
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->ICustomTabsCallback:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 1511
    invoke-virtual {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->onNavigationEvent()Landroid/view/View;

    move-result-object p1

    .line 1512
    instance-of v0, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 820
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->ICustomTabsCallback:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 2679
    iget v1, v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback(I)F

    move-result v0

    .line 820
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    :cond_1
    return-void
.end method
