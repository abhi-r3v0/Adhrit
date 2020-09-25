.class public final Lo/ad;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ai;


# instance fields
.field private final extraCallback:Landroid/content/Context;

.field private final onNavigationEvent:Lo/ah;

.field private final onPostMessage:Lo/ag$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ah;Lo/ag$2;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lo/ad;->extraCallback:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lo/ad;->onNavigationEvent:Lo/ah;

    .line 58
    iput-object p3, p0, Lo/ad;->onPostMessage:Lo/ag$2;

    return-void
.end method

.method private static extraCallback(Landroid/app/job/JobScheduler;II)Z
    .locals 4

    .line 77
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 78
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "attemptNumber"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 79
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    if-lt v2, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public final onPostMessage(Lo/OaidClient$Info;I)V
    .locals 13

    .line 94
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lo/ad;->extraCallback:Landroid/content/Context;

    const-class v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    iget-object v1, p0, Lo/ad;->extraCallback:Landroid/content/Context;

    const-string v2, "jobscheduler"

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 1063
    new-instance v2, Ljava/util/zip/Adler32;

    invoke-direct {v2}, Ljava/util/zip/Adler32;-><init>()V

    .line 1064
    iget-object v3, p0, Lo/ad;->extraCallback:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/Adler32;->update([B)V

    .line 1065
    invoke-virtual {p1}, Lo/OaidClient$Info;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/Adler32;->update([B)V

    const/4 v3, 0x4

    .line 1067
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1068
    invoke-virtual {p1}, Lo/OaidClient$Info;->ICustomTabsCallback()Lo/setReferrer;

    move-result-object v5

    invoke-static {v5}, Lo/getItemDelegate$onMessageChannelReady;->ICustomTabsCallback(Lo/setReferrer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1069
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 1066
    invoke-virtual {v2, v4}, Ljava/util/zip/Adler32;->update([B)V

    .line 1070
    invoke-virtual {p1}, Lo/OaidClient$Info;->onPostMessage()[B

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1071
    invoke-virtual {p1}, Lo/OaidClient$Info;->onPostMessage()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/zip/Adler32;->update([B)V

    .line 1073
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v4

    long-to-int v2, v4

    .line 99
    invoke-static {v1, v2, p2}, Lo/ad;->extraCallback(Landroid/app/job/JobScheduler;II)Z

    move-result v4

    const-string v5, "JobInfoScheduler"

    if-eqz v4, :cond_1

    const-string p2, "Upload for context %s is already scheduled. Returning..."

    .line 100
    invoke-static {v5, p2, p1}, Lo/extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 105
    :cond_1
    iget-object v4, p0, Lo/ad;->onNavigationEvent:Lo/ah;

    invoke-interface {v4, p1}, Lo/ah;->extraCallback(Lo/OaidClient$Info;)J

    move-result-wide v6

    .line 108
    iget-object v4, p0, Lo/ad;->onPostMessage:Lo/ag$2;

    new-instance v8, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v8, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 111
    invoke-virtual {p1}, Lo/OaidClient$Info;->ICustomTabsCallback()Lo/setReferrer;

    move-result-object v0

    .line 1157
    invoke-virtual {v4, v0, v6, v7, p2}, Lo/ag$2;->onNavigationEvent(Lo/setReferrer;JI)J

    move-result-wide v9

    .line 1158
    invoke-virtual {v8, v9, v10}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 1159
    invoke-virtual {v4}, Lo/ag$2;->onPostMessage()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ag$2$onPostMessage;

    invoke-virtual {v0}, Lo/ag$2$onPostMessage;->ICustomTabsCallback()Ljava/util/Set;

    move-result-object v0

    .line 1165
    sget-object v4, Lo/ag$2$onMessageChannelReady;->extraCallback:Lo/ag$2$onMessageChannelReady;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v4, :cond_2

    .line 1166
    invoke-virtual {v8, v9}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    .line 1168
    :cond_2
    invoke-virtual {v8, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1171
    :goto_0
    sget-object v4, Lo/ag$2$onMessageChannelReady;->ICustomTabsCallback:Lo/ag$2$onMessageChannelReady;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1172
    invoke-virtual {v8, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1174
    :cond_3
    sget-object v4, Lo/ag$2$onMessageChannelReady;->onPostMessage:Lo/ag$2$onMessageChannelReady;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1175
    invoke-virtual {v8, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 115
    :cond_4
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v4, "attemptNumber"

    .line 116
    invoke-virtual {v0, v4, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 117
    invoke-virtual {p1}, Lo/OaidClient$Info;->extraCallback()Ljava/lang/String;

    move-result-object v4

    const-string v11, "backendName"

    invoke-virtual {v0, v11, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lo/OaidClient$Info;->ICustomTabsCallback()Lo/setReferrer;

    move-result-object v4

    invoke-static {v4}, Lo/getItemDelegate$onMessageChannelReady;->ICustomTabsCallback(Lo/setReferrer;)I

    move-result v4

    const-string v11, "priority"

    invoke-virtual {v0, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 119
    invoke-virtual {p1}, Lo/OaidClient$Info;->onPostMessage()[B

    move-result-object v4

    const/4 v11, 0x0

    if-eqz v4, :cond_5

    .line 120
    invoke-virtual {p1}, Lo/OaidClient$Info;->onPostMessage()[B

    move-result-object v4

    invoke-static {v4, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const-string v12, "extras"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_5
    invoke-virtual {v8, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v11

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v10

    iget-object v2, p0, Lo/ad;->onPostMessage:Lo/ag$2;

    .line 129
    invoke-virtual {p1}, Lo/OaidClient$Info;->ICustomTabsCallback()Lo/setReferrer;

    move-result-object p1

    invoke-virtual {v2, p1, v6, v7, p2}, Lo/ag$2;->onNavigationEvent(Lo/setReferrer;JI)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v9

    const/4 p1, 0x3

    .line 130
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, p1

    .line 131
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "TransportRuntime."

    .line 3023
    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d"

    .line 2039
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v8}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method
