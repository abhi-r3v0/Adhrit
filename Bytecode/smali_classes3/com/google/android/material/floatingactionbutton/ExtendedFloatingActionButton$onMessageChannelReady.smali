.class final Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onMessageChannelReady;
.super Lo/getProviderId;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getTrimPathOffset;)V
    .locals 0

    .line 1052
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onMessageChannelReady;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1053
    invoke-direct {p0, p1, p2}, Lo/getProviderId;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getTrimPathOffset;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/animation/Animator;)V
    .locals 1

    .line 1078
    invoke-super {p0, p1}, Lo/getProviderId;->ICustomTabsCallback(Landroid/animation/Animator;)V

    .line 1079
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onMessageChannelReady;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onMessageChannelReady;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v0, 0x2

    .line 2070
    iput v0, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onPostMessage:I

    return-void
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onMessageChannelReady;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1059
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onMessageChannelReady;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setAlpha(F)V

    .line 1060
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onMessageChannelReady;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setScaleY(F)V

    .line 1061
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onMessageChannelReady;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setScaleX(F)V

    return-void
.end method

.method public final asBinder()Z
    .locals 4

    .line 1091
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onMessageChannelReady;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4570
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4572
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onPostMessage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    return v2

    .line 4575
    :cond_1
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onPostMessage:I

    if-eq v0, v3, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 1085
    invoke-super {p0}, Lo/getProviderId;->onNavigationEvent()V

    .line 1086
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onMessageChannelReady;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v1, 0x0

    .line 3070
    iput v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onPostMessage:I

    return-void
.end method

.method public final onTransact()I
    .locals 1

    .line 1073
    sget v0, Lo/toStringMap$ICustomTabsCallback;->mtrl_extended_fab_show_motion_spec:I

    return v0
.end method
