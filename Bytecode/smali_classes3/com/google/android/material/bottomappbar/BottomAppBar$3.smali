.class final Lcom/google/android/material/bottomappbar/BottomAppBar$3;
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
.field private synthetic extraCallback:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->extraCallback:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 179
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->extraCallback:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 1109
    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage:I

    .line 179
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->extraCallback:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 2109
    iget-boolean v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback$Stub:Z

    .line 3109
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->onPostMessage(IZ)V

    return-void
.end method
