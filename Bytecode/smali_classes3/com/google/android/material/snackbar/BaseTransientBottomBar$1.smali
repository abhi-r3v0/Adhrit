.class final Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

.field private synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;->onMessageChannelReady:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iput p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;->onPostMessage:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 897
    invoke-static {}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraCallback()V

    return-void
.end method
