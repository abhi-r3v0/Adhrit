.class public Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Landroid/os/Handler;

.field private ICustomTabsCallback$Stub:I

.field private asBinder:Landroid/content/Context;

.field final asInterface:Lo/putLong$extraCallback;

.field public extraCallback:Ljava/util/concurrent/Executor;

.field public onMessageChannelReady:Lo/run$onNavigationEvent;

.field onNavigationEvent:Lo/run$onPostMessage;

.field public onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;

.field private onRelationshipValidationResult:Lo/MediaMetadataCompatApi21;

.field private onTransact:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 107
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;

    invoke-direct {v0, p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->asInterface:Lo/putLong$extraCallback;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback:Landroid/os/Handler;

    return-object p0
.end method

.method private static ICustomTabsCallback(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 366
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown error code: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FingerprintHelperFrag"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->default_error_msg:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 358
    :pswitch_0
    sget p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->fingerprint_error_hw_not_present:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 362
    :pswitch_1
    sget p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->fingerprint_error_no_fingerprints:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 364
    :pswitch_2
    sget p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->fingerprint_error_user_canceled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 360
    :cond_0
    sget p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->fingerprint_error_hw_not_available:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic ICustomTabsCallback(Lo/putLong$ICustomTabsCallback;)Lo/run$onPostMessage;
    .locals 1

    if-eqz p0, :cond_2

    .line 16376
    invoke-virtual {p0}, Lo/putLong$ICustomTabsCallback;->onNavigationEvent()Ljavax/crypto/Cipher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16377
    new-instance v0, Lo/run$onPostMessage;

    invoke-virtual {p0}, Lo/putLong$ICustomTabsCallback;->onNavigationEvent()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/run$onPostMessage;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 16378
    :cond_0
    invoke-virtual {p0}, Lo/putLong$ICustomTabsCallback;->onPostMessage()Ljava/security/Signature;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16379
    new-instance v0, Lo/run$onPostMessage;

    invoke-virtual {p0}, Lo/putLong$ICustomTabsCallback;->onPostMessage()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/run$onPostMessage;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 16380
    :cond_1
    invoke-virtual {p0}, Lo/putLong$ICustomTabsCallback;->extraCallback()Ljavax/crypto/Mac;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16381
    new-instance v0, Lo/run$onPostMessage;

    invoke-virtual {p0}, Lo/putLong$ICustomTabsCallback;->extraCallback()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/run$onPostMessage;-><init>(Ljavax/crypto/Mac;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private ICustomTabsCallback()V
    .locals 4

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onTransact:Z

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v1

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 13464
    new-instance v3, Lo/binderDied;

    invoke-direct {v3, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 313
    invoke-virtual {v3, p0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    move-result-object v2

    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent()I

    .line 15104
    :cond_0
    sget-object v2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    if-eqz v2, :cond_1

    .line 15246
    iget-boolean v2, v2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback$Stub:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    .line 16151
    instance-of v0, v1, Landroidx/biometric/DeviceCredentialHandlerActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16152
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method static synthetic extraCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)I
    .locals 0

    .line 48
    iget p0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback$Stub:I

    return p0
.end method

.method static extraCallback()Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;
    .locals 1

    .line 222
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;-><init>()V

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;
    .locals 0

    .line 48
    iget-object p0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback()V

    return-void
.end method

.method static synthetic onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->asBinder:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 2

    .line 295
    iput p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback$Stub:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 13104
    sget-object p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    if-eqz p1, :cond_0

    .line 13246
    iget-boolean p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback$Stub:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 11346
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onMessageChannelReady:Lo/run$onNavigationEvent;

    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->asBinder:Landroid/content/Context;

    const/16 v1, 0xa

    .line 11347
    invoke-static {v0, v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 11346
    invoke-virtual {p1, v1, v0}, Lo/run$onNavigationEvent;->onMessageChannelReady(ILjava/lang/CharSequence;)V

    .line 300
    :cond_1
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onRelationshipValidationResult:Lo/MediaMetadataCompatApi21;

    if-eqz p1, :cond_2

    .line 301
    invoke-virtual {p1}, Lo/MediaMetadataCompatApi21;->onNavigationEvent()V

    .line 303
    :cond_2
    invoke-direct {p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 235
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 236
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->asBinder:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 245
    iget-boolean v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onTransact:Z

    if-nez v0, :cond_6

    .line 246
    new-instance v0, Lo/MediaMetadataCompatApi21;

    invoke-direct {v0}, Lo/MediaMetadataCompatApi21;-><init>()V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onRelationshipValidationResult:Lo/MediaMetadataCompatApi21;

    const/4 v0, 0x0

    .line 247
    iput v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback$Stub:I

    .line 248
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->asBinder:Landroid/content/Context;

    .line 249
    invoke-static {v1}, Lo/putLong;->ICustomTabsCallback(Landroid/content/Context;)Lo/putLong;

    move-result-object v2

    .line 1328
    invoke-virtual {v2}, Lo/putLong;->onPostMessage()Z

    move-result v1

    const/4 v8, 0x1

    if-nez v1, :cond_2

    .line 3104
    sget-object v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    if-eqz v1, :cond_0

    .line 3246
    iget-boolean v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback$Stub:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 1346
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onMessageChannelReady:Lo/run$onNavigationEvent;

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->asBinder:Landroid/content/Context;

    const/16 v3, 0xc

    .line 1347
    invoke-static {v1, v3}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1346
    invoke-virtual {v0, v3, v1}, Lo/run$onNavigationEvent;->onMessageChannelReady(ILjava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1331
    :cond_2
    invoke-virtual {v2}, Lo/putLong;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5104
    sget-object v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    if-eqz v1, :cond_3

    .line 5246
    iget-boolean v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback$Stub:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_1

    .line 3346
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onMessageChannelReady:Lo/run$onNavigationEvent;

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->asBinder:Landroid/content/Context;

    const/16 v3, 0xb

    .line 3347
    invoke-static {v1, v3}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 3346
    invoke-virtual {v0, v3, v1}, Lo/run$onNavigationEvent;->onMessageChannelReady(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 251
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;

    .line 6071
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;->extraCallback:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 252
    invoke-direct {p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback()V

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 255
    iget-object v5, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onRelationshipValidationResult:Lo/MediaMetadataCompatApi21;

    iget-object v6, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->asInterface:Lo/putLong$extraCallback;

    const/4 v7, 0x0

    .line 254
    invoke-virtual/range {v2 .. v7}, Lo/putLong;->onNavigationEvent(Lo/putLong$ICustomTabsCallback;ILo/MediaMetadataCompatApi21;Lo/putLong$extraCallback;Landroid/os/Handler;)V

    .line 260
    iput-boolean v8, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onTransact:Z

    .line 263
    :cond_6
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
