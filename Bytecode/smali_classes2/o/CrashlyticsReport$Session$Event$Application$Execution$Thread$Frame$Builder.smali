.class public Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OnlineStateTracker"

.field private static final MAX_WATCH_STREAM_FAILURES:I = 0x1

.field private static final ONLINE_STATE_TIMEOUT_MS:I = 0x2710


# instance fields
.field private final onlineStateCallback:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder$ICustomTabsCallback;

.field private onlineStateTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

.field private shouldWarnClientIsOffline:Z

.field private state:Lo/setGeneratorType;

.field private watchStreamFailures:I

.field private final workerQueue:Lo/CrashlyticsReport$Type;


# direct methods
.method constructor <init>(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder$ICustomTabsCallback;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->workerQueue:Lo/CrashlyticsReport$Type;

    .line 86
    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->onlineStateCallback:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder$ICustomTabsCallback;

    .line 87
    sget-object p1, Lo/setGeneratorType;->UNKNOWN:Lo/setGeneratorType;

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->state:Lo/setGeneratorType;

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->shouldWarnClientIsOffline:Z

    return-void
.end method

.method private clearOnlineStateTimer()V
    .locals 1

    .line 198
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->onlineStateTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lo/CrashlyticsReport$Type$onNavigationEvent;->cancel()V

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->onlineStateTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$handleWatchStreamStart$0(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;)V
    .locals 5

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->onlineStateTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

    .line 108
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->state:Lo/setGeneratorType;

    sget-object v1, Lo/setGeneratorType;->UNKNOWN:Lo/setGeneratorType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "Timer should be canceled if we transitioned to a different state."

    invoke-static {v0, v4, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 111
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v2, [Ljava/lang/Object;

    const/16 v2, 0xa

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Backend didn\'t respond within %d seconds\n"

    .line 112
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-direct {p0, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->logClientOfflineWarningIfNecessary(Ljava/lang/String;)V

    .line 116
    sget-object v0, Lo/setGeneratorType;->OFFLINE:Lo/setGeneratorType;

    invoke-direct {p0, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->setAndBroadcastState(Lo/setGeneratorType;)V

    return-void
.end method

.method private logClientOfflineWarningIfNecessary(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Could not reach Cloud Firestore backend. %s\nThis typically indicates that your device does not have a healthy Internet connection at the moment. The client will operate in offline mode until it is able to successfully connect to the backend."

    .line 182
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 189
    iget-boolean v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->shouldWarnClientIsOffline:Z

    const-string v3, "%s"

    const-string v4, "OnlineStateTracker"

    if-eqz v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 190
    invoke-static {v4, v3, v0}, Lo/lastIndexOf;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iput-boolean v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->shouldWarnClientIsOffline:Z

    return-void

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 193
    invoke-static {v4, v3, v0}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setAndBroadcastState(Lo/setGeneratorType;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->state:Lo/setGeneratorType;

    if-eq p1, v0, :cond_0

    .line 175
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->state:Lo/setGeneratorType;

    .line 176
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->onlineStateCallback:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder$ICustomTabsCallback;

    invoke-interface {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder$ICustomTabsCallback;->handleOnlineStateChange(Lo/setGeneratorType;)V

    :cond_0
    return-void
.end method


# virtual methods
.method handleWatchStreamFailure(Lo/emptyMap;)V
    .locals 5

    .line 132
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->state:Lo/setGeneratorType;

    sget-object v1, Lo/setGeneratorType;->ONLINE:Lo/setGeneratorType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 133
    sget-object p1, Lo/setGeneratorType;->UNKNOWN:Lo/setGeneratorType;

    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->setAndBroadcastState(Lo/setGeneratorType;)V

    .line 137
    iget p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->watchStreamFailures:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "watchStreamFailures must be 0"

    invoke-static {p1, v1, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->onlineStateTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "onlineStateTimer must be null"

    invoke-static {v3, v0, p1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 140
    :cond_2
    iget v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->watchStreamFailures:I

    add-int/2addr v0, v3

    iput v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->watchStreamFailures:I

    if-lez v0, :cond_3

    .line 142
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->clearOnlineStateTimer()V

    .line 143
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object p1, v1, v3

    const-string p1, "Connection failed %d times. Most recent error: %s"

    .line 144
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->logClientOfflineWarningIfNecessary(Ljava/lang/String;)V

    .line 149
    sget-object p1, Lo/setGeneratorType;->OFFLINE:Lo/setGeneratorType;

    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->setAndBroadcastState(Lo/setGeneratorType;)V

    :cond_3
    return-void
.end method

.method handleWatchStreamStart()V
    .locals 5

    .line 98
    iget v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->watchStreamFailures:I

    if-nez v0, :cond_1

    .line 99
    sget-object v0, Lo/setGeneratorType;->UNKNOWN:Lo/setGeneratorType;

    invoke-direct {p0, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->setAndBroadcastState(Lo/setGeneratorType;)V

    .line 101
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->onlineStateTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onlineStateTimer shouldn\'t be started yet"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->workerQueue:Lo/CrashlyticsReport$Type;

    sget-object v1, Lo/CrashlyticsReport$Type$extraCallback;->ONLINE_STATE_TIMEOUT:Lo/CrashlyticsReport$Type$extraCallback;

    const-wide/16 v2, 0x2710

    invoke-static {p0}, Lo/zzac;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;)Ljava/lang/Runnable;

    move-result-object v4

    .line 103
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/CrashlyticsReport$Type;->enqueueAfterDelay(Lo/CrashlyticsReport$Type$extraCallback;JLjava/lang/Runnable;)Lo/CrashlyticsReport$Type$onNavigationEvent;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->onlineStateTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

    :cond_1
    return-void
.end method

.method updateState(Lo/setGeneratorType;)V
    .locals 2

    .line 161
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->clearOnlineStateTimer()V

    const/4 v0, 0x0

    .line 162
    iput v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->watchStreamFailures:I

    .line 164
    sget-object v1, Lo/setGeneratorType;->ONLINE:Lo/setGeneratorType;

    if-ne p1, v1, :cond_0

    .line 167
    iput-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->shouldWarnClientIsOffline:Z

    .line 170
    :cond_0
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->setAndBroadcastState(Lo/setGeneratorType;)V

    return-void
.end method
