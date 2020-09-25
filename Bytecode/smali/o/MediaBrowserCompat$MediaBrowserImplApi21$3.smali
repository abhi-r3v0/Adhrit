.class public Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;
.super Landroidx/fragment/app/Fragment;
.source ""


# instance fields
.field ICustomTabsCallback:Landroid/content/DialogInterface$OnClickListener;

.field private ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

.field private ICustomTabsCallback$Stub$Proxy:Landroid/os/CancellationSignal;

.field private ICustomTabsService:Z

.field private asBinder:Landroid/os/Bundle;

.field private asInterface:Landroid/hardware/biometrics/BiometricPrompt;

.field extraCallback:Ljava/util/concurrent/Executor;

.field private final getInterfaceDescriptor:Landroid/content/DialogInterface$OnClickListener;

.field private final newSession:Ljava/util/concurrent/Executor;

.field private onMessageChannelReady:Landroid/content/Context;

.field onNavigationEvent:Lo/run$onNavigationEvent;

.field final onPostMessage:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private onRelationshipValidationResult:Lo/run$onPostMessage;

.field private onTransact:Z

.field private final postMessage:Landroid/content/DialogInterface$OnClickListener;

.field private final warmup:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->warmup:Landroid/os/Handler;

    .line 84
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$3;

    invoke-direct {v0, p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$3;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;)V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->newSession:Ljava/util/concurrent/Executor;

    .line 92
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;

    invoke-direct {v0, p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;)V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onPostMessage:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 159
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$5;

    invoke-direct {v0, p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$5;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;)V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->getInterfaceDescriptor:Landroid/content/DialogInterface$OnClickListener;

    .line 168
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$1;

    invoke-direct {v0, p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$1;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;)V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->postMessage:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic extraCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onMessageChannelReady:Landroid/content/Context;

    return-object p0
.end method

.method private static extraCallback(Lo/run$onPostMessage;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3149
    :cond_0
    iget-object v1, p0, Lo/run$onPostMessage;->onPostMessage:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_1

    .line 339
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 4149
    iget-object p0, p0, Lo/run$onPostMessage;->onPostMessage:Ljavax/crypto/Cipher;

    .line 340
    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 5139
    :cond_1
    iget-object v1, p0, Lo/run$onPostMessage;->extraCallback:Ljava/security/Signature;

    if-eqz v1, :cond_2

    .line 342
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 6139
    iget-object p0, p0, Lo/run$onPostMessage;->extraCallback:Ljava/security/Signature;

    .line 343
    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 6159
    :cond_2
    iget-object v1, p0, Lo/run$onPostMessage;->onMessageChannelReady:Ljavax/crypto/Mac;

    if-eqz v1, :cond_3

    .line 345
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 7159
    iget-object p0, p0, Lo/run$onPostMessage;->onMessageChannelReady:Ljavax/crypto/Mac;

    .line 346
    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method

.method static synthetic onMessageChannelReady(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Lo/run$onPostMessage;
    .locals 0

    .line 54
    invoke-static {p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onPostMessage(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Lo/run$onPostMessage;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;)Landroid/os/Bundle;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->asBinder:Landroid/os/Bundle;

    return-object p0
.end method

.method static onNavigationEvent()Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;
    .locals 1

    .line 183
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;-><init>()V

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->ICustomTabsService:Z

    return p1
.end method

.method static synthetic onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->warmup:Landroid/os/Handler;

    return-object p0
.end method

.method private static onPostMessage(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Lo/run$onPostMessage;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 323
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 324
    new-instance v0, Lo/run$onPostMessage;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/run$onPostMessage;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 325
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 326
    new-instance v0, Lo/run$onPostMessage;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/run$onPostMessage;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 327
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 328
    new-instance v0, Lo/run$onPostMessage;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/run$onPostMessage;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method protected ICustomTabsCallback()Ljava/lang/CharSequence;
    .locals 1

    .line 235
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    return-object v0
.end method

.method ICustomTabsCallback(Lo/run$onPostMessage;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onRelationshipValidationResult:Lo/run$onPostMessage;

    return-void
.end method

.method extraCallback()V
    .locals 3

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onTransact:Z

    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 1464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 228
    invoke-virtual {v2, p0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    move-result-object v1

    invoke-virtual {v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent()I

    .line 2151
    :cond_0
    instance-of v1, v0, Landroidx/biometric/DeviceCredentialHandlerActivity;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2152
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 255
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 256
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onMessageChannelReady:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 240
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 241
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 264
    iget-boolean v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onTransact:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->asBinder:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    const-string v2, "negative_text"

    .line 265
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    .line 267
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 269
    iget-object v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->asBinder:Landroid/os/Bundle;

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v2

    iget-object v3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->asBinder:Landroid/os/Bundle;

    const-string/jumbo v4, "subtitle"

    .line 270
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v2

    iget-object v3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->asBinder:Landroid/os/Bundle;

    const-string v4, "description"

    .line 271
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 273
    iget-object v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->asBinder:Landroid/os/Bundle;

    const-string v3, "allow_device_credential"

    .line 274
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-gt v3, v4, :cond_0

    .line 278
    sget v3, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->confirm_device_credential_password:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    .line 279
    iget-object v4, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->extraCallback:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->postMessage:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    goto :goto_0

    .line 281
    :cond_0
    iget-object v3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 282
    iget-object v3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    iget-object v4, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->extraCallback:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->getInterfaceDescriptor:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 287
    :cond_1
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_2

    .line 288
    iget-object v3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->asBinder:Landroid/os/Bundle;

    const-string/jumbo v4, "require_confirmation"

    .line 289
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 288
    invoke-virtual {v0, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 290
    invoke-virtual {v0, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    :cond_2
    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 294
    iput-boolean v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->ICustomTabsService:Z

    .line 295
    iget-object v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->warmup:Landroid/os/Handler;

    new-instance v3, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$4;

    invoke-direct {v3, p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$4;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->asInterface:Landroid/hardware/biometrics/BiometricPrompt;

    .line 306
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->ICustomTabsCallback$Stub$Proxy:Landroid/os/CancellationSignal;

    .line 307
    iget-object v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onRelationshipValidationResult:Lo/run$onPostMessage;

    if-nez v2, :cond_4

    .line 308
    iget-object v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->asInterface:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->newSession:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onPostMessage:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_1

    .line 311
    :cond_4
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->asInterface:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->extraCallback(Lo/run$onPostMessage;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v2

    iget-object v3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->ICustomTabsCallback$Stub$Proxy:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->newSession:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onPostMessage:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    .line 315
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onTransact:Z

    .line 316
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onMessageChannelReady()V
    .locals 2

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-boolean v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->ICustomTabsService:Z

    if-nez v0, :cond_0

    const-string v0, "BiometricFragment"

    const-string v1, "Ignoring fast cancel signal"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->ICustomTabsCallback$Stub$Proxy:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 218
    :cond_1
    invoke-virtual {p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->extraCallback()V

    return-void
.end method

.method public onNavigationEvent(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Lo/run$onNavigationEvent;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->extraCallback:Ljava/util/concurrent/Executor;

    .line 193
    iput-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->ICustomTabsCallback:Landroid/content/DialogInterface$OnClickListener;

    .line 194
    iput-object p3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onNavigationEvent:Lo/run$onNavigationEvent;

    return-void
.end method

.method onPostMessage(Landroid/os/Bundle;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->asBinder:Landroid/os/Bundle;

    return-void
.end method

.method public onPostMessage()Z
    .locals 3

    .line 249
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->asBinder:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "allow_device_credential"

    .line 250
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
