.class final Lcom/google/android/material/behavior/SwipeDismissBehavior$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Z

.field private final extraCallback:Landroid/view/View;

.field private synthetic onNavigationEvent:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$onMessageChannelReady;->onNavigationEvent:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$onMessageChannelReady;->extraCallback:Landroid/view/View;

    .line 370
    iput-boolean p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$onMessageChannelReady;->onNavigationEvent:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->extraCallback:Lo/rate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$onMessageChannelReady;->onNavigationEvent:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->extraCallback:Lo/rate;

    invoke-virtual {v0}, Lo/rate;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$onMessageChannelReady;->extraCallback:Landroid/view/View;

    invoke-static {v0, p0}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 378
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$onMessageChannelReady;->onNavigationEvent:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onPostMessage:Lcom/google/android/material/behavior/SwipeDismissBehavior$onPostMessage;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$onMessageChannelReady;->onNavigationEvent:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onPostMessage:Lcom/google/android/material/behavior/SwipeDismissBehavior$onPostMessage;

    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$onMessageChannelReady;->extraCallback:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$onPostMessage;->extraCallback(Landroid/view/View;)V

    :cond_1
    return-void
.end method
