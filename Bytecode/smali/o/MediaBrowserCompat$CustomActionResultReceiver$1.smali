.class Lo/MediaBrowserCompat$CustomActionResultReceiver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$CustomActionResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/MediaBrowserCompat$CustomActionResultReceiver;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$CustomActionResultReceiver;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver$1;->onMessageChannelReady:Lo/MediaBrowserCompat$CustomActionResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 63
    iget-object v0, p0, Lo/MediaBrowserCompat$CustomActionResultReceiver$1;->onMessageChannelReady:Lo/MediaBrowserCompat$CustomActionResultReceiver;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$CustomActionResultReceiver;->ICustomTabsCallback()V

    return-void
.end method
