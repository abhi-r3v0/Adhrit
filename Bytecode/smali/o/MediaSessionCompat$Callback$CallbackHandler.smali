.class final Lo/MediaSessionCompat$Callback$CallbackHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Ljava/lang/Runnable;


# instance fields
.field ICustomTabsCallback:I

.field final ICustomTabsCallback$Stub:Lo/MediaSessionCompat$Callback$StubApi21;

.field private final ICustomTabsCallback$Stub$Proxy:Ljava/lang/Runnable;

.field final ICustomTabsService:Ljava/lang/Runnable;

.field final asBinder:Ljava/util/concurrent/Executor;

.field final asInterface:Landroid/content/ServiceConnection;

.field final extraCallback:Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;

.field final newSession:Ljava/lang/Runnable;

.field final onMessageChannelReady:Ljava/lang/String;

.field final onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

.field final onPostMessage:Landroid/content/Context;

.field final onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicBoolean;

.field onTransact:Lo/MediaSessionCompat$Callback$StubApi24;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/MediaSessionCompat$MediaSessionImpl;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lo/MediaSessionCompat$Callback$CallbackHandler$2;

    invoke-direct {v0, p0}, Lo/MediaSessionCompat$Callback$CallbackHandler$2;-><init>(Lo/MediaSessionCompat$Callback$CallbackHandler;)V

    iput-object v0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->ICustomTabsCallback$Stub:Lo/MediaSessionCompat$Callback$StubApi21;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    iput-object p0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->asInterface:Landroid/content/ServiceConnection;

    .line 116
    iput-object p0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->ICustomTabsService:Ljava/lang/Runnable;

    .line 133
    new-instance v0, Lo/MediaSessionCompat$Callback$CallbackHandler$5;

    invoke-direct {v0, p0}, Lo/MediaSessionCompat$Callback$CallbackHandler$5;-><init>(Lo/MediaSessionCompat$Callback$CallbackHandler;)V

    iput-object v0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->newSession:Ljava/lang/Runnable;

    .line 141
    new-instance v0, Lo/MediaSessionCompat$Callback$CallbackHandler$1;

    invoke-direct {v0, p0}, Lo/MediaSessionCompat$Callback$CallbackHandler$1;-><init>(Lo/MediaSessionCompat$Callback$CallbackHandler;)V

    iput-object v0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Runnable;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onPostMessage:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onMessageChannelReady:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    .line 169
    iput-object p4, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->asBinder:Ljava/util/concurrent/Executor;

    .line 171
    iget-object p1, p3, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 172
    new-instance p2, Lo/MediaSessionCompat$Callback$CallbackHandler$3;

    new-array p3, v1, [Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Lo/MediaSessionCompat$Callback$CallbackHandler$3;-><init>(Lo/MediaSessionCompat$Callback$CallbackHandler;[Ljava/lang/String;)V

    iput-object p2, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->extraCallback:Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;

    .line 193
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onPostMessage:Landroid/content/Context;

    const-class p3, Lo/getRccTransportControlFlagsFromActions;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    iget-object p2, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onPostMessage:Landroid/content/Context;

    iget-object p3, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->asInterface:Landroid/content/ServiceConnection;

    const/4 p4, 0x1

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "androidx.room.IMultiInstanceInvalidationService"

    .line 2030
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2031
    instance-of v0, p1, Lo/MediaSessionCompat$Callback$StubApi24;

    if-eqz v0, :cond_1

    .line 2032
    check-cast p1, Lo/MediaSessionCompat$Callback$StubApi24;

    goto :goto_0

    .line 2034
    :cond_1
    new-instance p1, Lo/MediaSessionCompat$Callback$StubApi24$onNavigationEvent$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/MediaSessionCompat$Callback$StubApi24$onNavigationEvent$ICustomTabsCallback;-><init>(Landroid/os/IBinder;)V

    .line 1103
    :goto_0
    iput-object p1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onTransact:Lo/MediaSessionCompat$Callback$StubApi24;

    .line 1104
    iget-object p1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->asBinder:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->ICustomTabsService:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 2109
    iget-object p1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->asBinder:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->newSession:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 2110
    iput-object p1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onTransact:Lo/MediaSessionCompat$Callback$StubApi24;

    return-void
.end method

.method public final run()V
    .locals 3

    .line 2121
    :try_start_0
    iget-object v0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onTransact:Lo/MediaSessionCompat$Callback$StubApi24;

    if-eqz v0, :cond_0

    .line 2123
    iget-object v1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->ICustomTabsCallback$Stub:Lo/MediaSessionCompat$Callback$StubApi21;

    iget-object v2, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onMessageChannelReady:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lo/MediaSessionCompat$Callback$StubApi24;->onMessageChannelReady(Lo/MediaSessionCompat$Callback$StubApi21;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->ICustomTabsCallback:I

    .line 2124
    iget-object v0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    iget-object v1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler;->extraCallback:Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->ICustomTabsCallback(Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ROOM"

    const-string v2, "Cannot register multi-instance invalidation callback"

    .line 2127
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
