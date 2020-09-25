.class public final Lo/setContentInsetEndWithActions;
.super Lo/updateRemainingSpans;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u001a\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00162\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/payments/CredUpiFragment;",
        "Lcom/dreamplug/widget/FullScreenDialogFragment;",
        "()V",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$SourceExtra;",
        "isLinkedSuccessfully",
        "",
        "isProcessing",
        "source",
        "",
        "viewModel",
        "Lcom/dreamplug/androidapp/payments/PaymentsViewModel;",
        "getViewModel",
        "()Lcom/dreamplug/androidapp/payments/PaymentsViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "onBackPressed",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/isSameListener;

.field private ICustomTabsCallback$Stub:Ljava/util/HashMap;

.field private extraCallback:Z

.field private onMessageChannelReady:Lo/onDetach$getDefaultImpl;

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lo/updateRemainingSpans;-><init>()V

    .line 114
    new-instance v0, Lo/setContentInsetEndWithActions$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/setContentInsetEndWithActions$onNavigationEvent;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 114
    iput-object v1, p0, Lo/setContentInsetEndWithActions;->ICustomTabsCallback:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/setContentInsetEndWithActions;)Lo/getCurrentContentInsetRight;
    .locals 0

    .line 5000
    iget-object p0, p0, Lo/setContentInsetEndWithActions;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getCurrentContentInsetRight;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/setContentInsetEndWithActions;)V
    .locals 1

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lo/setContentInsetEndWithActions;->onPostMessage:Z

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/setContentInsetEndWithActions;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lo/setContentInsetEndWithActions;->onPostMessage:Z

    return p0
.end method

.method public static final synthetic onPostMessage(Lo/setContentInsetEndWithActions;Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lo/setContentInsetEndWithActions;->extraCallback:Z

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Lo/updateRemainingSpans;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "CredUpiFragment"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    .line 43
    invoke-static {p0}, Lo/extraCallback;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/onDetach$getDefaultImpl;

    iput-object p1, p0, Lo/setContentInsetEndWithActions;->onMessageChannelReady:Lo/onDetach$getDefaultImpl;

    if-eqz p1, :cond_0

    .line 1076
    iget-object p1, p1, Lo/onDetach$getDefaultImpl;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_0
    iput-object p1, p0, Lo/setContentInsetEndWithActions;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e009e

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/updateRemainingSpans;->onDestroyView()V

    .line 6000
    iget-object v0, p0, Lo/setContentInsetEndWithActions;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/setContentInsetEndWithActions;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setContentInsetEndWithActions;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/setContentInsetEndWithActions;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/setContentInsetEndWithActions;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onPostMessage()V
    .locals 1

    .line 109
    iget-boolean v0, p0, Lo/setContentInsetEndWithActions;->extraCallback:Z

    if-nez v0, :cond_0

    .line 110
    invoke-super {p0}, Lo/updateRemainingSpans;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    iget-object v0, p0, Lo/setContentInsetEndWithActions;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1, p2}, Lo/updateRemainingSpans;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 57
    iget-object p2, p0, Lo/setContentInsetEndWithActions;->onNavigationEvent:Ljava/lang/String;

    const-string v0, "SOURCE"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance p2, Lo/dispatchAddStarting;

    invoke-direct {p2}, Lo/dispatchAddStarting;-><init>()V

    .line 59
    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    new-instance p1, Lo/setContentInsetEndWithActions$onPostMessage;

    invoke-direct {p1, p0}, Lo/setContentInsetEndWithActions$onPostMessage;-><init>(Lo/setContentInsetEndWithActions;)V

    check-cast p1, Lo/dispatchAddStarting$onPostMessage;

    .line 2030
    iput-object p1, p2, Lo/dispatchAddStarting;->onMessageChannelReady:Lo/dispatchAddStarting$onPostMessage;

    .line 86
    sget-object p1, Lo/setHeight;->onPostMessage:Lo/setHeight;

    .line 4000
    sget-object p1, Lo/setHeight;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 3028
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 86
    move-object v0, p0

    check-cast v0, Lo/toLegacyStreamType;

    new-instance v1, Lo/setContentInsetEndWithActions$extraCallback;

    invoke-direct {v1, p0, p2}, Lo/setContentInsetEndWithActions$extraCallback;-><init>(Lo/setContentInsetEndWithActions;Lo/dispatchAddStarting;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method
