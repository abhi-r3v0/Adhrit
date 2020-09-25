.class Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$Event$Application$Execution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field private isConnected:Z

.field final synthetic this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;


# direct methods
.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;->isConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution;Lo/CrashlyticsReport$Session$Event$Application$Execution$5;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p2, "connectivity"

    .line 129
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 130
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 131
    iget-boolean p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;->isConnected:Z

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;->isConnected:Z

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 134
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;

    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution;->access$400(Lo/CrashlyticsReport$Session$Event$Application$Execution;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 135
    :try_start_0
    iget-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;

    invoke-static {p2}, Lo/CrashlyticsReport$Session$Event$Application$Execution;->access$400(Lo/CrashlyticsReport$Session$Event$Application$Execution;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/from;

    .line 136
    sget-object v1, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;->REACHABLE:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

    invoke-interface {v0, v1}, Lo/from;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 138
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 139
    :cond_2
    iget-boolean p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;->isConnected:Z

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    .line 140
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;

    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution;->access$400(Lo/CrashlyticsReport$Session$Event$Application$Execution;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 141
    :try_start_1
    iget-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution;

    invoke-static {p2}, Lo/CrashlyticsReport$Session$Event$Application$Execution;->access$400(Lo/CrashlyticsReport$Session$Event$Application$Execution;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/from;

    .line 142
    sget-object v1, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;->UNREACHABLE:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

    invoke-interface {v0, v1}, Lo/from;->accept(Ljava/lang/Object;)V

    goto :goto_2

    .line 144
    :cond_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_4
    return-void
.end method
