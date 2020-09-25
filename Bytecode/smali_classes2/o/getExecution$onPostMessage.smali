.class public Lo/getExecution$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getExecution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onPostMessage"
.end annotation


# instance fields
.field private final asyncQueue:Lo/CrashlyticsReport$Type;

.field private gcTask:Lo/CrashlyticsReport$Type$onNavigationEvent;

.field private hasRun:Z

.field private final localStore:Lo/setCores;

.field final synthetic this$0:Lo/getExecution;


# direct methods
.method public constructor <init>(Lo/getExecution;Lo/CrashlyticsReport$Type;Lo/setCores;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lo/getExecution$onPostMessage;->this$0:Lo/getExecution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lo/getExecution$onPostMessage;->hasRun:Z

    .line 121
    iput-object p2, p0, Lo/getExecution$onPostMessage;->asyncQueue:Lo/CrashlyticsReport$Type;

    .line 122
    iput-object p3, p0, Lo/getExecution$onPostMessage;->localStore:Lo/setCores;

    return-void
.end method

.method public static synthetic lambda$scheduleGC$0(Lo/getExecution$onPostMessage;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lo/getExecution$onPostMessage;->localStore:Lo/setCores;

    iget-object v1, p0, Lo/getExecution$onPostMessage;->this$0:Lo/getExecution;

    invoke-virtual {v0, v1}, Lo/setCores;->collectGarbage(Lo/getExecution;)Lo/getExecution$ICustomTabsCallback;

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lo/getExecution$onPostMessage;->hasRun:Z

    .line 148
    invoke-direct {p0}, Lo/getExecution$onPostMessage;->scheduleGC()V

    return-void
.end method

.method private scheduleGC()V
    .locals 5

    .line 140
    iget-boolean v0, p0, Lo/getExecution$onPostMessage;->hasRun:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getExecution;->access$100()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/getExecution;->access$200()J

    move-result-wide v0

    .line 141
    :goto_0
    iget-object v2, p0, Lo/getExecution$onPostMessage;->asyncQueue:Lo/CrashlyticsReport$Type;

    sget-object v3, Lo/CrashlyticsReport$Type$extraCallback;->GARBAGE_COLLECTION:Lo/CrashlyticsReport$Type$extraCallback;

    invoke-static {p0}, Lo/setFontAssetDelegate;->lambdaFactory$(Lo/getExecution$onPostMessage;)Ljava/lang/Runnable;

    move-result-object v4

    .line 142
    invoke-virtual {v2, v3, v0, v1, v4}, Lo/CrashlyticsReport$Type;->enqueueAfterDelay(Lo/CrashlyticsReport$Type$extraCallback;JLjava/lang/Runnable;)Lo/CrashlyticsReport$Type$onNavigationEvent;

    move-result-object v0

    iput-object v0, p0, Lo/getExecution$onPostMessage;->gcTask:Lo/CrashlyticsReport$Type$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 5

    .line 127
    iget-object v0, p0, Lo/getExecution$onPostMessage;->this$0:Lo/getExecution;

    invoke-static {v0}, Lo/getExecution;->access$000(Lo/getExecution;)Lo/getExecution$onMessageChannelReady;

    move-result-object v0

    iget-wide v0, v0, Lo/getExecution$onMessageChannelReady;->minBytesThreshold:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 128
    invoke-direct {p0}, Lo/getExecution$onPostMessage;->scheduleGC()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 134
    iget-object v0, p0, Lo/getExecution$onPostMessage;->gcTask:Lo/CrashlyticsReport$Type$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lo/CrashlyticsReport$Type$onNavigationEvent;->cancel()V

    :cond_0
    return-void
.end method
