.class public abstract Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PlaybackStateCompat$CustomAction$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady<",
        "**>;W:",
        "Lo/PlaybackStateCompat$CustomAction$1;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Ljava/util/UUID;

.field public onNavigationEvent:Lo/onDestroy;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/Set;

    .line 129
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onMessageChannelReady:Ljava/util/UUID;

    .line 131
    new-instance v0, Lo/onDestroy;

    iget-object v1, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onMessageChannelReady:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/onDestroy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1209
    iget-object v0, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method abstract extraCallback()Lo/PlaybackStateCompat$CustomAction$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method public final onMessageChannelReady()Lo/PlaybackStateCompat$CustomAction$1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->extraCallback()Lo/PlaybackStateCompat$CustomAction$1;

    move-result-object v0

    .line 299
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onMessageChannelReady:Ljava/util/UUID;

    .line 300
    new-instance v1, Lo/onDestroy;

    iget-object v2, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    invoke-direct {v1, v2}, Lo/onDestroy;-><init>(Lo/onDestroy;)V

    iput-object v1, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    .line 301
    iget-object v2, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onMessageChannelReady:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, v0, Lo/onDestroy;->onTransact:J

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide v0, 0x7fffffffffffffffL

    sub-long/2addr v0, p1

    iget-object p1, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    iget-wide p1, p1, Lo/onDestroy;->onTransact:J

    cmp-long p3, v0, p1

    if-lez p3, :cond_0

    .line 270
    invoke-virtual {p0}, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->ICustomTabsCallback()Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;

    move-result-object p1

    return-object p1

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The given initial delay is too large and will cause an overflow!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
