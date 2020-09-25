.class final Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onNavigationEvent;
.super Lo/getProviderId;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private onNavigationEvent:Z

.field private synthetic onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getTrimPathOffset;)V
    .locals 0

    .line 1099
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onNavigationEvent;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1100
    invoke-direct {p0, p1, p2}, Lo/getProviderId;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getTrimPathOffset;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/animation/Animator;)V
    .locals 1

    .line 1127
    invoke-super {p0, p1}, Lo/getProviderId;->ICustomTabsCallback(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    .line 1128
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onNavigationEvent;->onNavigationEvent:Z

    .line 1129
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onNavigationEvent;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onNavigationEvent;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v0, 0x1

    .line 3070
    iput v0, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onPostMessage:I

    return-void
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onNavigationEvent;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final asBinder()Z
    .locals 4

    .line 1117
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onNavigationEvent;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2580
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 2582
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onPostMessage:I

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    return v2

    .line 2585
    :cond_1
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onPostMessage:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public final onMessageChannelReady()V
    .locals 1

    .line 1135
    invoke-super {p0}, Lo/getProviderId;->onMessageChannelReady()V

    const/4 v0, 0x1

    .line 1136
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onNavigationEvent;->onNavigationEvent:Z

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 1141
    invoke-super {p0}, Lo/getProviderId;->onNavigationEvent()V

    .line 1142
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onNavigationEvent;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v1, 0x0

    .line 4070
    iput v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->onPostMessage:I

    .line 1143
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onNavigationEvent;->onNavigationEvent:Z

    if-nez v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onNavigationEvent;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onTransact()I
    .locals 1

    .line 1122
    sget v0, Lo/toStringMap$ICustomTabsCallback;->mtrl_extended_fab_hide_motion_spec:I

    return v0
.end method
