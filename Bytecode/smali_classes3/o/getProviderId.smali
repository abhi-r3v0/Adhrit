.class public abstract Lo/getProviderId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getAdditionalUserInfo;


# instance fields
.field private final ICustomTabsCallback:Lo/getTrimPathOffset;

.field private extraCallback:Lo/getExperimentsToRemove;

.field private final onMessageChannelReady:Landroid/content/Context;

.field private final onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field private final onPostMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:Lo/getExperimentsToRemove;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lo/getTrimPathOffset;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getProviderId;->onPostMessage:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lo/getProviderId;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/getProviderId;->onMessageChannelReady:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lo/getProviderId;->ICustomTabsCallback:Lo/getTrimPathOffset;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getExperimentsToRemove;
    .locals 2

    .line 57
    iget-object v0, p0, Lo/getProviderId;->onTransact:Lo/getExperimentsToRemove;

    if-eqz v0, :cond_0

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lo/getProviderId;->extraCallback:Lo/getExperimentsToRemove;

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lo/getProviderId;->onMessageChannelReady:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lo/getProviderId;->onTransact()I

    move-result v1

    .line 63
    invoke-static {v0, v1}, Lo/getExperimentsToRemove;->onPostMessage(Landroid/content/Context;I)Lo/getExperimentsToRemove;

    move-result-object v0

    iput-object v0, p0, Lo/getProviderId;->extraCallback:Lo/getExperimentsToRemove;

    .line 68
    :cond_1
    iget-object v0, p0, Lo/getProviderId;->extraCallback:Lo/getExperimentsToRemove;

    if-eqz v0, :cond_2

    check-cast v0, Lo/getExperimentsToRemove;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 1064
    throw v0
.end method

.method public ICustomTabsCallback(Landroid/animation/Animator;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lo/getProviderId;->ICustomTabsCallback:Lo/getTrimPathOffset;

    .line 2033
    iget-object v1, v0, Lo/getTrimPathOffset;->extraCallback:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 2034
    iget-object v1, v0, Lo/getTrimPathOffset;->extraCallback:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 2029
    :cond_0
    iput-object p1, v0, Lo/getTrimPathOffset;->extraCallback:Landroid/animation/Animator;

    return-void
.end method

.method public final ICustomTabsCallback(Lo/getExperimentsToRemove;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lo/getProviderId;->onTransact:Lo/getExperimentsToRemove;

    return-void
.end method

.method public extraCallback()Landroid/animation/AnimatorSet;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lo/getProviderId;->ICustomTabsCallback()Lo/getExperimentsToRemove;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/getProviderId;->onNavigationEvent(Lo/getExperimentsToRemove;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public onMessageChannelReady()V
    .locals 2

    .line 108
    iget-object v0, p0, Lo/getProviderId;->ICustomTabsCallback:Lo/getTrimPathOffset;

    const/4 v1, 0x0

    .line 3039
    iput-object v1, v0, Lo/getTrimPathOffset;->extraCallback:Landroid/animation/Animator;

    return-void
.end method

.method public final onNavigationEvent(Lo/getExperimentsToRemove;)Landroid/animation/AnimatorSet;
    .locals 7

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3099
    iget-object v1, p1, Lo/getExperimentsToRemove;->onMessageChannelReady:Lo/fromMediaItemList;

    const-string v2, "opacity"

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
    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lo/getProviderId;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 3149
    invoke-virtual {p1, v2}, Lo/getExperimentsToRemove;->onPostMessage(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3150
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 3151
    invoke-virtual {p1, v2}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 121
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4099
    :cond_1
    iget-object v1, p1, Lo/getExperimentsToRemove;->onMessageChannelReady:Lo/fromMediaItemList;

    const-string v2, "scale"

    invoke-virtual {v1, v2}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 125
    iget-object v1, p0, Lo/getProviderId;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 4149
    invoke-virtual {p1, v2}, Lo/getExperimentsToRemove;->onPostMessage(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4150
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 4151
    invoke-virtual {p1, v2}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object v5

    invoke-virtual {v5, v1}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lo/getProviderId;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 5149
    invoke-virtual {p1, v2}, Lo/getExperimentsToRemove;->onPostMessage(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 5150
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 5151
    invoke-virtual {p1, v2}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6099
    :cond_3
    iget-object v1, p1, Lo/getExperimentsToRemove;->onMessageChannelReady:Lo/fromMediaItemList;

    const-string v2, "width"

    invoke-virtual {v1, v2}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 130
    iget-object v1, p0, Lo/getProviderId;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v5, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ICustomTabsCallback$Stub$Proxy:Landroid/util/Property;

    .line 6149
    invoke-virtual {p1, v2}, Lo/getExperimentsToRemove;->onPostMessage(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 6150
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 6151
    invoke-virtual {p1, v2}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7099
    :cond_5
    iget-object v1, p1, Lo/getExperimentsToRemove;->onMessageChannelReady:Lo/fromMediaItemList;

    const-string v2, "height"

    invoke-virtual {v1, v2}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    .line 134
    iget-object v1, p0, Lo/getProviderId;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getInterfaceDescriptor:Landroid/util/Property;

    .line 7149
    invoke-virtual {p1, v2}, Lo/getExperimentsToRemove;->onPostMessage(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 7150
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 7151
    invoke-virtual {p1, v2}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_7
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 138
    invoke-static {p1, v0}, Lo/preferLastSpan$asBinder;->onPostMessage(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method public onNavigationEvent()V
    .locals 2

    .line 102
    iget-object v0, p0, Lo/getProviderId;->ICustomTabsCallback:Lo/getTrimPathOffset;

    const/4 v1, 0x0

    .line 2039
    iput-object v1, v0, Lo/getTrimPathOffset;->extraCallback:Landroid/animation/Animator;

    return-void
.end method

.method public final onPostMessage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lo/getProviderId;->onPostMessage:Ljava/util/ArrayList;

    return-object v0
.end method
