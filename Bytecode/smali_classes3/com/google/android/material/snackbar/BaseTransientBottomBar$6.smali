.class final Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/snackbar/BaseTransientBottomBar$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;->extraCallback:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 5

    .line 755
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;->extraCallback:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4067
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4068
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4847
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;

    invoke-direct {v1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3766
    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6037
    sget-object v0, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    if-nez v0, :cond_2

    .line 6038
    new-instance v0, Lo/FirebaseAuthMultiFactorException;

    invoke-direct {v0}, Lo/FirebaseAuthMultiFactorException;-><init>()V

    sput-object v0, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 6040
    :cond_2
    sget-object v0, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 6137
    iget-object v0, v0, Lo/FirebaseAuthMultiFactorException;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 6141
    monitor-exit v0

    return-void
.end method
