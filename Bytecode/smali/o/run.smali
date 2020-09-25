.class public Lo/run;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/run$ICustomTabsCallback;,
        Lo/run$onNavigationEvent;,
        Lo/run$onMessageChannelReady;,
        Lo/run$onPostMessage;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/util/concurrent/Executor;

.field private final ICustomTabsCallback$Stub:Lo/MediaControllerCompatApi21$TransportControls;

.field public asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

.field public final asInterface:Landroid/content/DialogInterface$OnClickListener;

.field public extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

.field public onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

.field public onNavigationEvent:Lo/onSessionEvent;

.field public final onPostMessage:Lo/run$onNavigationEvent;

.field public onRelationshipValidationResult:Z

.field public onTransact:Z


# direct methods
.method public constructor <init>(Lo/onSessionEvent;Ljava/util/concurrent/Executor;Lo/run$onNavigationEvent;)V
    .locals 1

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-object p0, p0, Lo/run;->asInterface:Landroid/content/DialogInterface$OnClickListener;

    .line 496
    new-instance v0, Landroidx/biometric/BiometricPrompt$2;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$2;-><init>(Lo/run;)V

    iput-object v0, p0, Lo/run;->ICustomTabsCallback$Stub:Lo/MediaControllerCompatApi21$TransportControls;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 592
    iput-object p1, p0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    .line 593
    iput-object p3, p0, Lo/run;->onPostMessage:Lo/run$onNavigationEvent;

    .line 594
    iput-object p2, p0, Lo/run;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 596
    invoke-virtual {p1}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    iget-object p2, p0, Lo/run;->ICustomTabsCallback$Stub:Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    return-void

    .line 590
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AuthenticationCallback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 587
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Executor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 584
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FragmentActivity must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final extraCallback(Lo/run$ICustomTabsCallback;)V
    .locals 11

    .line 3431
    iget-object v0, p1, Lo/run$ICustomTabsCallback;->onPostMessage:Landroid/os/Bundle;

    const-string v1, "handling_device_credential_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2667
    iput-boolean v0, p0, Lo/run;->onRelationshipValidationResult:Z

    .line 3956
    iget-object v0, p0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    .line 4421
    :goto_0
    iget-object v3, p1, Lo/run$ICustomTabsCallback;->onPostMessage:Landroid/os/Bundle;

    const-string v4, "allow_device_credential"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x1c

    const-string v5, "BiometricPromptCompat"

    const/4 v6, 0x1

    if-eqz v3, :cond_7

    .line 2669
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v4, :cond_7

    .line 2671
    iget-boolean v3, p0, Lo/run;->onRelationshipValidationResult:Z

    if-nez v3, :cond_4

    .line 4956
    iget-object v0, p0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    .line 4845
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 4850
    :cond_2
    invoke-virtual {p0, v6}, Lo/run;->onNavigationEvent(Z)V

    .line 5375
    iget-object p1, p1, Lo/run$ICustomTabsCallback;->onPostMessage:Landroid/os/Bundle;

    .line 4855
    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4857
    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroidx/biometric/DeviceCredentialHandlerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "prompt_info_bundle"

    .line 4858
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4859
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_3
    :goto_2
    const-string p1, "Failed to start handler activity. Parent activity was null or finishing."

    .line 4846
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2677
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_7

    if-nez v0, :cond_5

    const-string p1, "Failed to authenticate with device credential. Activity was null."

    .line 2679
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6104
    :cond_5
    sget-object v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    if-nez v1, :cond_6

    const-string p1, "Failed to authenticate with device credential. Bridge was null."

    .line 2686
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6246
    :cond_6
    iget-boolean v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback$Stub:Z

    if-nez v1, :cond_7

    .line 7091
    new-instance v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$1;

    invoke-direct {v1, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$1;-><init>(Landroid/content/Context;)V

    .line 2692
    invoke-virtual {v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$1;->onNavigationEvent()I

    move-result v1

    if-eqz v1, :cond_7

    .line 7375
    iget-object p1, p1, Lo/run$ICustomTabsCallback;->onPostMessage:Landroid/os/Bundle;

    .line 2693
    invoke-static {v5, v0, p1, v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->ICustomTabsCallback(Ljava/lang/String;Lo/onSessionEvent;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    return-void

    .line 7964
    :cond_7
    iget-object v1, p0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    goto :goto_3

    .line 7965
    :cond_8
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 8723
    :goto_3
    iget-boolean v3, v1, Lo/requestExtraBinder;->updateVisuals:Z

    const/4 v7, 0x0

    if-nez v3, :cond_a

    iget-boolean v3, v1, Lo/requestExtraBinder;->mayLaunchUrl:Z

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_b

    const-string p1, "Not launching prompt. authenticate() called after onSaveInstanceState()"

    .line 2704
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9375
    :cond_b
    iget-object p1, p1, Lo/run$ICustomTabsCallback;->onPostMessage:Landroid/os/Bundle;

    .line 2709
    iput-boolean v7, p0, Lo/run;->onTransact:Z

    .line 9973
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_c

    const/4 v3, 0x1

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    :goto_6
    const/4 v5, 0x7

    if-eqz v3, :cond_f

    const-string v0, "BiometricFragment"

    .line 2718
    invoke-virtual {v1, v0}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    if-eqz v3, :cond_d

    .line 2720
    iput-object v3, p0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    goto :goto_7

    .line 2722
    :cond_d
    invoke-static {}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onNavigationEvent()Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    move-result-object v4

    iput-object v4, p0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    .line 2724
    :goto_7
    iget-object v4, p0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    iget-object v8, p0, Lo/run;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    iget-object v9, p0, Lo/run;->asInterface:Landroid/content/DialogInterface$OnClickListener;

    iget-object v10, p0, Lo/run;->onPostMessage:Lo/run$onNavigationEvent;

    invoke-virtual {v4, v8, v9, v10}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onNavigationEvent(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Lo/run$onNavigationEvent;)V

    .line 2728
    iget-object v4, p0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-virtual {v4, v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->ICustomTabsCallback(Lo/run$onPostMessage;)V

    .line 2729
    iget-object v2, p0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-virtual {v2, p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onPostMessage(Landroid/os/Bundle;)V

    if-nez v3, :cond_e

    .line 10464
    new-instance p1, Lo/binderDied;

    invoke-direct {p1, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 2734
    iget-object v2, p0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    .line 11171
    invoke-virtual {p1, v7, v2, v0, v6}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 2735
    invoke-virtual {p1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent()I

    goto/16 :goto_c

    .line 2736
    :cond_e
    iget-object p1, p0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 11464
    new-instance p1, Lo/binderDied;

    invoke-direct {p1, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 2738
    iget-object v0, p0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    .line 12424
    new-instance v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    invoke-direct {v2, v5, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;)V

    .line 2739
    invoke-virtual {p1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent()I

    goto/16 :goto_c

    :cond_f
    const-string v3, "FingerprintDialogFragment"

    .line 2744
    invoke-virtual {v1, v3}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v8

    check-cast v8, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    if-eqz v8, :cond_10

    .line 2747
    iput-object v8, p0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    goto :goto_8

    .line 2749
    :cond_10
    invoke-static {}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onPostMessage()Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    move-result-object v9

    iput-object v9, p0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 2752
    :goto_8
    iget-object v9, p0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    iget-object v10, p0, Lo/run;->asInterface:Landroid/content/DialogInterface$OnClickListener;

    .line 13308
    iput-object v10, v9, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onMessageChannelReady:Landroid/content/DialogInterface$OnClickListener;

    .line 2753
    iget-object v9, p0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 14283
    iput-object p1, v9, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onNavigationEvent:Landroid/os/Bundle;

    if-eqz v0, :cond_13

    .line 2755
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 15190
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v9, v4, :cond_11

    const/4 p1, 0x0

    goto :goto_9

    .line 15194
    :cond_11
    sget v4, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->hide_fingerprint_instantly_prefixes:I

    invoke-static {v0, p1, v4}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    :goto_9
    if-nez p1, :cond_13

    if-nez v8, :cond_12

    .line 2757
    iget-object p1, p0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    invoke-virtual {p1, v1, v3}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto :goto_a

    .line 2758
    :cond_12
    iget-object p1, p0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 15464
    new-instance p1, Lo/binderDied;

    invoke-direct {p1, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 2759
    iget-object v0, p0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 16424
    new-instance v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    invoke-direct {v3, v5, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;)V

    .line 2760
    invoke-virtual {p1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent()I

    :cond_13
    :goto_a
    const-string p1, "FingerprintHelperFragment"

    .line 2766
    invoke-virtual {v1, p1}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    if-eqz v0, :cond_14

    .line 2769
    iput-object v0, p0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    goto :goto_b

    .line 2771
    :cond_14
    invoke-static {}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->extraCallback()Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    move-result-object v3

    iput-object v3, p0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    .line 2774
    :goto_b
    iget-object v3, p0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    iget-object v4, p0, Lo/run;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    iget-object v8, p0, Lo/run;->onPostMessage:Lo/run$onNavigationEvent;

    .line 17272
    iput-object v4, v3, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->extraCallback:Ljava/util/concurrent/Executor;

    .line 17273
    iput-object v8, v3, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onMessageChannelReady:Lo/run$onNavigationEvent;

    .line 2775
    iget-object v3, p0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 17316
    iget-object v3, v3, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;

    .line 2776
    iget-object v4, p0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    .line 18280
    iput-object v3, v4, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback:Landroid/os/Handler;

    .line 18281
    new-instance v8, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;

    iget-object v9, v4, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback:Landroid/os/Handler;

    invoke-direct {v8, v9}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;-><init>(Landroid/os/Handler;)V

    iput-object v8, v4, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;

    .line 2777
    iget-object v4, p0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    .line 19230
    iput-object v2, v4, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onNavigationEvent:Lo/run$onPostMessage;

    const/4 v2, 0x6

    .line 2779
    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v8, 0x1f4

    .line 2778
    invoke-virtual {v3, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-nez v0, :cond_15

    .line 19464
    new-instance v0, Lo/binderDied;

    invoke-direct {v0, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 2785
    iget-object v2, p0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    .line 20171
    invoke-virtual {v0, v7, v2, p1, v6}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 2787
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent()I

    goto :goto_c

    .line 2788
    :cond_15
    iget-object p1, p0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 20464
    new-instance p1, Lo/binderDied;

    invoke-direct {p1, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 2790
    iget-object v0, p0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    .line 21424
    new-instance v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    invoke-direct {v2, v5, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;)V

    .line 2791
    invoke-virtual {p1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent()I

    .line 21489
    :cond_16
    :goto_c
    invoke-virtual {v1, v6}, Lo/requestExtraBinder;->ICustomTabsCallback(Z)Z

    .line 21490
    invoke-virtual {v1}, Lo/requestExtraBinder;->onRelationshipValidationResult()V

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 25067
    iget-object p1, p0, Lo/run;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 24466
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 4

    .line 872
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    return-void

    .line 22095
    :cond_0
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    if-nez v0, :cond_1

    .line 22096
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;-><init>()V

    sput-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    .line 22098
    :cond_1
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    .line 877
    iget-boolean v1, p0, Lo/run;->onRelationshipValidationResult:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 22973
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 878
    iget-object v1, p0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    if-eqz v1, :cond_3

    .line 23126
    iput-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    goto :goto_1

    .line 880
    :cond_3
    iget-object v1, p0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    if-eqz v2, :cond_6

    .line 23142
    iput-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 23143
    iput-object v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    goto :goto_1

    .line 23956
    :cond_4
    iget-object v1, p0, Lo/run;->onNavigationEvent:Lo/onSessionEvent;

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    .line 889
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 890
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 889
    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 890
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v1

    .line 24112
    iput v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onMessageChannelReady:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "BiometricPromptCompat"

    const-string v3, "Failed to register client theme to bridge"

    .line 892
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    :cond_6
    :goto_1
    iget-object v1, p0, Lo/run;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lo/run;->asInterface:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lo/run;->onPostMessage:Lo/run$onNavigationEvent;

    invoke-virtual {v0, v1, v2, v3}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onPostMessage(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Lo/run$onNavigationEvent;)V

    if-eqz p1, :cond_7

    const/4 p1, 0x2

    .line 24264
    iput p1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onRelationshipValidationResult:I

    :cond_7
    return-void
.end method

.method public run()V
    .locals 4

    .line 26973
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, ""

    const/16 v2, 0xd

    if-eqz v0, :cond_2

    .line 27067
    iget-object v0, p0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    if-eqz v0, :cond_2

    .line 25471
    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->ICustomTabsCallback()Ljava/lang/CharSequence;

    move-result-object v0

    .line 29067
    iget-object v3, p0, Lo/run;->onPostMessage:Lo/run$onNavigationEvent;

    if-eqz v0, :cond_1

    move-object v1, v0

    .line 25472
    :cond_1
    invoke-virtual {v3, v2, v1}, Lo/run$onNavigationEvent;->onMessageChannelReady(ILjava/lang/CharSequence;)V

    .line 30067
    iget-object v0, p0, Lo/run;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    .line 25474
    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->extraCallback()V

    return-void

    .line 31067
    :cond_2
    iget-object v0, p0, Lo/run;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    if-eqz v0, :cond_4

    .line 32067
    iget-object v3, p0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    if-eqz v3, :cond_4

    .line 33304
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onNavigationEvent:Landroid/os/Bundle;

    const-string v3, "negative_text"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 34067
    iget-object v3, p0, Lo/run;->onPostMessage:Lo/run$onNavigationEvent;

    if-eqz v0, :cond_3

    move-object v1, v0

    .line 25479
    :cond_3
    invoke-virtual {v3, v2, v1}, Lo/run$onNavigationEvent;->onMessageChannelReady(ILjava/lang/CharSequence;)V

    .line 35067
    iget-object v0, p0, Lo/run;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    const/4 v1, 0x2

    .line 25481
    invoke-virtual {v0, v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->extraCallback(I)V

    return-void

    :cond_4
    const-string v0, "BiometricPromptCompat"

    const-string v1, "Negative button callback not run. Fragment was null."

    .line 25485
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
