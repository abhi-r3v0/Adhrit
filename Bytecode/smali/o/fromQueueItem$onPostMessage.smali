.class final Lo/fromQueueItem$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fromQueueItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field ICustomTabsCallback:Landroid/view/View;

.field extraCallback:Lo/fromQueueItem;

.field onMessageChannelReady:Lo/MediaSessionCompat$ResultReceiverWrapper;

.field onNavigationEvent:Ljava/lang/String;

.field onPostMessage:Lo/MediaSessionCompat$1$onMessageChannelReady;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Lo/fromQueueItem;Lo/MediaSessionCompat$1$onMessageChannelReady;Lo/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 0

    .line 2368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2369
    iput-object p1, p0, Lo/fromQueueItem$onPostMessage;->ICustomTabsCallback:Landroid/view/View;

    .line 2370
    iput-object p2, p0, Lo/fromQueueItem$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 2371
    iput-object p5, p0, Lo/fromQueueItem$onPostMessage;->onMessageChannelReady:Lo/MediaSessionCompat$ResultReceiverWrapper;

    .line 2372
    iput-object p4, p0, Lo/fromQueueItem$onPostMessage;->onPostMessage:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 2373
    iput-object p3, p0, Lo/fromQueueItem$onPostMessage;->extraCallback:Lo/fromQueueItem;

    return-void
.end method
