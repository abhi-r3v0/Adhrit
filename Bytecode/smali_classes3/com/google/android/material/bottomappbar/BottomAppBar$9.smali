.class final Lcom/google/android/material/bottomappbar/BottomAppBar$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;->extraCallback(IZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:I

.field private extraCallback:Z

.field private synthetic onMessageChannelReady:Lcom/google/android/material/bottomappbar/BottomAppBar;

.field private synthetic onNavigationEvent:Landroidx/appcompat/widget/ActionMenuView;

.field private synthetic onPostMessage:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;->onMessageChannelReady:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput-object p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;->onNavigationEvent:Landroidx/appcompat/widget/ActionMenuView;

    iput p3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;->ICustomTabsCallback:I

    iput-boolean p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;->onPostMessage:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 645
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;->extraCallback:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 650
    iget-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;->extraCallback:Z

    if-nez p1, :cond_0

    .line 651
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;->onMessageChannelReady:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;->onNavigationEvent:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;->ICustomTabsCallback:I

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;->onPostMessage:Z

    .line 1709
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result p1

    int-to-float p1, p1

    .line 1708
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setTranslationX(F)V

    :cond_0
    return-void
.end method
