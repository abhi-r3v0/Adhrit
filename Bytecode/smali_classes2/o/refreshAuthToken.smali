.class public final Lo/refreshAuthToken;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/refreshAuthToken$extraCallback;,
        Lo/refreshAuthToken$onPostMessage;,
        Lo/refreshAuthToken$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:J


# instance fields
.field private ICustomTabsCallback$Stub:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private asBinder:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private asInterface:Lo/refreshAuthToken$onNavigationEvent;

.field private final extraCallback:Lo/refreshAuthToken$onPostMessage;

.field private final newSession:J

.field private final onMessageChannelReady:Lo/Onboarding$3;

.field private final onNavigationEvent:Ljava/util/concurrent/ScheduledExecutorService;

.field private final onPostMessage:Z

.field private final onRelationshipValidationResult:Ljava/lang/Runnable;

.field private final onTransact:Ljava/lang/Runnable;

.field private final warmup:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lo/refreshAuthToken;->ICustomTabsCallback:J

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    return-void
.end method

.method public constructor <init>(Lo/refreshAuthToken$onPostMessage;Ljava/util/concurrent/ScheduledExecutorService;JJZ)V
    .locals 9

    .line 1093
    new-instance v3, Lo/Onboarding$3;

    invoke-direct {v3}, Lo/Onboarding$3;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    .line 132
    invoke-direct/range {v0 .. v8}, Lo/refreshAuthToken;-><init>(Lo/refreshAuthToken$onPostMessage;Ljava/util/concurrent/ScheduledExecutorService;Lo/Onboarding$3;JJZ)V

    return-void
.end method

.method private constructor <init>(Lo/refreshAuthToken$onPostMessage;Ljava/util/concurrent/ScheduledExecutorService;Lo/Onboarding$3;JJZ)V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lo/refreshAuthToken$onNavigationEvent;->ICustomTabsCallback:Lo/refreshAuthToken$onNavigationEvent;

    iput-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    .line 49
    new-instance v0, Lo/compareAndPut;

    new-instance v1, Lo/refreshAuthToken$1;

    invoke-direct {v1, p0}, Lo/refreshAuthToken$1;-><init>(Lo/refreshAuthToken;)V

    invoke-direct {v0, v1}, Lo/compareAndPut;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lo/refreshAuthToken;->onTransact:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Lo/compareAndPut;

    new-instance v1, Lo/refreshAuthToken$2;

    invoke-direct {v1, p0}, Lo/refreshAuthToken$2;-><init>(Lo/refreshAuthToken;)V

    invoke-direct {v0, v1}, Lo/compareAndPut;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lo/refreshAuthToken;->onRelationshipValidationResult:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 141
    check-cast p1, Lo/refreshAuthToken$onPostMessage;

    iput-object p1, p0, Lo/refreshAuthToken;->extraCallback:Lo/refreshAuthToken$onPostMessage;

    if-eqz p2, :cond_0

    .line 142
    check-cast p2, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lo/refreshAuthToken;->onNavigationEvent:Ljava/util/concurrent/ScheduledExecutorService;

    .line 143
    move-object p1, p3

    check-cast p1, Lo/Onboarding$3;

    iput-object p1, p0, Lo/refreshAuthToken;->onMessageChannelReady:Lo/Onboarding$3;

    .line 144
    iput-wide p4, p0, Lo/refreshAuthToken;->warmup:J

    .line 145
    iput-wide p6, p0, Lo/refreshAuthToken;->newSession:J

    .line 146
    iput-boolean p8, p0, Lo/refreshAuthToken;->onPostMessage:Z

    const/4 p1, 0x0

    .line 4177
    iput-boolean p1, p3, Lo/Onboarding$3;->ICustomTabsCallback:Z

    .line 147
    invoke-virtual {p3}, Lo/Onboarding$3;->onPostMessage()Lo/Onboarding$3;

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "scheduler"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "keepAlivePinger"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic ICustomTabsCallback(Lo/refreshAuthToken;Lo/refreshAuthToken$onNavigationEvent;)Lo/refreshAuthToken$onNavigationEvent;
    .locals 0

    .line 34
    iput-object p1, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    return-object p1
