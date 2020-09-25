.class final Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/behavior/SwipeDismissBehavior$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;->onPostMessage:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 5037
    :cond_0
    sget-object p1, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    if-nez p1, :cond_1

    .line 5038
    new-instance p1, Lo/FirebaseAuthMultiFactorException;

    invoke-direct {p1}, Lo/FirebaseAuthMultiFactorException;-><init>()V

    sput-object p1, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 5040
    :cond_1
    sget-object p1, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 5145
    iget-object p1, p1, Lo/FirebaseAuthMultiFactorException;->onPostMessage:Ljava/lang/Object;

    monitor-enter p1

    .line 5150
    monitor-exit p1

    return-void

    .line 7037
    :cond_2
    sget-object p1, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    if-nez p1, :cond_3

    .line 7038
    new-instance p1, Lo/FirebaseAuthMultiFactorException;

    invoke-direct {p1}, Lo/FirebaseAuthMultiFactorException;-><init>()V

    sput-object p1, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 7040
    :cond_3
    sget-object p1, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 7154
    iget-object p1, p1, Lo/FirebaseAuthMultiFactorException;->onPostMessage:Ljava/lang/Object;

    monitor-enter p1

    .line 7159
    monitor-exit p1

    :goto_0
    return-void
.end method

.method public final extraCallback(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 800
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2037
    sget-object p1, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    if-nez p1, :cond_0

    .line 2038
    new-instance p1, Lo/FirebaseAuthMultiFactorException;

    invoke-direct {p1}, Lo/FirebaseAuthMultiFactorException;-><init>()V

    sput-object p1, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 2040
    :cond_0
    sget-object p1, Lo/FirebaseAuthMultiFactorException;->extraCallback:Lo/FirebaseAuthMultiFactorException;

    .line 2107
    iget-object p1, p1, Lo/FirebaseAuthMultiFactorException;->onPostMessage:Ljava/lang/Object;

    monitor-enter p1

    .line 2113
    monitor-exit p1

    return-void
.end method
