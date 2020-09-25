.class public abstract Lo/getQueueId;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onMessageChannelReady(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
.end method

.method public abstract onNavigationEvent()[Ljava/lang/String;
.end method

.method public abstract onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)J
.end method
