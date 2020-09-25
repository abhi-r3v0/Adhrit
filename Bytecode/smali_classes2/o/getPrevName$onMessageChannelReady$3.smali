.class final Lo/getPrevName$onMessageChannelReady$3;
.super Lo/getOldIndexedNode;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPrevName$onMessageChannelReady;->extraCallback(I)Lo/exceptionStacktrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getPrevName$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/getPrevName$onMessageChannelReady;Lo/exceptionStacktrace;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lo/getPrevName$onMessageChannelReady$3;->onPostMessage:Lo/getPrevName$onMessageChannelReady;

    invoke-direct {p0, p2}, Lo/getOldIndexedNode;-><init>(Lo/exceptionStacktrace;)V

    return-void
.end method


# virtual methods
.method protected final onPostMessage()V
    .locals 2

    .line 906
    iget-object v0, p0, Lo/getPrevName$onMessageChannelReady$3;->onPostMessage:Lo/getPrevName$onMessageChannelReady;

    iget-object v0, v0, Lo/getPrevName$onMessageChannelReady;->onMessageChannelReady:Lo/getPrevName;

    monitor-enter v0

    .line 907
    :try_start_0
    iget-object v1, p0, Lo/getPrevName$onMessageChannelReady$3;->onPostMessage:Lo/getPrevName$onMessageChannelReady;

    invoke-virtual {v1}, Lo/getPrevName$onMessageChannelReady;->extraCallback()V

    .line 908
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
