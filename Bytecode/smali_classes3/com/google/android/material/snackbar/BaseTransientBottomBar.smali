.class public abstract Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$ICustomTabsCallback;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$onMessageChannelReady;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Z

.field static final extraCallback:Landroid/os/Handler;

.field static final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->ICustomTabsCallback:Z

    .line 225
    sget v0, Lo/toStringMap$extraCallback;->snackbarStyle:I

    .line 227
    const-class v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onMessageChannelReady:Ljava/lang/String;

    .line 230
    new-instance v0, Landroid/os/Handler;

    .line 232
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;

    invoke-direct {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraCallback:Landroid/os/Handler;

    return-void
.end method

.method static extraCallback()V
    .locals 3

    .line 2037
    sget-object v0, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    if-nez v0, :cond_0

    .line 2038
    new-instance v0, Lo/FirebaseAuthMultiFactorException;

    invoke-direct {v0}, Lo/FirebaseAuthMultiFactorException;-><init>()V

    sput-object v0, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 2040
    :cond_0
    sget-object v0, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 2121
    iget-object v0, v0, Lo/FirebaseAuthMultiFactorException;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 2129
    monitor-exit v0

    const/4 v0, 0x0

    .line 1057
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1058
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1059
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
