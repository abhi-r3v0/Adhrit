.class final Lcom/google/android/material/transformation/ExpandableBehavior$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/ExpandableBehavior;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getProfile;

.field private synthetic extraCallback:I

.field private synthetic onMessageChannelReady:Landroid/view/View;

.field private synthetic onNavigationEvent:Lcom/google/android/material/transformation/ExpandableBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/transformation/ExpandableBehavior;Landroid/view/View;ILo/getProfile;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior$2;->onNavigationEvent:Lcom/google/android/material/transformation/ExpandableBehavior;

    iput-object p2, p0, Lcom/google/android/material/transformation/ExpandableBehavior$2;->onMessageChannelReady:Landroid/view/View;

    iput p3, p0, Lcom/google/android/material/transformation/ExpandableBehavior$2;->extraCallback:I

    iput-object p4, p0, Lcom/google/android/material/transformation/ExpandableBehavior$2;->ICustomTabsCallback:Lo/getProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior$2;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior$2;->onNavigationEvent:Lcom/google/android/material/transformation/ExpandableBehavior;

    .line 1039
    iget v0, v0, Lcom/google/android/material/transformation/ExpandableBehavior;->onMessageChannelReady:I

    .line 103
    iget v1, p0, Lcom/google/android/material/transformation/ExpandableBehavior$2;->extraCallback:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior$2;->onNavigationEvent:Lcom/google/android/material/transformation/ExpandableBehavior;

    iget-object v1, p0, Lcom/google/android/material/transformation/ExpandableBehavior$2;->ICustomTabsCallback:Lo/getProfile;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/material/transformation/ExpandableBehavior$2;->onMessageChannelReady:Landroid/view/View;

    invoke-interface {v1}, Lo/getProfile;->onMessageChannelReady()Z

    move-result v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/android/material/transformation/ExpandableBehavior;->ICustomTabsCallback(Landroid/view/View;Landroid/view/View;ZZ)Z

    :cond_0
    return v2
.end method
