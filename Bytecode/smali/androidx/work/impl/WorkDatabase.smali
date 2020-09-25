.class public abstract Landroidx/work/impl/WorkDatabase;
.super Lo/setCurrentControllerInfo;
.source ""


# static fields
.field private static final asBinder:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 94
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/WorkDatabase;->asBinder:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lo/setCurrentControllerInfo;-><init>()V

    return-void
.end method

.method public static extraCallback(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
    .locals 5

    .line 112
    const-class v0, Landroidx/work/impl/WorkDatabase;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 1073
    new-instance p2, Lo/setCurrentControllerInfo$onMessageChannelReady;

    const/4 v2, 0x0

    invoke-direct {p2, p0, v0, v2}, Lo/setCurrentControllerInfo$onMessageChannelReady;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1687
    iput-boolean v1, p2, Lo/setCurrentControllerInfo$onMessageChannelReady;->extraCallback:Z

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {}, Lo/PlaybackStateCompat$MediaKeyAction;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-static {p0, v0, p2}, Lo/registerMediaButtonEventReceiver;->onPostMessage(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object p2

    .line 118
    new-instance v0, Landroidx/work/impl/WorkDatabase$2;

    invoke-direct {v0, p0}, Landroidx/work/impl/WorkDatabase$2;-><init>(Landroid/content/Context;)V

    .line 2636
    iput-object v0, p2, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback:Lo/update$ICustomTabsCallback;

    .line 2733
    :goto_0
    iput-object p1, p2, Lo/setCurrentControllerInfo$onMessageChannelReady;->onNavigationEvent:Ljava/util/concurrent/Executor;

    .line 3158
    new-instance p1, Landroidx/work/impl/WorkDatabase$4;

    invoke-direct {p1}, Landroidx/work/impl/WorkDatabase$4;-><init>()V

    .line 3869
    iget-object v0, p2, Lo/setCurrentControllerInfo$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lo/setCurrentControllerInfo$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 3872
    :cond_1
    iget-object v0, p2, Lo/setCurrentControllerInfo$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-array p1, v1, [Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    .line 136
    sget-object v0, Lo/PlaybackStateCompat$State;->ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    .line 137
    invoke-virtual {p2, p1}, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object p1

    new-array p2, v1, [Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    new-instance v0, Lo/PlaybackStateCompat$State$onMessageChannelReady;

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v0, p0, v3, v4}, Lo/PlaybackStateCompat$State$onMessageChannelReady;-><init>(Landroid/content/Context;II)V

    aput-object v0, p2, v2

    .line 138
    invoke-virtual {p1, p2}, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object p1

    new-array p2, v1, [Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    sget-object v0, Lo/PlaybackStateCompat$State;->onPostMessage:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    aput-object v0, p2, v2

    .line 141
    invoke-virtual {p1, p2}, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object p1

    new-array p2, v1, [Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    sget-object v0, Lo/PlaybackStateCompat$State;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    aput-object v0, p2, v2

    .line 142
    invoke-virtual {p1, p2}, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object p1

    new-array p2, v1, [Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    new-instance v0, Lo/PlaybackStateCompat$State$onMessageChannelReady;

    const/4 v3, 0x5

    const/4 v4, 0x6

    invoke-direct {v0, p0, v3, v4}, Lo/PlaybackStateCompat$State$onMessageChannelReady;-><init>(Landroid/content/Context;II)V

    aput-object v0, p2, v2

    .line 143
    invoke-virtual {p1, p2}, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object p1

    new-array p2, v1, [Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    sget-object v0, Lo/PlaybackStateCompat$State;->onMessageChannelReady:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    aput-object v0, p2, v2

    .line 146
    invoke-virtual {p1, p2}, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object p1

    new-array p2, v1, [Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    sget-object v0, Lo/PlaybackStateCompat$State;->extraCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    aput-object v0, p2, v2

    .line 147
    invoke-virtual {p1, p2}, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object p1

    new-array p2, v1, [Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    sget-object v0, Lo/PlaybackStateCompat$State;->onTransact:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    aput-object v0, p2, v2

    .line 148
    invoke-virtual {p1, p2}, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object p1

    new-array p2, v1, [Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    new-instance v0, Lo/PlaybackStateCompat$State$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/PlaybackStateCompat$State$ICustomTabsCallback;-><init>(Landroid/content/Context;)V

    aput-object v0, p2, v2

    .line 149
    invoke-virtual {p1, p2}, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object p1

    new-array p2, v1, [Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    new-instance v0, Lo/PlaybackStateCompat$State$onMessageChannelReady;

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, p0, v3, v4}, Lo/PlaybackStateCompat$State$onMessageChannelReady;-><init>(Landroid/content/Context;II)V

    aput-object v0, p2, v2

    .line 150
    invoke-virtual {p1, p2}, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object p0

    .line 4809
    iput-boolean v2, p0, Lo/setCurrentControllerInfo$onMessageChannelReady;->onPostMessage:Z

    .line 4810
    iput-boolean v1, p0, Lo/setCurrentControllerInfo$onMessageChannelReady;->onRelationshipValidationResult:Z

    .line 154
    invoke-virtual {p0}, Lo/setCurrentControllerInfo$onMessageChannelReady;->extraCallback()Lo/setCurrentControllerInfo;

    move-result-object p0

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    return-object p0
.end method

.method static onRelationshipValidationResult()Ljava/lang/String;
    .locals 5

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Landroidx/work/impl/WorkDatabase;->asBinder:J

    sub-long/2addr v1, v3

    .line 178
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract ICustomTabsCallback$Stub()Lo/setTheme;
.end method

.method public abstract ICustomTabsService()Lo/setContentView;
.end method

.method public abstract asBinder()Lo/newIntentHandleExecutor;
.end method

.method public abstract asInterface()Lo/onPostResume;
.end method

.method public abstract newSession()Lo/attachBaseContext;
.end method

.method public abstract onTransact()Lo/findViewById;
.end method

.method public abstract warmup()Lo/onConfigurationChanged;
.end method