.end method

.method static synthetic ICustomTabsCallback(Lo/refreshAuthToken;)Lo/refreshAuthToken$onPostMessage;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/refreshAuthToken;->extraCallback:Lo/refreshAuthToken$onPostMessage;

    return-object p0
.end method

.method static synthetic asBinder(Lo/refreshAuthToken;)Lo/Onboarding$3;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/refreshAuthToken;->onMessageChannelReady:Lo/Onboarding$3;

    return-object p0
.end method

.method static synthetic asInterface(Lo/refreshAuthToken;)Ljava/lang/Runnable;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/refreshAuthToken;->onRelationshipValidationResult:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/refreshAuthToken;)Ljava/lang/Runnable;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/refreshAuthToken;->onTransact:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/refreshAuthToken;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 34
    iput-object p1, p0, Lo/refreshAuthToken;->ICustomTabsCallback$Stub:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic onMessageChannelReady(Lo/refreshAuthToken;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lo/refreshAuthToken;->newSession:J

    return-wide v0
.end method

.method public static onNavigationEvent(J)J
    .locals 2

    .line 239
    sget-wide v0, Lo/refreshAuthToken;->ICustomTabsCallback:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic onNavigationEvent(Lo/refreshAuthToken;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 34
    iput-object p1, p0, Lo/refreshAuthToken;->asBinder:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic onNavigationEvent(Lo/refreshAuthToken;)Lo/refreshAuthToken$onNavigationEvent;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/refreshAuthToken;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/refreshAuthToken;->onNavigationEvent:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic onRelationshipValidationResult(Lo/refreshAuthToken;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lo/refreshAuthToken;->warmup:J

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()V
    .locals 2

    monitor-enter p0

    .line 208
    :try_start_0
    iget-boolean v0, p0, Lo/refreshAuthToken;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 209
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    sget-object v1, Lo/refreshAuthToken$onNavigationEvent;->extraCallback:Lo/refreshAuthToken$onNavigationEvent;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    sget-object v1, Lo/refreshAuthToken$onNavigationEvent;->onNavigationEvent:Lo/refreshAuthToken$onNavigationEvent;

    if-ne v0, v1, :cond_2

    .line 212
    :cond_1
    sget-object v0, Lo/refreshAuthToken$onNavigationEvent;->ICustomTabsCallback:Lo/refreshAuthToken$onNavigationEvent;

    iput-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    .line 214
    :cond_2
    iget-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    sget-object v1, Lo/refreshAuthToken$onNavigationEvent;->onPostMessage:Lo/refreshAuthToken$onNavigationEvent;

    if-ne v0, v1, :cond_3

    .line 215
    sget-object v0, Lo/refreshAuthToken$onNavigationEvent;->onMessageChannelReady:Lo/refreshAuthToken$onNavigationEvent;

    iput-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized extraCallback()V
    .locals 6

    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    sget-object v1, Lo/refreshAuthToken$onNavigationEvent;->ICustomTabsCallback:Lo/refreshAuthToken$onNavigationEvent;

    if-ne v0, v1, :cond_0

    .line 192
    sget-object v0, Lo/refreshAuthToken$onNavigationEvent;->extraCallback:Lo/refreshAuthToken$onNavigationEvent;

    iput-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    .line 193
    iget-object v0, p0, Lo/refreshAuthToken;->asBinder:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lo/refreshAuthToken;->onNavigationEvent:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lo/refreshAuthToken;->onRelationshipValidationResult:Ljava/lang/Runnable;

    iget-wide v2, p0, Lo/refreshAuthToken;->warmup:J

    iget-object v4, p0, Lo/refreshAuthToken;->onMessageChannelReady:Lo/Onboarding$3;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 196
    invoke-virtual {v4, v5}, Lo/Onboarding$3;->onPostMessage(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 194
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lo/refreshAuthToken;->asBinder:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 199
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    sget-object v1, Lo/refreshAuthToken$onNavigationEvent;->onMessageChannelReady:Lo/refreshAuthToken$onNavigationEvent;

    if-ne v0, v1, :cond_1

    .line 200
    sget-object v0, Lo/refreshAuthToken$onNavigationEvent;->onPostMessage:Lo/refreshAuthToken$onNavigationEvent;

    iput-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady()V
    .locals 2

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    sget-object v1, Lo/refreshAuthToken$onNavigationEvent;->onTransact:Lo/refreshAuthToken$onNavigationEvent;

    if-eq v0, v1, :cond_1

    .line 224
    sget-object v0, Lo/refreshAuthToken$onNavigationEvent;->onTransact:Lo/refreshAuthToken$onNavigationEvent;

    iput-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    .line 225
    iget-object v0, p0, Lo/refreshAuthToken;->ICustomTabsCallback$Stub:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lo/refreshAuthToken;->ICustomTabsCallback$Stub:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 228
    :cond_0
    iget-object v0, p0, Lo/refreshAuthToken;->asBinder:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lo/refreshAuthToken;->asBinder:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lo/refreshAuthToken;->asBinder:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onNavigationEvent()V
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lo/refreshAuthToken;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lo/refreshAuthToken;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPostMessage()V
    .locals 5

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lo/refreshAuthToken;->onMessageChannelReady:Lo/Onboarding$3;

    const/4 v1, 0x0

    .line 5177
    iput-boolean v1, v0, Lo/Onboarding$3;->ICustomTabsCallback:Z

    .line 161
    invoke-virtual {v0}, Lo/Onboarding$3;->onPostMessage()Lo/Onboarding$3;

    .line 165
    iget-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    sget-object v2, Lo/refreshAuthToken$onNavigationEvent;->extraCallback:Lo/refreshAuthToken$onNavigationEvent;

    if-ne v0, v2, :cond_0

    .line 166
    sget-object v0, Lo/refreshAuthToken$onNavigationEvent;->onNavigationEvent:Lo/refreshAuthToken$onNavigationEvent;

    iput-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    sget-object v2, Lo/refreshAuthToken$onNavigationEvent;->onPostMessage:Lo/refreshAuthToken$onNavigationEvent;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    sget-object v2, Lo/refreshAuthToken$onNavigationEvent;->onMessageChannelReady:Lo/refreshAuthToken$onNavigationEvent;

    if-ne v0, v2, :cond_5

    .line 170
    :cond_1
    iget-object v0, p0, Lo/refreshAuthToken;->ICustomTabsCallback$Stub:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lo/refreshAuthToken;->ICustomTabsCallback$Stub:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 173
    :cond_2
    iget-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    sget-object v2, Lo/refreshAuthToken$onNavigationEvent;->onMessageChannelReady:Lo/refreshAuthToken$onNavigationEvent;

    if-ne v0, v2, :cond_3

    .line 175
    sget-object v0, Lo/refreshAuthToken$onNavigationEvent;->ICustomTabsCallback:Lo/refreshAuthToken$onNavigationEvent;

    iput-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 179
    :cond_3
    :try_start_2
    sget-object v0, Lo/refreshAuthToken$onNavigationEvent;->extraCallback:Lo/refreshAuthToken$onNavigationEvent;

    iput-object v0, p0, Lo/refreshAuthToken;->asInterface:Lo/refreshAuthToken$onNavigationEvent;

    .line 180
    iget-object v0, p0, Lo/refreshAuthToken;->asBinder:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    const-string v0, "There should be no outstanding pingFuture"

    if-eqz v1, :cond_6

    .line 181
    iget-object v0, p0, Lo/refreshAuthToken;->onNavigationEvent:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lo/refreshAuthToken;->onRelationshipValidationResult:Ljava/lang/Runnable;

    iget-wide v2, p0, Lo/refreshAuthToken;->warmup:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lo/refreshAuthToken;->asBinder:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    :cond_5
    monitor-exit p0

    return-void

    .line 5511
    :cond_6
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
