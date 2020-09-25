.class public final Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setTitleMarginTop$newSession;
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
.field private synthetic ICustomTabsCallback:Lo/setTitleMarginStart$extraCallback;

.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onMessageChannelReady:Lo/requestPermissions;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/setTitleMarginTop$newSession;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setTitleMarginTop$newSession;Lo/setTitleMarginStart$extraCallback;Lo/requestPermissions;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iput-object p4, p0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setTitleMarginStart$extraCallback;

    iput-object p5, p0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/requestPermissions;

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
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

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
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "owner"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setTitleMarginStart$extraCallback;

    .line 1056
    iget-object v1, v1, Lo/setTitleMarginStart$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-string v3, "packageManager"

    const v4, 0x7f1304ef

    const-string v5, "MCF_VERIFY_CARD_FRAGMENT"

    const-string v6, "CARD_ONBOARDING_FRAGMENT"

    const-string v7, "This FragmentTransaction is not allowed to be added to the back stack."

    const/4 v8, 0x0

    const-string v9, "SUPPORT_VIEW_FRAGMENT"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    const v13, 0x7f0b0544

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v2, "REPORT_NOT_FOUND_FRAGMENT"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v2, v2, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onboarding/rnf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 206
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v1, v1, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 15464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 210
    sget-object v1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;

    new-instance v1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1e

    move-object v14, v1

    invoke-direct/range {v14 .. v20}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)V

    invoke-static {v1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;->onPostMessage(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;)Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 16343
    invoke-virtual {v2, v13, v1, v9, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 209
    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    :sswitch_1
    const-string v2, "CP_INTRO_FRAGMENT"

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 150
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v1, v1, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v3, v3, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    check-cast v3, Landroid/content/Context;

    invoke-static {v10, v1, v3}, Lo/extraCallback;->onMessageChannelReady(ZLandroid/content/pm/PackageManager;Landroid/content/Context;)V

    .line 151
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/requestPermissions;

    if-eqz v1, :cond_0

    .line 11007
    iget-object v1, v1, Lo/requestPermissions;->extraCallback:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v1, v8

    :goto_0
    if-eqz v1, :cond_1

    .line 152
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/addWrite;

    goto :goto_1

    :cond_1
    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_2

    .line 155
    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v3, v3, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 11464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v3}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 11778
    iput-boolean v11, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    .line 12027
    iget-object v3, v1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 167
    check-cast v3, Landroid/view/View;

    .line 12028
    iget-object v1, v1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 167
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback(Landroid/view/View;Ljava/lang/String;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    move-result-object v1

    .line 166
    new-instance v3, Lo/getPositionDescription;

    invoke-direct {v3}, Lo/getPositionDescription;-><init>()V

    .line 173
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    new-instance v5, Lo/getValue;

    const/16 v6, 0x1e

    const-string/jumbo v7, "welcome_screen"

    invoke-direct {v5, v7, v8, v6}, Lo/getValue;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v5, Landroid/os/Parcelable;

    const-string v6, "extra"

    .line 13016
    invoke-static {v4, v5, v6}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 174
    new-instance v5, Lo/sendQueueTitle;

    invoke-direct {v5}, Lo/sendQueueTitle;-><init>()V

    const-wide/16 v6, 0x384

    .line 175
    invoke-virtual {v5, v6, v7}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    .line 176
    sget-object v6, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 174
    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    .line 177
    sget-object v3, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 13343
    invoke-virtual {v1, v13, v4, v2, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 165
    invoke-virtual {v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    .line 180
    :cond_2
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v1, v1, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 13464
    new-instance v3, Lo/binderDied;

    invoke-direct {v3, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 13778
    iput-boolean v11, v3, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    .line 185
    new-instance v1, Lo/getPositionDescription;

    invoke-direct {v1}, Lo/getPositionDescription;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 14343
    invoke-virtual {v3, v13, v1, v2, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 184
    invoke-virtual {v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    .line 68
    :sswitch_2
    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 216
    invoke-static {}, Lo/VectorEnabledTintResources;->ICustomTabsCallback()Lo/shouldBeUsed;

    move-result-object v1

    sget-object v2, Lo/shouldBeUsed;->onNavigationEvent:Lo/shouldBeUsed;

    if-ne v1, v2, :cond_3

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v2, v2, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "support"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 219
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v2, v2, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    const v3, 0x7f1304f0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "support"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    :goto_2
    iget-object v2, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setTitleMarginStart$extraCallback;

    .line 17057
    iget-object v2, v2, Lo/setTitleMarginStart$extraCallback;->onMessageChannelReady:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    .line 223
    iget-object v2, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setTitleMarginStart$extraCallback;

    .line 18057
    iget-object v2, v2, Lo/setTitleMarginStart$extraCallback;->onMessageChannelReady:Landroid/os/Bundle;

    const-string/jumbo v3, "url"

    .line 223
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "screenData.extra.getString(KEY_URL, url)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    move-object v15, v1

    .line 225
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v1, v1, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 18464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 231
    sget-object v1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;

    new-instance v1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1e

    move-object v14, v1

    invoke-direct/range {v14 .. v20}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)V

    invoke-static {v1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;->onPostMessage(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;)Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 19234
    invoke-virtual {v2, v13, v1, v9, v11}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 19651
    iget-boolean v1, v2, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz v1, :cond_5

    .line 19655
    iput-boolean v11, v2, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 19656
    iput-object v9, v2, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 229
    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    .line 19652
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :sswitch_3
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 330
    sget-object v1, Lo/getTransformedBoundingBox;->ICustomTabsService:Lo/getTransformedBoundingBox$onPostMessage;

    .line 33693
    new-instance v1, Lo/getTransformedBoundingBox;

    invoke-direct {v1}, Lo/getTransformedBoundingBox;-><init>()V

    .line 331
    iget-object v2, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v2, v2, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v2}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 34464
    new-instance v3, Lo/binderDied;

    invoke-direct {v3, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 335
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 35343
    invoke-virtual {v3, v13, v1, v5, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 334
    invoke-virtual {v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    :sswitch_4
    const-string v2, "WaitListFragment"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v2, v2, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onboarding/waitlisted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 118
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v1, v1, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 7464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 122
    sget-object v1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;

    new-instance v1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1e

    move-object v14, v1

    invoke-direct/range {v14 .. v20}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)V

    invoke-static {v1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;->onPostMessage(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;)Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 8343
    invoke-virtual {v2, v13, v1, v9, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 121
    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    :sswitch_5
    const-string v2, "CREDIT_INTRO_FRAGMENT"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 128
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v1, v1, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 8464
    new-instance v3, Lo/binderDied;

    invoke-direct {v3, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const v1, 0x7f01003d

    .line 8571
    iput v1, v3, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback:I

    .line 8572
    iput v1, v3, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback:I

    .line 8573
    iput v10, v3, Lo/MediaControllerCompat$MediaControllerImplApi23;->onTransact:I

    .line 8574
    iput v10, v3, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub:I

    .line 132
    new-instance v1, Lo/peekValue;

    invoke-direct {v1}, Lo/peekValue;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 9343
    invoke-virtual {v3, v13, v1, v2, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 131
    invoke-virtual {v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    :sswitch_6
    const-string v2, "CATCH_ERROR_FRAGMENT"

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 195
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v1, v1, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 14464
    new-instance v3, Lo/binderDied;

    invoke-direct {v3, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 199
    new-instance v1, Lo/getTitleMarginTop;

    invoke-direct {v1}, Lo/getTitleMarginTop;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 15343
    invoke-virtual {v3, v13, v1, v2, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 198
    invoke-virtual {v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    :sswitch_7
    const-string v2, "NO_INTERNET_FRAGMENT"

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 238
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v1, v1, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 20464
    :cond_6
    new-instance v3, Lo/binderDied;

    invoke-direct {v3, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 244
    new-instance v1, Lo/getVerticalMargins;

    invoke-direct {v1}, Lo/getVerticalMargins;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 21343
    invoke-virtual {v3, v13, v1, v2, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 21651
    iget-boolean v1, v3, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz v1, :cond_7

    .line 21655
    iput-boolean v11, v3, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 21656
    iput-object v2, v3, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 242
    invoke-virtual {v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    .line 21652
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_8
    const-string v2, "CheckEligibilityFragment"

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 75
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v1, Lo/setTrackTintMode;->requestPostMessageChannel:Lo/getNavigationIcon;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v4, 0x13

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "transition_active"

    .line 75
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 76
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v1, Lo/setTrackTintMode;->MediaBrowserCompat$CustomActionCallback:Lo/setSubtitleTextColor;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x43

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "list"

    .line 76
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 77
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v1, v1, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 3464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 81
    new-instance v1, Lo/recycle;

    invoke-direct {v1}, Lo/recycle;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 4343
    invoke-virtual {v2, v13, v1, v6, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 80
    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    .line 87
    :cond_8
    sget-object v1, Lo/getTransformedBoundingBox;->ICustomTabsService:Lo/getTransformedBoundingBox$onPostMessage;

    .line 4693
    new-instance v1, Lo/getTransformedBoundingBox;

    invoke-direct {v1}, Lo/getTransformedBoundingBox;-><init>()V

    .line 88
    iget-object v2, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v2, v2, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v2}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 5464
    new-instance v3, Lo/binderDied;

    invoke-direct {v3, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 92
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 6343
    invoke-virtual {v3, v13, v1, v5, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 91
    invoke-virtual {v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    .line 100
    :cond_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 101
    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v3, v3, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "new_user"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    new-instance v3, Lo/getTextArray;

    invoke-direct {v3}, Lo/getTextArray;-><init>()V

    .line 103
    invoke-virtual {v3, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 104
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v1, v1, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 6464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 108
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 7343
    invoke-virtual {v4, v13, v3, v2, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 107
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    :sswitch_9
    const-string v2, "NEW_VERIFY_CARD_FRAGMENT"

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 297
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setTitleMarginStart$extraCallback;

    .line 29058
    iget-object v1, v1, Lo/setTitleMarginStart$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez v1, :cond_a

    .line 298
    new-instance v1, Lo/setTitleMarginBottom$extraCallback;

    const/4 v15, 0x0

    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setTitleMarginStart$extraCallback;

    .line 30056
    iget-object v3, v3, Lo/setTitleMarginStart$extraCallback;->onPostMessage:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1c

    move-object v14, v1

    move-object/from16 v16, v3

    .line 298
    invoke-direct/range {v14 .. v19}, Lo/setTitleMarginBottom$extraCallback;-><init>(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    .line 300
    :cond_a
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setTitleMarginStart$extraCallback;

    .line 30058
    iget-object v1, v1, Lo/setTitleMarginStart$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 300
    check-cast v1, Lo/setTitleMarginBottom$extraCallback;

    .line 303
    :goto_3
    sget-object v3, Lo/setTitleMarginBottom;->onTransact:Lo/setTitleMarginBottom$onPostMessage;

    invoke-static {v1}, Lo/setTitleMarginBottom$onPostMessage;->ICustomTabsCallback(Lo/setTitleMarginBottom$extraCallback;)Lo/setTitleMarginBottom;

    move-result-object v1

    .line 305
    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setTitleMarginStart$extraCallback;

    .line 30059
    iget-boolean v3, v3, Lo/setTitleMarginStart$extraCallback;->ICustomTabsCallback:Z

    if-eqz v3, :cond_c

    .line 306
    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v3, v3, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 30464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v3}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 312
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 31234
    invoke-virtual {v4, v13, v1, v2, v11}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 31651
    iget-boolean v1, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz v1, :cond_b

    .line 31655
    iput-boolean v11, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 31656
    iput-object v2, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 310
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    .line 31652
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_c
    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v3, v3, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 32464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v3}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 322
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 33343
    invoke-virtual {v4, v13, v1, v2, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 321
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    .line 300
    :cond_d
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.dreamplug.androidapp.gating.NewOnboardAddCardFragment.AddVerifyCardLaunchData"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_a
    const-string v2, "DobPanFragment"

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 342
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setTitleMarginStart$extraCallback;

    .line 36058
    iget-object v1, v1, Lo/setTitleMarginStart$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 342
    check-cast v1, Ljava/lang/String;

    .line 343
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "don_pan_flow"

    .line 344
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v1, Lo/hasValue;

    invoke-direct {v1}, Lo/hasValue;-><init>()V

    .line 346
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 347
    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v3, v3, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 36464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v3}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 351
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 37343
    invoke-virtual {v4, v13, v1, v2, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 350
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    :sswitch_b
    const-string v2, "VERIFY_CARD_FRAGMENT"

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 264
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setTitleMarginStart$extraCallback;

    .line 24058
    iget-object v1, v1, Lo/setTitleMarginStart$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez v1, :cond_e

    .line 265
    new-instance v1, Lo/getTitleMarginEnd$extraCallback;

    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setTitleMarginStart$extraCallback;

    .line 25056
    iget-object v3, v3, Lo/setTitleMarginStart$extraCallback;->onPostMessage:Ljava/lang/String;

    const/16 v4, 0xc

    .line 265
    invoke-direct {v1, v3, v10, v8, v4}, Lo/getTitleMarginEnd$extraCallback;-><init>(Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_4

    .line 267
    :cond_e
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setTitleMarginStart$extraCallback;

    .line 25058
    iget-object v1, v1, Lo/setTitleMarginStart$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v1, :cond_11

    .line 267
    check-cast v1, Lo/getTitleMarginEnd$extraCallback;

    .line 270
    :goto_4
    sget-object v3, Lo/getTitleMarginEnd;->onNavigationEvent:Lo/getTitleMarginEnd$onNavigationEvent;

    invoke-static {v1}, Lo/getTitleMarginEnd$onNavigationEvent;->extraCallback(Lo/getTitleMarginEnd$extraCallback;)Lo/getTitleMarginEnd;

    move-result-object v1

    .line 272
    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setTitleMarginStart$extraCallback;

    .line 25059
    iget-boolean v3, v3, Lo/setTitleMarginStart$extraCallback;->ICustomTabsCallback:Z

    if-eqz v3, :cond_10

    .line 273
    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v3, v3, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 25464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v3}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 279
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 26234
    invoke-virtual {v4, v13, v1, v2, v11}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 26651
    iget-boolean v1, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz v1, :cond_f

    .line 26655
    iput-boolean v11, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 26656
    iput-object v2, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 277
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_5

    .line 26652
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_10
    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v3, v3, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 27464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v3}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 289
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 28343
    invoke-virtual {v4, v13, v1, v2, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 288
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto :goto_5

    .line 267
    :cond_11
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.dreamplug.androidapp.gating.FabrikOnboardAddCardFragment.AddVerifyCardLaunchData"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_c
    const-string v2, "COINS_INTRO_FRAGMENT"

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 138
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v1, v1, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-static {v1}, Lo/setTitleMarginTop;->extraCallback(Lo/setTitleMarginTop;)Lo/setTitleMarginStart;

    invoke-static {}, Lo/setTitleMarginStart;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_12

    .line 139
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v1, v1, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v3, v3, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    check-cast v3, Landroid/content/Context;

    invoke-static {v10, v1, v3}, Lo/extraCallback;->onMessageChannelReady(ZLandroid/content/pm/PackageManager;Landroid/content/Context;)V

    .line 140
    :cond_12
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v1, v1, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 9464
    new-instance v3, Lo/binderDied;

    invoke-direct {v3, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 144
    new-instance v1, Lo/getLayoutDimension;

    invoke-direct {v1}, Lo/getLayoutDimension;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 10343
    invoke-virtual {v3, v13, v1, v2, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 143
    invoke-virtual {v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto :goto_5

    .line 57
    :sswitch_d
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 252
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setTitleMarginTop$newSession;

    iget-object v1, v1, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 22464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 256
    new-instance v1, Lo/recycle;

    invoke-direct {v1}, Lo/recycle;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 23343
    invoke-virtual {v2, v13, v1, v6, v12}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 255
    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    .line 27
    :cond_13
    :goto_5
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v2, v0

    check-cast v2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v1, v2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v11, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66b317bb -> :sswitch_d
        -0x4cf05320 -> :sswitch_c
        -0x463b76a7 -> :sswitch_b
        -0x36149f8a -> :sswitch_a
        -0x1a2e1948 -> :sswitch_9
        -0x138f990b -> :sswitch_8
        -0x11cdb570 -> :sswitch_7
        -0x12e2315 -> :sswitch_6
        0x52c8e9 -> :sswitch_5
        0x54141b43 -> :sswitch_4
        0x668bc0c8 -> :sswitch_3
        0x6d8e3a1a -> :sswitch_2
        0x7284c8f5 -> :sswitch_1
        0x76121e84 -> :sswitch_0
    .end sparse-switch
.end method
