.class public final Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityResumed;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
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
.field private synthetic ICustomTabsCallback:[I

.field private synthetic extraCallback:[Ljava/lang/String;

.field private synthetic onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onPostMessage:Lo/onActivityResumed;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/onActivityResumed;[I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/onActivityResumed;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:[I

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->extraCallback:[Ljava/lang/String;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

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
    .locals 9

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:[I

    array-length p1, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    if-eqz p1, :cond_3

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:[I

    aget p1, p1, v1

    const-string v2, "emptySearch"

    const-string/jumbo v3, "subTitle"

    const-string/jumbo v4, "title"

    const-string v5, "deniedPermission"

    const-string/jumbo v6, "syncLottie"

    const/16 v7, 0x8

    if-nez p1, :cond_2

    const-string p1, "invite_now_contacts_permission_granted"

    .line 55
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 56
    invoke-static {}, Lo/onActivityResumed;->extraCallback()V

    .line 57
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/onActivityResumed;

    sget v8, Lo/getSwitchMinWidth$onPostMessage;->syncLottie:I

    invoke-virtual {p1, v8}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/onActivityResumed;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->deniedPermission:I

    invoke-virtual {p1, v6}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {p1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/onActivityResumed;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->emptySearch:I

    invoke-virtual {p1, v5}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/onActivityResumed;

    invoke-static {p1}, Lo/onActivityResumed;->asBinder(Lo/onActivityResumed;)Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->subTitle:I

    invoke-virtual {p1, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/onActivityResumed;

    .line 1000
    iget-object p1, p1, Lo/onActivityResumed;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onActivityPaused;

    .line 1118
    sget-object v1, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    iget-object p1, p1, Lo/onActivityPaused;->ICustomTabsCallback$Stub:Lo/onActivityPaused$extraCallback;

    check-cast p1, Lo/ReflectiveGenericLifecycleObserver;

    const-string v1, "contact_invite"

    const-string/jumbo v2, "sync request called"

    .line 2028
    invoke-static {v1, v2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    new-instance v1, Lo/onActivityPostCreated$onPostMessage;

    invoke-direct {v1, p1}, Lo/onActivityPostCreated$onPostMessage;-><init>(Lo/ReflectiveGenericLifecycleObserver;)V

    check-cast v1, Lo/setChildInsets;

    invoke-static {v1}, Lo/onActivityPostCreated;->ICustomTabsCallback(Lo/setChildInsets;)V

    goto :goto_1

    :cond_2
    const-string p1, "invite_now_contacts_permission_denied"

    .line 66
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 67
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/onActivityResumed;

    sget v8, Lo/getSwitchMinWidth$onPostMessage;->syncLottie:I

    invoke-virtual {p1, v8}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 68
    invoke-static {}, Lo/onActivityResumed;->extraCallback()V

    .line 69
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/onActivityResumed;

    iget-object v6, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->extraCallback:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v6

    invoke-static {p1, v6}, Lo/onActivityResumed;->onPostMessage(Lo/onActivityResumed;Z)V

    .line 70
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/onActivityResumed;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->deniedPermission:I

    invoke-virtual {p1, v6}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {p1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/onActivityResumed;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, v1}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/onActivityResumed;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->subTitle:I

    invoke-virtual {p1, v1}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/onActivityResumed;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->emptySearch:I

    invoke-virtual {p1, v1}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
