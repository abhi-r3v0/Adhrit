.class public Lo/CrashlyticsReport$Type$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field private final targetTimeMs:J

.field private final task:Ljava/lang/Runnable;

.field final synthetic this$0:Lo/CrashlyticsReport$Type;

.field private final timerId:Lo/CrashlyticsReport$Type$extraCallback;


# direct methods
.method private constructor <init>(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;JLjava/lang/Runnable;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->this$0:Lo/CrashlyticsReport$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->timerId:Lo/CrashlyticsReport$Type$extraCallback;

    .line 102
    iput-wide p3, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->targetTimeMs:J

    .line 103
    iput-object p5, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->task:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;JLjava/lang/Runnable;Lo/CrashlyticsReport$Type$2;)V
    .locals 0

    .line 92
    invoke-direct/range {p0 .. p5}, Lo/CrashlyticsReport$Type$onNavigationEvent;-><init>(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;JLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1200(Lo/CrashlyticsReport$Type$onNavigationEvent;J)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsReport$Type$onNavigationEvent;->start(J)V

    return-void
.end method

.method static synthetic access$1300(Lo/CrashlyticsReport$Type$onNavigationEvent;)J
    .locals 2

    .line 92
    iget-wide v0, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->targetTimeMs:J

    return-wide v0
.end method

.method static synthetic access$900(Lo/CrashlyticsReport$Type$onNavigationEvent;)Lo/CrashlyticsReport$Type$extraCallback;
    .locals 0

    .line 92
    iget-object p0, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->timerId:Lo/CrashlyticsReport$Type$extraCallback;

    return-object p0
.end method

.method public static synthetic access$lambda$0(Lo/CrashlyticsReport$Type$onNavigationEvent;)V
    .locals 0

    invoke-direct {p0}, Lo/CrashlyticsReport$Type$onNavigationEvent;->handleDelayElapsed()V

    return-void
.end method

.method private handleDelayElapsed()V
    .locals 1

    .line 136
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->this$0:Lo/CrashlyticsReport$Type;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Type;->verifyIsCurrentThread()V

    .line 137
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lo/CrashlyticsReport$Type$onNavigationEvent;->markDone()V

    .line 139
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private markDone()V
    .locals 3

    .line 145
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Caller should have verified scheduledFuture is non-null."

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 148
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->this$0:Lo/CrashlyticsReport$Type;

    invoke-static {v0, p0}, Lo/CrashlyticsReport$Type;->access$200(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$onNavigationEvent;)V

    return-void
.end method

.method private start(J)V
    .locals 3

    .line 111
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->this$0:Lo/CrashlyticsReport$Type;

    invoke-static {v0}, Lo/CrashlyticsReport$Type;->access$000(Lo/CrashlyticsReport$Type;)Lo/CrashlyticsReport$Type$onPostMessage;

    move-result-object v0

    invoke-static {p0}, Lo/toStringMap$ICustomTabsCallback;->lambdaFactory$(Lo/CrashlyticsReport$Type$onNavigationEvent;)Ljava/lang/Runnable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1, p2, v2}, Lo/CrashlyticsReport$Type$onPostMessage;->access$100(Lo/CrashlyticsReport$Type$onPostMessage;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 126
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->this$0:Lo/CrashlyticsReport$Type;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Type;->verifyIsCurrentThread()V

    .line 127
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onNavigationEvent;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 130
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 131
    invoke-direct {p0}, Lo/CrashlyticsReport$Type$onNavigationEvent;->markDone()V

    :cond_0
    return-void
.end method

.method skipDelay()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lo/CrashlyticsReport$Type$onNavigationEvent;->handleDelayElapsed()V

    return-void
.end method
