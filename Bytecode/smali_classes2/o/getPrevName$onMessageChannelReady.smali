.class public final Lo/getPrevName$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPrevName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final ICustomTabsCallback:[Z

.field final extraCallback:Lo/getPrevName$onPostMessage;

.field final synthetic onMessageChannelReady:Lo/getPrevName;

.field private onPostMessage:Z


# direct methods
.method constructor <init>(Lo/getPrevName;Lo/getPrevName$onPostMessage;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lo/getPrevName$onMessageChannelReady;->onMessageChannelReady:Lo/getPrevName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput-object p2, p0, Lo/getPrevName$onMessageChannelReady;->extraCallback:Lo/getPrevName$onPostMessage;

    .line 839
    iget-boolean p2, p2, Lo/getPrevName$onPostMessage;->onNavigationEvent:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Lo/getPrevName;->onNavigationEvent:I

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lo/getPrevName$onMessageChannelReady;->ICustomTabsCallback:[Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 935
    iget-object v0, p0, Lo/getPrevName$onMessageChannelReady;->onMessageChannelReady:Lo/getPrevName;

    monitor-enter v0

    .line 936
    :try_start_0
    iget-boolean v1, p0, Lo/getPrevName$onMessageChannelReady;->onPostMessage:Z

    if-nez v1, :cond_1

    .line 939
    iget-object v1, p0, Lo/getPrevName$onMessageChannelReady;->extraCallback:Lo/getPrevName$onPostMessage;

    iget-object v1, v1, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    if-ne v1, p0, :cond_0

    .line 940
    iget-object v1, p0, Lo/getPrevName$onMessageChannelReady;->onMessageChannelReady:Lo/getPrevName;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lo/getPrevName;->extraCallback(Lo/getPrevName$onMessageChannelReady;Z)V

    :cond_0
    const/4 v1, 0x1

    .line 942
    iput-boolean v1, p0, Lo/getPrevName$onMessageChannelReady;->onPostMessage:Z

    .line 943
    monitor-exit v0

    return-void

    .line 937
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    .line 943
    monitor-exit v0

    throw v1
.end method

.method public final extraCallback(I)Lo/exceptionStacktrace;
    .locals 3

    .line 887
    iget-object v0, p0, Lo/getPrevName$onMessageChannelReady;->onMessageChannelReady:Lo/getPrevName;

    monitor-enter v0

    .line 888
    :try_start_0
    iget-boolean v1, p0, Lo/getPrevName$onMessageChannelReady;->onPostMessage:Z

    if-nez v1, :cond_2

    .line 891
    iget-object v1, p0, Lo/getPrevName$onMessageChannelReady;->extraCallback:Lo/getPrevName$onPostMessage;

    iget-object v1, v1, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    if-eq v1, p0, :cond_0

    .line 892
    invoke-static {}, Lo/warn;->extraCallback()Lo/exceptionStacktrace;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 894
    :cond_0
    iget-object v1, p0, Lo/getPrevName$onMessageChannelReady;->extraCallback:Lo/getPrevName$onPostMessage;

    iget-boolean v1, v1, Lo/getPrevName$onPostMessage;->onNavigationEvent:Z

    if-nez v1, :cond_1

    .line 895
    iget-object v1, p0, Lo/getPrevName$onMessageChannelReady;->ICustomTabsCallback:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 897
    :cond_1
    iget-object v1, p0, Lo/getPrevName$onMessageChannelReady;->extraCallback:Lo/getPrevName$onPostMessage;

    iget-object v1, v1, Lo/getPrevName$onPostMessage;->onMessageChannelReady:[Ljava/io/File;

    aget-object p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    :try_start_1
    iget-object v1, p0, Lo/getPrevName$onMessageChannelReady;->onMessageChannelReady:Lo/getPrevName;

    iget-object v1, v1, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    invoke-interface {v1, p1}, Lo/getEventCache;->onNavigationEvent(Ljava/io/File;)Lo/exceptionStacktrace;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    :try_start_2
    new-instance v1, Lo/getPrevName$onMessageChannelReady$3;

    invoke-direct {v1, p0, p1}, Lo/getPrevName$onMessageChannelReady$3;-><init>(Lo/getPrevName$onMessageChannelReady;Lo/exceptionStacktrace;)V

    monitor-exit v0

    return-object v1

    .line 902
    :catch_0
    invoke-static {}, Lo/warn;->extraCallback()Lo/exceptionStacktrace;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 889
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 911
    monitor-exit v0

    throw p1
.end method

.method final extraCallback()V
    .locals 3

    .line 849
    iget-object v0, p0, Lo/getPrevName$onMessageChannelReady;->extraCallback:Lo/getPrevName$onPostMessage;

    iget-object v0, v0, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    .line 850
    :goto_0
    iget-object v1, p0, Lo/getPrevName$onMessageChannelReady;->onMessageChannelReady:Lo/getPrevName;

    iget v1, v1, Lo/getPrevName;->onNavigationEvent:I

    if-ge v0, v1, :cond_0

    .line 852
    :try_start_0
    iget-object v1, p0, Lo/getPrevName$onMessageChannelReady;->onMessageChannelReady:Lo/getPrevName;

    iget-object v1, v1, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v2, p0, Lo/getPrevName$onMessageChannelReady;->extraCallback:Lo/getPrevName$onPostMessage;

    iget-object v2, v2, Lo/getPrevName$onPostMessage;->onMessageChannelReady:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lo/getEventCache;->extraCallback(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 857
    :cond_0
    iget-object v0, p0, Lo/getPrevName$onMessageChannelReady;->extraCallback:Lo/getPrevName$onPostMessage;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    :cond_1
    return-void
.end method

.method public final onPostMessage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lo/getPrevName$onMessageChannelReady;->onMessageChannelReady:Lo/getPrevName;

    monitor-enter v0

    .line 920
    :try_start_0
    iget-boolean v1, p0, Lo/getPrevName$onMessageChannelReady;->onPostMessage:Z

    if-nez v1, :cond_1

    .line 923
    iget-object v1, p0, Lo/getPrevName$onMessageChannelReady;->extraCallback:Lo/getPrevName$onPostMessage;

    iget-object v1, v1, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    .line 924
    iget-object v1, p0, Lo/getPrevName$onMessageChannelReady;->onMessageChannelReady:Lo/getPrevName;

    invoke-virtual {v1, p0, v2}, Lo/getPrevName;->extraCallback(Lo/getPrevName$onMessageChannelReady;Z)V

    .line 926
    :cond_0
    iput-boolean v2, p0, Lo/getPrevName$onMessageChannelReady;->onPostMessage:Z

    .line 927
    monitor-exit v0

    return-void

    .line 921
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    .line 927
    monitor-exit v0

    throw v1
.end method
