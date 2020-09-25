.class public abstract Lcom/google/android/material/transformation/ExpandableBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field onMessageChannelReady:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->onMessageChannelReady:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->onMessageChannelReady:I

    return-void
.end method

.method private onNavigationEvent(Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 144
    iget p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->onMessageChannelReady:I

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v1

    .line 147
    :cond_2
    iget p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->onMessageChannelReady:I

    if-ne p1, v1, :cond_3

    return v1

    :cond_3
    return v0
.end method


# virtual methods
.method protected abstract ICustomTabsCallback(Landroid/view/View;Landroid/view/View;ZZ)Z
.end method

.method public final ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4

    .line 90
    invoke-static {p2}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_3

    .line 1131
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    .line 1132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 1133
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1134
    invoke-virtual {p0, p2, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->onNavigationEvent(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1135
    check-cast v2, Lo/getProfile;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 92
    invoke-interface {v2}, Lo/getProfile;->onMessageChannelReady()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/ExpandableBehavior;->onNavigationEvent(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 93
    invoke-interface {v2}, Lo/getProfile;->onMessageChannelReady()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x2

    :goto_2
    iput p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->onMessageChannelReady:I

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance v1, Lcom/google/android/material/transformation/ExpandableBehavior$2;

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/google/android/material/transformation/ExpandableBehavior$2;-><init>(Lcom/google/android/material/transformation/ExpandableBehavior;Landroid/view/View;ILo/getProfile;)V

    .line 97
    invoke-virtual {p3, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    return v0
.end method

.method public final extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 118
    check-cast p3, Lo/getProfile;

    .line 119
    invoke-interface {p3}, Lo/getProfile;->onMessageChannelReady()Z

    move-result p1

    .line 120
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/ExpandableBehavior;->onNavigationEvent(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    invoke-interface {p3}, Lo/getProfile;->onMessageChannelReady()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->onMessageChannelReady:I

    .line 122
    move-object p1, p3

    check-cast p1, Landroid/view/View;

    invoke-interface {p3}, Lo/getProfile;->onMessageChannelReady()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/transformation/ExpandableBehavior;->ICustomTabsCallback(Landroid/view/View;Landroid/view/View;ZZ)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
