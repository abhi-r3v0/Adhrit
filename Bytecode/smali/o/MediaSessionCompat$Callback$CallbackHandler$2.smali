.class final Lo/MediaSessionCompat$Callback$CallbackHandler$2;
.super Lo/MediaSessionCompat$Callback$StubApi21$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$Callback$CallbackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/MediaSessionCompat$Callback$CallbackHandler;


# direct methods
.method constructor <init>(Lo/MediaSessionCompat$Callback$CallbackHandler;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$2;->ICustomTabsCallback:Lo/MediaSessionCompat$Callback$CallbackHandler;

    invoke-direct {p0}, Lo/MediaSessionCompat$Callback$StubApi21$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback([Ljava/lang/String;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$2;->ICustomTabsCallback:Lo/MediaSessionCompat$Callback$CallbackHandler;

    iget-object v0, v0, Lo/MediaSessionCompat$Callback$CallbackHandler;->asBinder:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/MediaSessionCompat$Callback$CallbackHandler$2$2;

    invoke-direct {v1, p0, p1}, Lo/MediaSessionCompat$Callback$CallbackHandler$2$2;-><init>(Lo/MediaSessionCompat$Callback$CallbackHandler$2;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
