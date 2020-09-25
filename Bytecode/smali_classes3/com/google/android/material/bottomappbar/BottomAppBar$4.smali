.class final Lcom/google/android/material/bottomappbar/BottomAppBar$4;
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
.field private synthetic onNavigationEvent:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$4;->onNavigationEvent:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 503
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$4;->onNavigationEvent:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 2452
    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->extraCallback:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->extraCallback:I

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 498
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$4;->onNavigationEvent:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 1443
    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->extraCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->extraCallback:I

    return-void
.end method
