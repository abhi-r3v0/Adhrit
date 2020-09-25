.class final Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/snackbar/BaseTransientBottomBar$onMessageChannelReady;
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;->onMessageChannelReady:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 3037
    sget-object v0, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    if-nez v0, :cond_0

    .line 3038
    new-instance v0, Lo/FirebaseAuthMultiFactorException;

    invoke-direct {v0}, Lo/FirebaseAuthMultiFactorException;-><init>()V

    sput-object v0, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 3040
    :cond_0
    sget-object v0, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 3169
    iget-object v0, v0, Lo/FirebaseAuthMultiFactorException;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 3170
    monitor-exit v0

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 701
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 702
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 704
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 2440
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2442
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onMessageChannelReady:Ljava/lang/String;

    const-string v1, "Unable to update margins because layout params are not MarginLayoutParams"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 0

    .line 4721
    invoke-static {}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraCallback()V

    return-void
.end method
