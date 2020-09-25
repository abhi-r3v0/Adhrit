.class public Landroidx/biometric/BiometricPrompt$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi21$TransportControls;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/run;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/run;


# direct methods
.method public constructor <init>(Lo/run;)V
    .locals 0

    .line 496
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onPause()V
    .locals 5
    .annotation runtime Lo/setFlags;
        onMessageChannelReady = .enum Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_PAUSE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;
    .end annotation

    .line 499
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 1956
    iget-object v1, v0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 2956
    iget-object v1, v0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    .line 1950
    :goto_1
    invoke-virtual {v0}, Lo/onSessionEvent;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    return-void

    .line 3973
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    .line 504
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 4067
    iget-object v0, v0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    if-eqz v0, :cond_7

    .line 510
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 5067
    iget-object v0, v0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    .line 510
    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 511
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 6067
    iget-boolean v0, v0, Lo/run;->onTransact:Z

    if-nez v0, :cond_5

    .line 512
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 7067
    iput-boolean v3, v0, Lo/run;->onTransact:Z

    goto :goto_5

    .line 514
    :cond_5
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 8067
    iget-object v0, v0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    .line 514
    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onMessageChannelReady()V

    goto :goto_5

    .line 517
    :cond_6
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 9067
    iget-object v0, v0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    .line 517
    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onMessageChannelReady()V

    goto :goto_5

    .line 519
    :cond_7
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 10067
    iget-object v0, v0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    if-eqz v0, :cond_9

    .line 519
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 11067
    iget-object v0, v0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    if-eqz v0, :cond_9

    .line 520
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 12067
    iget-object v0, v0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 520
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 13067
    iget-object v1, v1, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    .line 15321
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v0, "FingerprintDialogFrag"

    const-string v2, "Failed to dismiss fingerprint dialog fragment. Fragment manager was null."

    .line 15322
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 15325
    :cond_8
    invoke-virtual {v0}, Lo/onAudioInfoChanged;->onMessageChannelReady()V

    .line 14984
    :goto_4
    invoke-virtual {v1, v4}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->extraCallback(I)V

    .line 17104
    :cond_9
    :goto_5
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    if-eqz v0, :cond_a

    .line 16944
    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback()V

    :cond_a
    return-void
.end method

.method onResume()V
    .locals 7
    .annotation runtime Lo/setFlags;
        onMessageChannelReady = .enum Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_RESUME:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;
    .end annotation

    .line 528
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 18973
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 19964
    iget-object v6, v1, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    if-eqz v6, :cond_1

    iget-object v1, v1, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    goto :goto_1

    .line 19965
    :cond_1
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    :goto_1
    const-string v6, "BiometricFragment"

    .line 529
    invoke-virtual {v1, v6}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    goto :goto_2

    :cond_2
    move-object v1, v5

    .line 20067
    :goto_2
    iput-object v1, v0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    .line 21973
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    .line 535
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 22067
    iget-object v0, v0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    if-eqz v0, :cond_4

    .line 536
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 23067
    iget-object v0, v0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    .line 536
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 24067
    iget-object v1, v1, Lo/run;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 536
    iget-object v2, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 25067
    iget-object v2, v2, Lo/run;->asInterface:Landroid/content/DialogInterface$OnClickListener;

    .line 536
    iget-object v6, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 26067
    iget-object v6, v6, Lo/run;->onPostMessage:Lo/run$onNavigationEvent;

    .line 536
    invoke-virtual {v0, v1, v2, v6}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onNavigationEvent(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Lo/run$onNavigationEvent;)V

    goto/16 :goto_6

    .line 539
    :cond_4
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 27964
    iget-object v1, v0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    goto :goto_4

    .line 27965
    :cond_5
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    :goto_4
    const-string v2, "FingerprintDialogFragment"

    .line 540
    invoke-virtual {v1, v2}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 28067
    iput-object v1, v0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 542
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 29964
    iget-object v1, v0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    goto :goto_5

    .line 29965
    :cond_6
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    :goto_5
    const-string v2, "FingerprintHelperFragment"

    .line 543
    invoke-virtual {v1, v2}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    .line 30067
    iput-object v1, v0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    .line 548
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 31067
    iget-object v0, v0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    if-eqz v0, :cond_7

    .line 549
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 32067
    iget-object v0, v0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 549
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 33067
    iget-object v1, v1, Lo/run;->asInterface:Landroid/content/DialogInterface$OnClickListener;

    .line 33308
    iput-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onMessageChannelReady:Landroid/content/DialogInterface$OnClickListener;

    .line 551
    :cond_7
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 34067
    iget-object v0, v0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    if-eqz v0, :cond_8

    .line 552
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 35067
    iget-object v0, v0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    .line 552
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 36067
    iget-object v1, v1, Lo/run;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 552
    iget-object v2, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 37067
    iget-object v2, v2, Lo/run;->onPostMessage:Lo/run$onNavigationEvent;

    .line 37272
    iput-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->extraCallback:Ljava/util/concurrent/Executor;

    .line 37273
    iput-object v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onMessageChannelReady:Lo/run$onNavigationEvent;

    .line 553
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 38067
    iget-object v0, v0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    if-eqz v0, :cond_8

    .line 554
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 39067
    iget-object v0, v0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    .line 554
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 40067
    iget-object v1, v1, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 40316
    iget-object v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;

    .line 41280
    iput-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback:Landroid/os/Handler;

    .line 41281
    new-instance v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;

    iget-object v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;

    .line 560
    :cond_8
    :goto_6
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 42910
    iget-boolean v1, v0, Lo/run;->onRelationshipValidationResult:Z

    if-nez v1, :cond_e

    .line 43104
    sget-object v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    if-eqz v1, :cond_e

    .line 43233
    iget v2, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->asInterface:I

    if-eq v2, v3, :cond_d

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    goto :goto_a

    .line 43956
    :cond_9
    iget-object v2, v0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    goto :goto_7

    :cond_a
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v2

    :goto_7
    if-eqz v2, :cond_c

    .line 44956
    iget-object v2, v0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    if-eqz v2, :cond_b

    iget-object v2, v0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    goto :goto_8

    :cond_b
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v2

    .line 42929
    :goto_8
    sget v3, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->generic_error_user_canceled:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_c
    const-string v2, ""

    .line 42930
    :goto_9
    iget-object v0, v0, Lo/run;->onPostMessage:Lo/run$onNavigationEvent;

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Lo/run$onNavigationEvent;->onMessageChannelReady(ILjava/lang/CharSequence;)V

    .line 45272
    iput v4, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onRelationshipValidationResult:I

    .line 42933
    invoke-virtual {v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback()V

    goto :goto_a

    .line 42920
    :cond_d
    iget-object v0, v0, Lo/run;->onPostMessage:Lo/run$onNavigationEvent;

    new-instance v2, Lo/run$onMessageChannelReady;

    invoke-direct {v2, v5}, Lo/run$onMessageChannelReady;-><init>(Lo/run$onPostMessage;)V

    invoke-virtual {v0, v2}, Lo/run$onNavigationEvent;->onPostMessage(Lo/run$onMessageChannelReady;)V

    .line 43272
    iput v4, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onRelationshipValidationResult:I

    .line 42923
    invoke-virtual {v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback()V

    .line 561
    :cond_e
    :goto_a
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->ICustomTabsCallback:Lo/run;

    .line 46067
    invoke-virtual {v0, v4}, Lo/run;->onNavigationEvent(Z)V

    return-void
.end method
