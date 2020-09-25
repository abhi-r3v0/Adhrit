.class final Lo/onSupportNavigateUp$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onSupportNavigateUp;->ICustomTabsCallback(Landroid/content/Context;Ljava/util/UUID;Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;)Lo/getBatteryLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroid/content/Context;

.field final synthetic extraCallback:Lo/getSupportParentActivityIntent;

.field final synthetic onMessageChannelReady:Lo/onSupportNavigateUp;

.field final synthetic onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

.field final synthetic onPostMessage:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lo/onSupportNavigateUp;Lo/getSupportParentActivityIntent;Ljava/util/UUID;Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;Landroid/content/Context;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lo/onSupportNavigateUp$1;->onMessageChannelReady:Lo/onSupportNavigateUp;

    iput-object p2, p0, Lo/onSupportNavigateUp$1;->extraCallback:Lo/getSupportParentActivityIntent;

    iput-object p3, p0, Lo/onSupportNavigateUp$1;->onPostMessage:Ljava/util/UUID;

    iput-object p4, p0, Lo/onSupportNavigateUp$1;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    iput-object p5, p0, Lo/onSupportNavigateUp$1;->ICustomTabsCallback:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 82
    :try_start_0
    iget-object v0, p0, Lo/onSupportNavigateUp$1;->extraCallback:Lo/getSupportParentActivityIntent;

    invoke-virtual {v0}, Lo/onCreateSupportNavigateUpTaskStack;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    iget-object v0, p0, Lo/onSupportNavigateUp$1;->onPostMessage:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lo/onSupportNavigateUp$1;->onMessageChannelReady:Lo/onSupportNavigateUp;

    iget-object v1, v1, Lo/onSupportNavigateUp;->ICustomTabsCallback:Lo/onPostResume;

    invoke-interface {v1, v0}, Lo/onPostResume;->ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1204
    sget-object v2, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->ICustomTabsCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v1, v2, :cond_1

    sget-object v2, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->extraCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v1, v2, :cond_1

    sget-object v2, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->asBinder:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 95
    iget-object v1, p0, Lo/onSupportNavigateUp$1;->onMessageChannelReady:Lo/onSupportNavigateUp;

    iget-object v1, v1, Lo/onSupportNavigateUp;->onMessageChannelReady:Lo/ActionBarActivity;

    iget-object v2, p0, Lo/onSupportNavigateUp$1;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    invoke-interface {v1, v0, v2}, Lo/ActionBarActivity;->onPostMessage(Ljava/lang/String;Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;)V

    .line 96
    iget-object v1, p0, Lo/onSupportNavigateUp$1;->ICustomTabsCallback:Landroid/content/Context;

    iget-object v2, p0, Lo/onSupportNavigateUp$1;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    invoke-static {v1, v0, v2}, Lo/newTopicsSyncExecutor;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lo/onSupportNavigateUp$1;->ICustomTabsCallback:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    :cond_2
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 91
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_3
    :goto_2
    iget-object v0, p0, Lo/onSupportNavigateUp$1;->extraCallback:Lo/getSupportParentActivityIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/getSupportParentActivityIntent;->ICustomTabsCallback(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 101
    iget-object v1, p0, Lo/onSupportNavigateUp$1;->extraCallback:Lo/getSupportParentActivityIntent;

    invoke-virtual {v1, v0}, Lo/getSupportParentActivityIntent;->onMessageChannelReady(Ljava/lang/Throwable;)Z

    return-void
.end method
