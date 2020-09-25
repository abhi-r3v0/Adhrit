.class abstract Lo/getCsatResponse$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCsatResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/getCsatResponse;

.field final onMessageChannelReady:J

.field final onNavigationEvent:J

.field private final onPostMessage:Z


# direct methods
.method constructor <init>(Lo/getCsatResponse;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lo/getCsatResponse$ICustomTabsCallback;-><init>(Lo/getCsatResponse;Z)V

    return-void
.end method

.method constructor <init>(Lo/getCsatResponse;Z)V
    .locals 2

    .line 3
    iput-object p1, p0, Lo/getCsatResponse$ICustomTabsCallback;->extraCallback:Lo/getCsatResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lo/getCsatResponse;->extraCallback:Lo/component15;

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    iput-wide v0, p0, Lo/getCsatResponse$ICustomTabsCallback;->onNavigationEvent:J

    .line 5
    iget-object p1, p1, Lo/getCsatResponse;->extraCallback:Lo/component15;

    invoke-interface {p1}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    iput-wide v0, p0, Lo/getCsatResponse$ICustomTabsCallback;->onMessageChannelReady:J

    .line 6
    iput-boolean p2, p0, Lo/getCsatResponse$ICustomTabsCallback;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method abstract onMessageChannelReady()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected onPostMessage()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 4

    .line 8
    iget-object v0, p0, Lo/getCsatResponse$ICustomTabsCallback;->extraCallback:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onMessageChannelReady(Lo/getCsatResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lo/getCsatResponse$ICustomTabsCallback;->onPostMessage()V

    return-void

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lo/getCsatResponse$ICustomTabsCallback;->onMessageChannelReady()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lo/getCsatResponse$ICustomTabsCallback;->extraCallback:Lo/getCsatResponse;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lo/getCsatResponse$ICustomTabsCallback;->onPostMessage:Z

    invoke-static {v1, v0, v2, v3}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse;Ljava/lang/Exception;ZZ)V

    .line 15
    invoke-virtual {p0}, Lo/getCsatResponse$ICustomTabsCallback;->onPostMessage()V

    return-void
.end method
