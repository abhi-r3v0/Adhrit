.class final Lo/MediaSessionCompat$Callback$CallbackHandler$5;
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
.field final synthetic onMessageChannelReady:Lo/MediaSessionCompat$Callback$CallbackHandler;


# direct methods
.method constructor <init>(Lo/MediaSessionCompat$Callback$CallbackHandler;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$5;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$CallbackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$5;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$CallbackHandler;

    iget-object v0, v0, Lo/MediaSessionCompat$Callback$CallbackHandler;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    iget-object v1, p0, Lo/MediaSessionCompat$Callback$CallbackHandler$5;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$CallbackHandler;

    iget-object v1, v1, Lo/MediaSessionCompat$Callback$CallbackHandler;->extraCallback:Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onPostMessage(Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;)V

    return-void
.end method
