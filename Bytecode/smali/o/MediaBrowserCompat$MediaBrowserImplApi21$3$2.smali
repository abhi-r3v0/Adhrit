.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 2104
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    if-eqz v0, :cond_0

    .line 2246
    iget-boolean v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$1;

    invoke-direct {v1, p0, p2, p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$1;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;Ljava/lang/CharSequence;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-virtual {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->extraCallback()V

    :cond_1
    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 1

    .line 149
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 130
    new-instance v0, Lo/run$onMessageChannelReady;

    .line 133
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->getCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p1

    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onMessageChannelReady(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Lo/run$onPostMessage;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/run$onMessageChannelReady;-><init>(Lo/run$onPostMessage;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/run$onMessageChannelReady;

    const/4 p1, 0x0

    invoke-direct {v0, p1}, Lo/run$onMessageChannelReady;-><init>(Lo/run$onPostMessage;)V

    .line 136
    :goto_0
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$3;

    invoke-direct {v1, p0, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$3;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;Lo/run$onMessageChannelReady;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 144
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-virtual {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->extraCallback()V

    return-void
.end method

.method public final run()V
    .locals 0

    return-void
.end method
