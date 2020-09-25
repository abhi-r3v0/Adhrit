.class public Lo/OaidClient;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isLat;


# annotations
.annotation runtime Lo/mark;
.end annotation


# static fields
.field public static volatile onPostMessage:Lo/ServerConfigHandler;


# instance fields
.field private final ICustomTabsCallback:Lo/b;

.field private final extraCallback:Lo/a$a;

.field public final onMessageChannelReady:Lo/ae;

.field private final onNavigationEvent:Lo/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lo/b;Lo/b;Lo/a$a;Lo/ae;Lo/ag;)V
    .locals 0
    .annotation runtime Lo/withJitterFactor;
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lo/OaidClient;->onNavigationEvent:Lo/b;

    .line 59
    iput-object p2, p0, Lo/OaidClient;->ICustomTabsCallback:Lo/b;

    .line 60
    iput-object p3, p0, Lo/OaidClient;->extraCallback:Lo/a$a;

    .line 61
    iput-object p4, p0, Lo/OaidClient;->onMessageChannelReady:Lo/ae;

    .line 1052
    iget-object p1, p5, Lo/ag;->onNavigationEvent:Ljava/util/concurrent/Executor;

    .line 2000
    new-instance p2, Lo/AudioAttributesImplApi21$onPostMessage;

    invoke-direct {p2, p5}, Lo/AudioAttributesImplApi21$onPostMessage;-><init>(Lo/ag;)V

    .line 1052
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onPostMessage(Landroid/content/Context;)V
    .locals 3

    .line 72
    sget-object v0, Lo/OaidClient;->onPostMessage:Lo/ServerConfigHandler;

    if-nez v0, :cond_1

    .line 73
    const-class v0, Lo/OaidClient;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lo/OaidClient;->onPostMessage:Lo/ServerConfigHandler;

    if-nez v1, :cond_0

    .line 2070
    new-instance v1, Lo/Foreground$ICustomTabsCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/Foreground$ICustomTabsCallback;-><init>(B)V

    .line 77
    invoke-interface {v1, p0}, Lo/ServerConfigHandler$extraCallback;->onNavigationEvent(Landroid/content/Context;)Lo/ServerConfigHandler$extraCallback;

    move-result-object p0

    .line 78
    invoke-interface {p0}, Lo/ServerConfigHandler$extraCallback;->onPostMessage()Lo/ServerConfigHandler;

    move-result-object p0

    sput-object p0, Lo/OaidClient;->onPostMessage:Lo/ServerConfigHandler;

    .line 80
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/onNewToken;)Lo/AppsFlyerProperties$EmailsCryptType;
    .locals 4

    .line 127
    new-instance v0, Lo/setHideReplaced$onPostMessage;

    .line 2137
    instance-of v1, p1, Lo/MultipleInstallBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 2138
    move-object v1, p1

    check-cast v1, Lo/MultipleInstallBroadcastReceiver;

    .line 2139
    invoke-interface {v1}, Lo/MultipleInstallBroadcastReceiver;->onPostMessage()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 3030
    :cond_0
    new-instance v1, Lo/isEnableLog;

    const-string v2, "proto"

    invoke-direct {v1, v2}, Lo/isEnableLog;-><init>(Ljava/lang/String;)V

    .line 2141
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 129
    :goto_0
    invoke-static {}, Lo/OaidClient$Info;->onNavigationEvent()Lo/OaidClient$Info$onPostMessage;

    move-result-object v2

    .line 130
    invoke-interface {p1}, Lo/onNewToken;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/OaidClient$Info$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;)Lo/OaidClient$Info$onPostMessage;

    move-result-object v2

    .line 131
    invoke-interface {p1}, Lo/onNewToken;->extraCallback()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lo/OaidClient$Info$onPostMessage;->onMessageChannelReady([B)Lo/OaidClient$Info$onPostMessage;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lo/OaidClient$Info$onPostMessage;->onPostMessage()Lo/OaidClient$Info;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lo/setHideReplaced$onPostMessage;-><init>(Ljava/util/Set;Lo/OaidClient$Info;Lo/isLat;)V

    return-object v0
.end method

.method public final extraCallback(Lo/OneLinkHttpTask;Lo/AppsFlyerTrackingRequestListener;)V
    .locals 7

    .line 151
    iget-object v0, p0, Lo/OaidClient;->extraCallback:Lo/a$a;

    .line 152
    invoke-virtual {p1}, Lo/OneLinkHttpTask;->ICustomTabsCallback()Lo/OaidClient$Info;

    move-result-object v1

    invoke-virtual {p1}, Lo/OneLinkHttpTask;->extraCallback()Lo/isLogsDisabledCompletely;

    move-result-object v2

    invoke-virtual {v2}, Lo/isLogsDisabledCompletely;->ICustomTabsCallback()Lo/setReferrer;

    move-result-object v2

    .line 3066
    invoke-static {}, Lo/OaidClient$Info;->onNavigationEvent()Lo/OaidClient$Info$onPostMessage;

    move-result-object v3

    .line 3067
    invoke-virtual {v1}, Lo/OaidClient$Info;->extraCallback()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/OaidClient$Info$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;)Lo/OaidClient$Info$onPostMessage;

    move-result-object v3

    .line 3068
    invoke-virtual {v3, v2}, Lo/OaidClient$Info$onPostMessage;->onNavigationEvent(Lo/setReferrer;)Lo/OaidClient$Info$onPostMessage;

    move-result-object v2

    .line 3069
    invoke-virtual {v1}, Lo/OaidClient$Info;->onPostMessage()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/OaidClient$Info$onPostMessage;->onMessageChannelReady([B)Lo/OaidClient$Info$onPostMessage;

    move-result-object v1

    .line 3070
    invoke-virtual {v1}, Lo/OaidClient$Info$onPostMessage;->onPostMessage()Lo/OaidClient$Info;

    move-result-object v1

    .line 4078
    new-instance v2, Lo/Foreground$4$3$3$onPostMessage;

    invoke-direct {v2}, Lo/Foreground$4$3$3$onPostMessage;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4161
    iput-object v3, v2, Lo/Foreground$4$3$3$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    .line 3158
    iget-object v3, p0, Lo/OaidClient;->onNavigationEvent:Lo/b;

    .line 3159
    invoke-interface {v3}, Lo/b;->onPostMessage()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo/Foreground$4$4$extraCallback;->extraCallback(J)Lo/Foreground$4$4$extraCallback;

    move-result-object v2

    iget-object v3, p0, Lo/OaidClient;->ICustomTabsCallback:Lo/b;

    .line 3160
    invoke-interface {v3}, Lo/b;->onPostMessage()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo/Foreground$4$4$extraCallback;->ICustomTabsCallback(J)Lo/Foreground$4$4$extraCallback;

    move-result-object v2

    .line 3161
    invoke-virtual {p1}, Lo/OneLinkHttpTask;->onPostMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/Foreground$4$4$extraCallback;->onPostMessage(Ljava/lang/String;)Lo/Foreground$4$4$extraCallback;

    move-result-object v2

    new-instance v3, Lo/Foreground$Listener;

    .line 3162
    invoke-virtual {p1}, Lo/OneLinkHttpTask;->onNavigationEvent()Lo/isEnableLog;

    move-result-object v4

    .line 5035
    invoke-virtual {p1}, Lo/OneLinkHttpTask;->onMessageChannelReady()Lo/getReferrer;

    move-result-object v5

    invoke-virtual {p1}, Lo/OneLinkHttpTask;->extraCallback()Lo/isLogsDisabledCompletely;

    move-result-object v6

    invoke-virtual {v6}, Lo/isLogsDisabledCompletely;->onPostMessage()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lo/getReferrer;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 3162
    invoke-direct {v3, v4, v5}, Lo/Foreground$Listener;-><init>(Lo/isEnableLog;[B)V

    invoke-virtual {v2, v3}, Lo/Foreground$4$4$extraCallback;->extraCallback(Lo/Foreground$Listener;)Lo/Foreground$4$4$extraCallback;

    move-result-object v2

    .line 3163
    invoke-virtual {p1}, Lo/OneLinkHttpTask;->extraCallback()Lo/isLogsDisabledCompletely;

    move-result-object p1

    invoke-virtual {p1}, Lo/isLogsDisabledCompletely;->onMessageChannelReady()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lo/Foreground$4$4$extraCallback;->onPostMessage(Ljava/lang/Integer;)Lo/Foreground$4$4$extraCallback;

    move-result-object p1

    .line 3164
    invoke-virtual {p1}, Lo/Foreground$4$4$extraCallback;->onPostMessage()Lo/Foreground$4$4;

    move-result-object p1

    .line 151
    invoke-interface {v0, v1, p1, p2}, Lo/a$a;->onMessageChannelReady(Lo/OaidClient$Info;Lo/Foreground$4$4;Lo/AppsFlyerTrackingRequestListener;)V

    return-void
.end method
