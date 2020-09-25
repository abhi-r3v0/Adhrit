.class public final Lo/startSupportActionMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private ICustomTabsCallback:Lo/PlaybackStateCompat$RepeatMode;

.field private onMessageChannelReady:Ljava/lang/String;

.field private onPostMessage:Landroidx/work/WorkerParameters$extraCallback;


# direct methods
.method public constructor <init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Landroidx/work/WorkerParameters$extraCallback;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/startSupportActionMode;->ICustomTabsCallback:Lo/PlaybackStateCompat$RepeatMode;

    .line 40
    iput-object p2, p0, Lo/startSupportActionMode;->onMessageChannelReady:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lo/startSupportActionMode;->onPostMessage:Landroidx/work/WorkerParameters$extraCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 46
    iget-object v0, p0, Lo/startSupportActionMode;->ICustomTabsCallback:Lo/PlaybackStateCompat$RepeatMode;

    .line 1340
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->onTransact:Lo/getName;

    .line 46
    iget-object v1, p0, Lo/startSupportActionMode;->onMessageChannelReady:Ljava/lang/String;

    iget-object v2, p0, Lo/startSupportActionMode;->onPostMessage:Landroidx/work/WorkerParameters$extraCallback;

    invoke-virtual {v0, v1, v2}, Lo/getName;->onMessageChannelReady(Ljava/lang/String;Landroidx/work/WorkerParameters$extraCallback;)Z

    return-void
.end method
