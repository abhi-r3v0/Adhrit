.class final Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;
.super Lo/getProviderId;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onPostMessage;

.field private synthetic onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getTrimPathOffset;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onPostMessage;Z)V
    .locals 0

    .line 971
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 972
    invoke-direct {p0, p1, p2}, Lo/getProviderId;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getTrimPathOffset;)V

    .line 973
    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onPostMessage;

    .line 974
    iput-boolean p4, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/animation/Animator;)V
    .locals 1

    .line 1033
    invoke-super {p0, p1}, Lo/getProviderId;->ICustomTabsCallback(Landroid/animation/Animator;)V

    .line 1034
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 3070
    iput-boolean v0, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->asBinder:Z

    .line 1035
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 3

    .line 979
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 1070
    iput-boolean v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->asBinder:Z

    .line 980
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 985
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onMessageChannelReady:Z

    if-eqz v1, :cond_1

    .line 986
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 989
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onPostMessage;

    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onPostMessage;->onPostMessage()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 990
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onPostMessage;

    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onPostMessage;->extraCallback()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 991
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final asBinder()Z
    .locals 2

    .line 1046
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onMessageChannelReady:Z

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4070
    iget-boolean v1, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->asBinder:Z

    if-eq v0, v1, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4585
    iget-object v0, v0, Lo/throwAbtExceptionIfAnalyticsIsNull;->extraCallback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final extraCallback()Landroid/animation/AnimatorSet;
    .locals 9

    .line 1015
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->ICustomTabsCallback()Lo/getExperimentsToRemove;

    move-result-object v0

    .line 1099
    iget-object v1, v0, Lo/getExperimentsToRemove;->onMessageChannelReady:Lo/fromMediaItemList;

    const-string v2, "width"

    invoke-virtual {v1, v2}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x2

    if-eqz v1, :cond_1

    .line 1017
    invoke-virtual {v0, v2}, Lo/getExperimentsToRemove;->onPostMessage(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1018
    aget-object v6, v1, v4

    new-array v7, v5, [F

    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v4

    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onPostMessage;

    invoke-interface {v8}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onPostMessage;->onPostMessage()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v3

    invoke-virtual {v6, v7}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 1123
    iget-object v6, v0, Lo/getExperimentsToRemove;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v6, v2, v1}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2099
    :cond_1
    iget-object v1, v0, Lo/getExperimentsToRemove;->onMessageChannelReady:Lo/fromMediaItemList;

    const-string v2, "height"

    invoke-virtual {v1, v2}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 1023
    invoke-virtual {v0, v2}, Lo/getExperimentsToRemove;->onPostMessage(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1024
    aget-object v6, v1, v4

    new-array v5, v5, [F

    iget-object v7, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v4

    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onPostMessage;

    invoke-interface {v4}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$onPostMessage;->extraCallback()I

    move-result v4

    int-to-float v4, v4

    aput v4, v5, v3

    invoke-virtual {v6, v5}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 2123
    iget-object v3, v0, Lo/getExperimentsToRemove;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v3, v2, v1}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    :cond_3
    invoke-super {p0, v0}, Lo/getProviderId;->onNavigationEvent(Lo/getExperimentsToRemove;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 1040
    invoke-super {p0}, Lo/getProviderId;->onNavigationEvent()V

    .line 1041
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ICustomTabsCallback;->onPostMessage:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    return-void
.end method

.method public final onTransact()I
    .locals 1

    .line 1009
    sget v0, Lo/toStringMap$ICustomTabsCallback;->mtrl_extended_fab_change_size_motion_spec:I

    return v0
.end method
