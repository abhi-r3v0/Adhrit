.class Lo/CrashlyticsReport$Session$Event$Application$Execution$onMessageChannelReady;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$Event$Application$Execution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final synthetic this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;


# direct methods
.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution;Lo/CrashlyticsReport$Session$Event$Application$Execution$5;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$onMessageChannelReady;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 104
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;

    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution;->access$400(Lo/CrashlyticsReport$Session$Event$Application$Execution;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 105
    :try_start_0
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution;->access$400(Lo/CrashlyticsReport$Session$Event$Application$Execution;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/from;

    .line 106
    sget-object v2, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;->REACHABLE:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

    invoke-interface {v1, v2}, Lo/from;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 113
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;

    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution;->access$400(Lo/CrashlyticsReport$Session$Event$Application$Execution;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 114
    :try_start_0
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution;->access$400(Lo/CrashlyticsReport$Session$Event$Application$Execution;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/from;

    .line 115
    sget-object v2, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;->UNREACHABLE:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

    invoke-interface {v1, v2}, Lo/from;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method
