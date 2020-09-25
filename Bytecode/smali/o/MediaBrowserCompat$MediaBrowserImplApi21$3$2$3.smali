.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/run$onMessageChannelReady;

.field final synthetic onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;Lo/run$onMessageChannelReady;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$3;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;

    iput-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$3;->onNavigationEvent:Lo/run$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 140
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$3;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onNavigationEvent:Lo/run$onNavigationEvent;

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$3;->onNavigationEvent:Lo/run$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/run$onNavigationEvent;->onPostMessage(Lo/run$onMessageChannelReady;)V

    return-void
.end method
