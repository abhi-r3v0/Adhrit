.class public final Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setExitSharedElementCallback$extraCallback;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/setExitSharedElementCallback$extraCallback;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setExitSharedElementCallback$extraCallback;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/setExitSharedElementCallback$extraCallback;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    instance-of p1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/setExitSharedElementCallback$extraCallback;

    iget-object p1, p1, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    .line 1023
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->asBinder:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    .line 54
    :cond_0
    invoke-static {p1, v1}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/setExitSharedElementCallback$extraCallback;

    iget-object p1, p1, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object p1

    .line 1038
    iget-object p1, p1, Lo/getSharedElementEnterTransition;->asInterface:Lo/setActive;

    .line 55
    new-instance v1, Lo/getSharedElementEnterTransition$onNavigationEvent;

    sget-object v3, Lo/onPrepareOptionsMenu$onNavigationEvent;->onPostMessage:Lo/onPrepareOptionsMenu$onNavigationEvent;

    check-cast v3, Lo/onPrepareOptionsMenu;

    invoke-direct {v1, v3}, Lo/getSharedElementEnterTransition$onNavigationEvent;-><init>(Lo/onPrepareOptionsMenu;)V

    invoke-virtual {p1, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 56
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/setExitSharedElementCallback$extraCallback;

    iget-object p1, p1, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->asBinder(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/setExitSharedElementCallback$extraCallback;

    iget-object p1, p1, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->IPostMessageService(Lo/setExitSharedElementCallback;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/setExitSharedElementCallback$extraCallback;

    iget-object v1, v1, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {v1}, Lo/setExitSharedElementCallback;->postMessage(Lo/setExitSharedElementCallback;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/setExitSharedElementCallback$extraCallback;

    iget-object p1, p1, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->asBinder(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    new-array v1, v0, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/setExitSharedElementCallback$extraCallback;

    iget-object v4, v4, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {v4}, Lo/setExitSharedElementCallback;->postMessage(Lo/setExitSharedElementCallback;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0xb

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    check-cast v3, Landroid/text/InputFilter;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    new-array p1, v0, [Lo/addWrite;

    .line 59
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    .line 2013
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onNavigationEvent:Ljava/lang/String;

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string v5, "bank_name"

    invoke-direct {v3, v5, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p1, v4

    const-string v1, "pairs"

    .line 59
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "ad_bank_selected"

    .line 59
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 60
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/setExitSharedElementCallback$extraCallback;

    iget-object p1, p1, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    .line 3013
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onNavigationEvent:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 60
    :goto_0
    invoke-static {p1, v2}, Lo/setExitSharedElementCallback;->onMessageChannelReady(Lo/setExitSharedElementCallback;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    .line 4013
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onNavigationEvent:Ljava/lang/String;

    .line 61
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_7

    .line 62
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/setExitSharedElementCallback$extraCallback;

    iget-object p1, p1, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bankGroup:I

    invoke-virtual {p1, v1}, Lo/setExitSharedElementCallback;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const-string v1, "bankGroup"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/setExitSharedElementCallback$extraCallback;

    iget-object p1, p1, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bankName:I

    invoke-virtual {p1, v1}, Lo/setExitSharedElementCallback;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "bankName"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    .line 5013
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onNavigationEvent:Ljava/lang/String;

    .line 63
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    .line 5015
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onPostMessage:Ljava/lang/String;

    .line 64
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const/4 v4, 0x1

    :cond_5
    const-string p1, "bankIcon"

    if-eqz v4, :cond_6

    .line 65
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    .line 5017
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->extraCallback:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 66
    sget-object v2, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-static {v1}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 67
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/setExitSharedElementCallback$extraCallback;

    iget-object v2, v2, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->bankIcon:I

    invoke-virtual {v2, v3}, Lo/setExitSharedElementCallback;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v2, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lo/remove;->onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_3

    .line 71
    :cond_6
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/setExitSharedElementCallback$extraCallback;

    iget-object v1, v1, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->bankIcon:I

    invoke-virtual {v1, v2}, Lo/setExitSharedElementCallback;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    .line 6015
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onPostMessage:Ljava/lang/String;

    .line 71
    invoke-static {v1, p1}, Lo/remove;->onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 27
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
