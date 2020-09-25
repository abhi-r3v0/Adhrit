.class public final Lo/setTitleMarginTop$newSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTitleMarginTop;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getThumbTintList<",
        "+",
        "Lo/setTitleMarginStart$extraCallback;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "screenDataEvent",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/androidapp/gating/GatingViewModel$ScreenData;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic ICustomTabsCallback:Lo/setTitleMarginTop;


# direct methods
.method constructor <init>(Lo/setTitleMarginTop;)V
    .locals 0

    iput-object p1, p0, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 23

    move-object/from16 v6, p0

    .line 82
    move-object/from16 v0, p1

    check-cast v0, Lo/getThumbTintList;

    if-eqz v0, :cond_1c

    .line 1150
    iget-object v1, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-static {v1}, Lo/setTitleMarginTop;->onMessageChannelReady(Lo/setTitleMarginTop;)V

    .line 2011
    iget-boolean v1, v0, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 2015
    :cond_0
    iput-boolean v3, v0, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object v0, v0, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1151
    :goto_0
    move-object v4, v0

    check-cast v4, Lo/setTitleMarginStart$extraCallback;

    if-eqz v4, :cond_1

    .line 2060
    iget-object v0, v4, Lo/setTitleMarginStart$extraCallback;->extraCallback:Lo/requestPermissions;

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v2

    .line 1153
    :goto_1
    iget-object v0, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    const v1, 0x7f0b0544

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v4, :cond_1c

    .line 3056
    iget-object v7, v4, Lo/setTitleMarginStart$extraCallback;->onPostMessage:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1154
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, ""

    :cond_4
    invoke-static {v7, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_1c

    .line 1155
    iget-object v0, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v7

    const-string v0, "lifecycle"

    invoke-static {v7, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1590
    new-instance v8, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v8}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v8, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1591
    new-instance v9, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v9}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v2, v9, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1592
    invoke-virtual {v7}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v10

    sget-object v11, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 3212
    invoke-virtual {v10, v11}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v10

    if-ltz v10, :cond_5

    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_1a

    .line 4056
    iget-object v10, v4, Lo/setTitleMarginStart$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 1156
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v11

    const-string v12, "packageManager"

    const v13, 0x7f1304ef

    const-string v14, "MCF_VERIFY_CARD_FRAGMENT"

    const-string v15, "CARD_ONBOARDING_FRAGMENT"

    const-string v2, "This FragmentTransaction is not allowed to be added to the back stack."

    const-string v3, "SUPPORT_VIEW_FRAGMENT"

    const/4 v0, 0x2

    sparse-switch v11, :sswitch_data_0

    :cond_6
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_9

    :sswitch_0
    const-string v2, "REPORT_NOT_FOUND_FRAGMENT"

    .line 1241
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "onboarding/rnf"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1243
    iget-object v2, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v2}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 18464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1245
    sget-object v2, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;

    new-instance v2, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1e

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)V

    invoke-static {v2}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;->onPostMessage(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;)Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 19343
    invoke-virtual {v4, v1, v2, v3, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1246
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto :goto_3

    :sswitch_1
    const-string v2, "CP_INTRO_FRAGMENT"

    .line 1209
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1210
    iget-object v3, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    check-cast v4, Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v10, v3, v4}, Lo/extraCallback;->onMessageChannelReady(ZLandroid/content/pm/PackageManager;Landroid/content/Context;)V

    if-eqz v5, :cond_7

    .line 14007
    iget-object v3, v5, Lo/requestPermissions;->extraCallback:Ljava/util/List;

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_8

    .line 1212
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/addWrite;

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_9

    .line 1215
    iget-object v4, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v4}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v4

    .line 14464
    new-instance v5, Lo/binderDied;

    invoke-direct {v5, v4}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const/4 v4, 0x1

    .line 14778
    iput-boolean v4, v5, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    .line 15027
    iget-object v4, v3, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1218
    check-cast v4, Landroid/view/View;

    .line 15028
    iget-object v3, v3, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1218
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v4, v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback(Landroid/view/View;Ljava/lang/String;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    move-result-object v3

    .line 1219
    new-instance v4, Lo/getPositionDescription;

    invoke-direct {v4}, Lo/getPositionDescription;-><init>()V

    .line 1220
    move-object v5, v4

    check-cast v5, Landroidx/fragment/app/Fragment;

    new-instance v10, Lo/getValue;

    const/16 v11, 0x1e

    const-string/jumbo v12, "welcome_screen"

    const/4 v13, 0x0

    invoke-direct {v10, v12, v13, v11}, Lo/getValue;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v10, Landroid/os/Parcelable;

    const-string v11, "extra"

    .line 16016
    invoke-static {v5, v10, v11}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1221
    new-instance v10, Lo/sendQueueTitle;

    invoke-direct {v10}, Lo/sendQueueTitle;-><init>()V

    const-wide/16 v11, 0x384

    .line 1222
    invoke-virtual {v10, v11, v12}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    .line 1223
    sget-object v11, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1221
    invoke-virtual {v4, v10}, Landroidx/fragment/app/Fragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    .line 1224
    sget-object v4, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 16343
    invoke-virtual {v3, v1, v5, v2, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1225
    invoke-virtual {v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    .line 1227
    :cond_9
    iget-object v3, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 16464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v3}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const/4 v3, 0x1

    .line 16778
    iput-boolean v3, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    .line 1230
    new-instance v3, Lo/getPositionDescription;

    invoke-direct {v3}, Lo/getPositionDescription;-><init>()V

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 17343
    invoke-virtual {v4, v1, v3, v2, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1231
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    .line 1248
    :sswitch_2
    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1249
    invoke-static {}, Lo/VectorEnabledTintResources;->ICustomTabsCallback()Lo/shouldBeUsed;

    move-result-object v0

    sget-object v5, Lo/shouldBeUsed;->onNavigationEvent:Lo/shouldBeUsed;

    if-ne v0, v5, :cond_a

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "support"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1252
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    const v10, 0x7f1304f0

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "support"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20057
    :goto_6
    iget-object v5, v4, Lo/setTitleMarginStart$extraCallback;->onMessageChannelReady:Landroid/os/Bundle;

    if-eqz v5, :cond_b

    .line 21057
    iget-object v4, v4, Lo/setTitleMarginStart$extraCallback;->onMessageChannelReady:Landroid/os/Bundle;

    const-string/jumbo v5, "url"

    .line 1256
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "screenData.extra.getString(KEY_URL, url)"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    move-object/from16 v17, v0

    .line 1258
    iget-object v0, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 21464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1260
    sget-object v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;

    new-instance v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1e

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)V

    invoke-static {v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;->onPostMessage(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;)Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const/4 v5, 0x1

    .line 22234
    invoke-virtual {v4, v1, v0, v3, v5}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 22651
    iget-boolean v0, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_c

    .line 22655
    iput-boolean v5, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 22656
    iput-object v3, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1262
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    .line 22652
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1326
    :sswitch_3
    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1327
    sget-object v2, Lo/getTransformedBoundingBox;->ICustomTabsService:Lo/getTransformedBoundingBox$onPostMessage;

    .line 36693
    new-instance v2, Lo/getTransformedBoundingBox;

    invoke-direct {v2}, Lo/getTransformedBoundingBox;-><init>()V

    .line 1328
    iget-object v3, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 37464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v3}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1330
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 38343
    invoke-virtual {v4, v1, v2, v14, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1331
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    :sswitch_4
    const-string v2, "WaitListFragment"

    .line 1186
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "onboarding/waitlisted"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1190
    iget-object v2, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v2}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 10464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1192
    sget-object v2, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;

    new-instance v2, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1e

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)V

    invoke-static {v2}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;->onPostMessage(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;)Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 11343
    invoke-virtual {v4, v1, v2, v3, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1193
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    :sswitch_5
    const-string v2, "CREDIT_INTRO_FRAGMENT"

    .line 1195
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1196
    iget-object v3, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 11464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v3}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const v3, 0x7f01003d

    .line 11571
    iput v3, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback:I

    .line 11572
    iput v3, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback:I

    const/4 v3, 0x0

    .line 11573
    iput v3, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->onTransact:I

    .line 11574
    iput v3, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub:I

    .line 1198
    new-instance v3, Lo/peekValue;

    invoke-direct {v3}, Lo/peekValue;-><init>()V

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 12343
    invoke-virtual {v4, v1, v3, v2, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1199
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    :sswitch_6
    const-string v2, "CATCH_ERROR_FRAGMENT"

    .line 1235
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1236
    iget-object v3, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 17464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v3}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1238
    new-instance v3, Lo/getTitleMarginTop;

    invoke-direct {v3}, Lo/getTitleMarginTop;-><init>()V

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 18343
    invoke-virtual {v4, v1, v3, v2, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1239
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    :sswitch_7
    const-string v3, "NO_INTERNET_FRAGMENT"

    .line 1264
    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1265
    iget-object v4, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v4}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v4

    if-nez v4, :cond_d

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 23464
    :cond_d
    new-instance v5, Lo/binderDied;

    invoke-direct {v5, v4}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1267
    new-instance v4, Lo/getVerticalMargins;

    invoke-direct {v4}, Lo/getVerticalMargins;-><init>()V

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 24343
    invoke-virtual {v5, v1, v4, v3, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 24651
    iget-boolean v0, v5, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 24655
    iput-boolean v0, v5, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 24656
    iput-object v3, v5, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1269
    invoke-virtual {v5}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    .line 24652
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_8
    const-string v2, "CheckEligibilityFragment"

    .line 1157
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1159
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 5000
    sget-object v3, Lo/setTrackTintMode;->requestPostMessageChannel:Lo/getNavigationIcon;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0x13

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "transition_active"

    .line 1159
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1160
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 6000
    sget-object v2, Lo/setTrackTintMode;->MediaBrowserCompat$CustomActionCallback:Lo/setSubtitleTextColor;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v4, 0x43

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "list"

    .line 1160
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1161
    iget-object v2, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v2}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 6464
    new-instance v3, Lo/binderDied;

    invoke-direct {v3, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1163
    new-instance v2, Lo/recycle;

    invoke-direct {v2}, Lo/recycle;-><init>()V

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 7343
    invoke-virtual {v3, v1, v2, v15, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1164
    invoke-virtual {v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    .line 1167
    :cond_f
    sget-object v2, Lo/getTransformedBoundingBox;->ICustomTabsService:Lo/getTransformedBoundingBox$onPostMessage;

    .line 7693
    new-instance v2, Lo/getTransformedBoundingBox;

    invoke-direct {v2}, Lo/getTransformedBoundingBox;-><init>()V

    .line 1168
    iget-object v3, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 8464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v3}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1170
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 9343
    invoke-virtual {v4, v1, v2, v14, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1171
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    .line 1176
    :cond_10
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1177
    iget-object v4, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "new_user"

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1178
    new-instance v4, Lo/getTextArray;

    invoke-direct {v4}, Lo/getTextArray;-><init>()V

    .line 1179
    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1180
    iget-object v3, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 9464
    new-instance v5, Lo/binderDied;

    invoke-direct {v5, v3}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1182
    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 10343
    invoke-virtual {v5, v1, v4, v2, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1183
    invoke-virtual {v5}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    :sswitch_9
    const-string v3, "NEW_VERIFY_CARD_FRAGMENT"

    .line 1303
    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 32058
    iget-object v5, v4, Lo/setTitleMarginStart$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez v5, :cond_11

    .line 1305
    new-instance v5, Lo/setTitleMarginBottom$extraCallback;

    const/4 v11, 0x0

    .line 33056
    iget-object v12, v4, Lo/setTitleMarginStart$extraCallback;->onPostMessage:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1c

    move-object v10, v5

    .line 1305
    invoke-direct/range {v10 .. v15}, Lo/setTitleMarginBottom$extraCallback;-><init>(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_7

    .line 33058
    :cond_11
    iget-object v5, v4, Lo/setTitleMarginStart$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v5, :cond_14

    .line 1307
    check-cast v5, Lo/setTitleMarginBottom$extraCallback;

    .line 1310
    :goto_7
    sget-object v10, Lo/setTitleMarginBottom;->onTransact:Lo/setTitleMarginBottom$onPostMessage;

    invoke-static {v5}, Lo/setTitleMarginBottom$onPostMessage;->ICustomTabsCallback(Lo/setTitleMarginBottom$extraCallback;)Lo/setTitleMarginBottom;

    move-result-object v5

    .line 33059
    iget-boolean v4, v4, Lo/setTitleMarginStart$extraCallback;->ICustomTabsCallback:Z

    if-eqz v4, :cond_13

    .line 1313
    iget-object v0, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 33464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1315
    check-cast v5, Landroidx/fragment/app/Fragment;

    const/4 v0, 0x1

    .line 34234
    invoke-virtual {v4, v1, v5, v3, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 34651
    iget-boolean v1, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz v1, :cond_12

    .line 34655
    iput-boolean v0, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 34656
    iput-object v3, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1317
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    .line 34652
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1319
    :cond_13
    iget-object v2, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v2}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 35464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1321
    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 36343
    invoke-virtual {v4, v1, v5, v3, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1322
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    .line 1307
    :cond_14
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.dreamplug.androidapp.gating.NewOnboardAddCardFragment.AddVerifyCardLaunchData"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_a
    const-string v2, "DobPanFragment"

    .line 1334
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 39058
    iget-object v3, v4, Lo/setTitleMarginStart$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1335
    check-cast v3, Ljava/lang/String;

    .line 1336
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "don_pan_flow"

    .line 1337
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    new-instance v3, Lo/hasValue;

    invoke-direct {v3}, Lo/hasValue;-><init>()V

    .line 1339
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1340
    iget-object v4, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v4}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v4

    .line 39464
    new-instance v5, Lo/binderDied;

    invoke-direct {v5, v4}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1342
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 40343
    invoke-virtual {v5, v1, v3, v2, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1343
    invoke-virtual {v5}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    :sswitch_b
    const-string v3, "VERIFY_CARD_FRAGMENT"

    .line 1279
    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 27058
    iget-object v5, v4, Lo/setTitleMarginStart$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez v5, :cond_15

    .line 1282
    new-instance v5, Lo/getTitleMarginEnd$extraCallback;

    .line 28056
    iget-object v10, v4, Lo/setTitleMarginStart$extraCallback;->onPostMessage:Ljava/lang/String;

    const/16 v11, 0xc

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1282
    invoke-direct {v5, v10, v13, v12, v11}, Lo/getTitleMarginEnd$extraCallback;-><init>(Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_8

    .line 28058
    :cond_15
    iget-object v5, v4, Lo/setTitleMarginStart$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v5, :cond_18

    .line 1284
    check-cast v5, Lo/getTitleMarginEnd$extraCallback;

    .line 1287
    :goto_8
    sget-object v10, Lo/getTitleMarginEnd;->onNavigationEvent:Lo/getTitleMarginEnd$onNavigationEvent;

    invoke-static {v5}, Lo/getTitleMarginEnd$onNavigationEvent;->extraCallback(Lo/getTitleMarginEnd$extraCallback;)Lo/getTitleMarginEnd;

    move-result-object v5

    .line 28059
    iget-boolean v4, v4, Lo/setTitleMarginStart$extraCallback;->ICustomTabsCallback:Z

    if-eqz v4, :cond_17

    .line 1290
    iget-object v0, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 28464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1292
    check-cast v5, Landroidx/fragment/app/Fragment;

    const/4 v0, 0x1

    .line 29234
    invoke-virtual {v4, v1, v5, v3, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 29651
    iget-boolean v1, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz v1, :cond_16

    .line 29655
    iput-boolean v0, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 29656
    iput-object v3, v4, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1294
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    .line 29652
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1296
    :cond_17
    iget-object v2, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v2}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 30464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1298
    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 31343
    invoke-virtual {v4, v1, v5, v3, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1299
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    .line 1284
    :cond_18
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.dreamplug.androidapp.gating.FabrikOnboardAddCardFragment.AddVerifyCardLaunchData"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_c
    const-string v2, "COINS_INTRO_FRAGMENT"

    .line 1201
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1202
    iget-object v3, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-static {v3}, Lo/setTitleMarginTop;->extraCallback(Lo/setTitleMarginTop;)Lo/setTitleMarginStart;

    invoke-static {}, Lo/setTitleMarginStart;->ICustomTabsCallback()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1203
    iget-object v3, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    check-cast v4, Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v5, v3, v4}, Lo/extraCallback;->onMessageChannelReady(ZLandroid/content/pm/PackageManager;Landroid/content/Context;)V

    .line 1204
    :cond_19
    iget-object v3, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 12464
    new-instance v4, Lo/binderDied;

    invoke-direct {v4, v3}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1206
    new-instance v3, Lo/getLayoutDimension;

    invoke-direct {v3}, Lo/getLayoutDimension;-><init>()V

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 13343
    invoke-virtual {v4, v1, v3, v2, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1207
    invoke-virtual {v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    .line 1272
    :sswitch_d
    invoke-virtual {v10, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1273
    iget-object v2, v6, Lo/setTitleMarginTop$newSession;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v2}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 25464
    new-instance v3, Lo/binderDied;

    invoke-direct {v3, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1275
    new-instance v2, Lo/recycle;

    invoke-direct {v2}, Lo/recycle;-><init>()V

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 26343
    invoke-virtual {v3, v1, v2, v15, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1276
    invoke-virtual {v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto/16 :goto_3

    .line 1594
    :goto_9
    iput-boolean v0, v8, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_a

    .line 1595
    :cond_1a
    invoke-virtual {v7}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v1, :cond_1b

    .line 1596
    new-instance v10, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;

    move-object v0, v10

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setTitleMarginTop$newSession;Lo/setTitleMarginStart$extraCallback;Lo/requestPermissions;)V

    check-cast v10, Lo/createCallback;

    iput-object v10, v9, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1597
    iget-object v0, v9, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v7, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1599
    :cond_1b
    :goto_a
    new-instance v0, Lo/setTitleMarginTop$newSession$extraCallback;

    invoke-direct {v0, v9, v7}, Lo/setTitleMarginTop$newSession$extraCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :cond_1c
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
