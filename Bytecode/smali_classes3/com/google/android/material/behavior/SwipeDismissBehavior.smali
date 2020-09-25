.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/behavior/SwipeDismissBehavior$onMessageChannelReady;,
        Lcom/google/android/material/behavior/SwipeDismissBehavior$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent<",
        "TV;>;"
    }
.end annotation


# instance fields
.field ICustomTabsCallback:F

.field public asBinder:F

.field private asInterface:Z

.field extraCallback:Lo/rate;

.field public onMessageChannelReady:I

.field public onNavigationEvent:F

.field public onPostMessage:Lcom/google/android/material/behavior/SwipeDismissBehavior$onPostMessage;

.field private final onRelationshipValidationResult:Lo/rate$ICustomTabsCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;-><init>()V

    const/4 v0, 0x2

    .line 87
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onMessageChannelReady:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 88
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ICustomTabsCallback:F

    const/4 v1, 0x0

    .line 89
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onNavigationEvent:F

    .line 90
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->asBinder:F

    .line 208
    new-instance v0, Lcom/google/android/material/behavior/SwipeDismissBehavior$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior$4;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onRelationshipValidationResult:Lo/rate$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public extraCallback(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 167
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->asInterface:Z

    .line 169
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    if-eq v1, p2, :cond_0

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->asInterface:Z

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Landroid/view/View;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->asInterface:Z

    :goto_0
    if-eqz v0, :cond_3

    .line 1356
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->extraCallback:Lo/rate;

    if-nez p2, :cond_2

    .line 1359
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onRelationshipValidationResult:Lo/rate$ICustomTabsCallback;

    .line 1360
    invoke-static {p1, p2}, Lo/rate;->onMessageChannelReady(Landroid/view/ViewGroup;Lo/rate$ICustomTabsCallback;)Lo/rate;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->extraCallback:Lo/rate;

    .line 184
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->extraCallback:Lo/rate;

    invoke-virtual {p1, p3}, Lo/rate;->onPostMessage(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public final onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 191
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->extraCallback:Lo/rate;

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1, p3}, Lo/rate;->extraCallback(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
