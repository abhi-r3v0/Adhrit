.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;->onAuthenticationError(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Ljava/lang/CharSequence;

.field final synthetic onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;

.field final synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 100
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$1;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;

    iput-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$1;->ICustomTabsCallback:Ljava/lang/CharSequence;

    iput p3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$1;->onPostMessage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 103
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$1;->ICustomTabsCallback:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$1;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;

    iget-object v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-static {v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->extraCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->default_error_msg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$1;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_0
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$1;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;

    iget-object v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    iget-object v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onNavigationEvent:Lo/run$onNavigationEvent;

    iget v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$1;->onPostMessage:I

    .line 109
    invoke-static {v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->extraCallback(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    iget v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$2$1;->onPostMessage:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lo/run$onNavigationEvent;->onMessageChannelReady(ILjava/lang/CharSequence;)V

    return-void
.end method
