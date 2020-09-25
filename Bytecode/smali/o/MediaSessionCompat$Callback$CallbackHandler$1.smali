.class final Lo/MediaSessionCompat$Callback$CallbackHandler$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$Callback$CallbackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/MediaSessionCompat$Callback$CallbackHandler;


# direct methods
.method constructor <init>(Lo/MediaSessionCompat$Callback$CallbackHandler;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$1;->extraCallback:Lo/MediaSessionCompat$Callback$CallbackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 144
    iget-object v0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$1;->extraCallback:Lo/MediaSessionCompat$Callback$CallbackHandler;

    iget-object v0, v0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    iget-object v1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$1;->extraCallback:Lo/MediaSessionCompat$Callback$CallbackHandler;

    iget-object v1, v1, Lo/MediaSessionCompat$Callback$CallbackHandler;->extraCallback:Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onPostMessage(Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;)V

    .line 146
    :try_start_0
    iget-object v0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$1;->extraCallback:Lo/MediaSessionCompat$Callback$CallbackHandler;

    iget-object v0, v0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onTransact:Lo/MediaSessionCompat$Callback$StubApi24;

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$1;->extraCallback:Lo/MediaSessionCompat$Callback$CallbackHandler;

    iget-object v1, v1, Lo/MediaSessionCompat$Callback$CallbackHandler;->ICustomTabsCallback$Stub:Lo/MediaSessionCompat$Callback$StubApi21;

    iget-object v2, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$1;->extraCallback:Lo/MediaSessionCompat$Callback$CallbackHandler;

    iget v2, v2, Lo/MediaSessionCompat$Callback$CallbackHandler;->ICustomTabsCallback:I

    invoke-interface {v0, v1, v2}, Lo/MediaSessionCompat$Callback$StubApi24;->onNavigationEvent(Lo/MediaSessionCompat$Callback$StubApi21;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ROOM"

    const-string v2, "Cannot unregister multi-instance invalidation callback"

    .line 151
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$1;->extraCallback:Lo/MediaSessionCompat$Callback$CallbackHandler;

    iget-object v0, v0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$1;->extraCallback:Lo/MediaSessionCompat$Callback$CallbackHandler;

    iget-object v1, v1, Lo/MediaSessionCompat$Callback$CallbackHandler;->asInterface:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
