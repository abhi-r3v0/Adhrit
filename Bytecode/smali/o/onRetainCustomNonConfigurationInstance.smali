.class Lo/onRetainCustomNonConfigurationInstance;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onPostMessage:Ljava/lang/String;


# instance fields
.field private final onNavigationEvent:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobInfoConverter"

    .line 47
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/onRetainCustomNonConfigurationInstance;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 57
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lo/onRetainCustomNonConfigurationInstance;->onNavigationEvent:Landroid/content/ComponentName;

    return-void
.end method

.method private static extraCallback(Lo/getErrorMessage$onNavigationEvent;)Landroid/app/job/JobInfo$TriggerContentUri;
    .locals 2

    .line 7104
    iget-boolean v0, p0, Lo/getErrorMessage$onNavigationEvent;->onPostMessage:Z

    .line 130
    new-instance v1, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 8097
    iget-object p0, p0, Lo/getErrorMessage$onNavigationEvent;->onMessageChannelReady:Landroid/net/Uri;

    .line 130
    invoke-direct {v1, p0, v0}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    return-object v1
.end method

.method static onPostMessage(Lo/addCustomAction;)I
    .locals 5

    .line 140
    sget-object v0, Lo/onRetainCustomNonConfigurationInstance$3;->extraCallback:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_2

    return v3

    .line 148
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_2

    return v4

    .line 158
    :cond_2
    :goto_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v3, Lo/onRetainCustomNonConfigurationInstance;->onPostMessage:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    const-string p0, "API version too low. Cannot convert network type value %s"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, p0, v1}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v2

    :cond_3
    return v3

    :cond_4
    return v2

    :cond_5
    return v1
.end method


# virtual methods
.method ICustomTabsCallback(Lo/onDestroy;I)Landroid/app/job/JobInfo;
    .locals 10

    .line 70
    iget-object v0, p1, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 1105
    iget-object v1, v0, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    .line 71
    invoke-static {v1}, Lo/onRetainCustomNonConfigurationInstance;->onPostMessage(Lo/addCustomAction;)I

    move-result v1

    .line 72
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 73
    iget-object v3, p1, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    const-string v4, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    iget-wide v3, p1, Lo/onDestroy;->onRelationshipValidationResult:J

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmp-long v9, v3, v5

    if-eqz v9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "EXTRA_IS_PERIODIC"

    .line 74
    invoke-virtual {v2, v4, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    iget-object v4, p0, Lo/onRetainCustomNonConfigurationInstance;->onNavigationEvent:Landroid/content/ComponentName;

    invoke-direct {v3, p2, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 76
    invoke-virtual {v3, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 2121
    iget-boolean v1, v0, Lo/getErrorCode;->ICustomTabsCallback:Z

    .line 77
    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 2138
    iget-boolean v1, v0, Lo/getErrorCode;->onMessageChannelReady:Z

    .line 78
    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 79
    invoke-virtual {p2, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 3138
    iget-boolean v1, v0, Lo/getErrorCode;->onMessageChannelReady:Z

    if-nez v1, :cond_2

    .line 83
    iget-object v1, p1, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    sget-object v2, Lo/getPlaybackSpeed;->onPostMessage:Lo/getPlaybackSpeed;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 85
    :goto_1
    iget-wide v2, p1, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    invoke-virtual {p2, v2, v3, v1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 88
    :cond_2
    invoke-virtual {p1}, Lo/onDestroy;->onPostMessage()J

    move-result-wide v1

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 90
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 92
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt p1, v3, :cond_3

    .line 96
    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_2

    :cond_3
    cmp-long p1, v1, v5

    if-lez p1, :cond_4

    .line 100
    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_2

    .line 102
    :cond_4
    invoke-virtual {p2, v7}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    .line 106
    :goto_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p1, v1, :cond_7

    .line 3245
    iget-object p1, v0, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    .line 4063
    iget-object p1, p1, Lo/getErrorMessage;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_7

    .line 4235
    iget-object p1, v0, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    .line 5056
    iget-object p1, p1, Lo/getErrorMessage;->ICustomTabsCallback:Ljava/util/Set;

    .line 108
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getErrorMessage$onNavigationEvent;

    .line 109
    invoke-static {v1}, Lo/onRetainCustomNonConfigurationInstance;->extraCallback(Lo/getErrorMessage$onNavigationEvent;)Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    goto :goto_4

    .line 5189
    :cond_6
    iget-wide v1, v0, Lo/getErrorCode;->asBinder:J

    .line 111
    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 5207
    iget-wide v1, v0, Lo/getErrorCode;->asInterface:J

    .line 112
    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 117
    :cond_7
    invoke-virtual {p2, v8}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 118
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_8

    .line 6155
    iget-boolean p1, v0, Lo/getErrorCode;->onPostMessage:Z

    .line 119
    invoke-virtual {p2, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 6171
    iget-boolean p1, v0, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    .line 120
    invoke-virtual {p2, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 122
    :cond_8
    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    return-object p1
.end method
