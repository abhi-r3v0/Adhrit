.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
.super Lcom/google/android/material/behavior/SwipeDismissBehavior;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final onRelationshipValidationResult:Lcom/google/android/material/snackbar/BaseTransientBottomBar$ICustomTabsCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1180
    invoke-direct {p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;-><init>()V

    .line 1181
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$ICustomTabsCallback;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->onRelationshipValidationResult:Lcom/google/android/material/snackbar/BaseTransientBottomBar$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;)Z
    .locals 0

    .line 2220
    instance-of p1, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage;

    return p1
.end method

.method public final extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2225
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 5037
    :cond_0
    sget-object v0, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    if-nez v0, :cond_1

    .line 5038
    new-instance v0, Lo/FirebaseAuthMultiFactorException;

    invoke-direct {v0}, Lo/FirebaseAuthMultiFactorException;-><init>()V

    sput-object v0, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 5040
    :cond_1
    sget-object v0, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 5154
    iget-object v0, v0, Lo/FirebaseAuthMultiFactorException;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 5159
    monitor-exit v0

    goto :goto_0

    .line 2229
    :cond_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3037
    sget-object v0, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    if-nez v0, :cond_3

    .line 3038
    new-instance v0, Lo/FirebaseAuthMultiFactorException;

    invoke-direct {v0}, Lo/FirebaseAuthMultiFactorException;-><init>()V

    sput-object v0, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 3040
    :cond_3
    sget-object v0, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 3145
    iget-object v0, v0, Lo/FirebaseAuthMultiFactorException;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 3150
    monitor-exit v0

    .line 1198
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
