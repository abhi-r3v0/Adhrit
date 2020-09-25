.class public Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

.field private final transaction:Lo/getClsId;


# direct methods
.method constructor <init>(Lo/getClsId;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getClsId;

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->transaction:Lo/getClsId;

    .line 53
    invoke-static {p2}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    return-void
.end method

.method private getAsync(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->transaction:Lo/getClsId;

    .line 191
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/getClsId;->lookup(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lo/toStringMap$onMessageChannelReady;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lo/getScrapViewAt$onPostMessage;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;)Lo/isDefaultApp;

    move-result-object v1

    .line 192
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getAsync$0(Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;Lcom/google/android/gms/tasks/Task;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 199
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 202
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    .line 203
    instance-of v0, p1, Lo/setDiskUsed;

    if-eqz v0, :cond_0

    .line 204
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    check-cast p1, Lo/setDiskUsed;

    invoke-static {p0, p1, v2, v2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->fromDocument(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/setDiskUsed;ZZ)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    move-result-object p0

    return-object p0

    .line 206
    :cond_0
    instance-of v0, p1, Lo/AutoValue_CrashlyticsReport_Session_User;

    if-eqz v0, :cond_1

    .line 207
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 208
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    .line 207
    invoke-static {p0, p1, v2, v2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->fromNoDocument(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;ZZ)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    move-result-object p0

    return-object p0

    .line 210
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "BatchGetDocumentsRequest returned unexpected document type: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    .line 210
    invoke-static {p0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0

    :cond_2
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "Mismatch in docs returned from document lookup."

    .line 200
    invoke-static {p1, p0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0

    .line 196
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method

.method private update(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;)Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;
    .locals 1

    .line 164
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->validateReference(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)V

    .line 165
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->transaction:Lo/getClsId;

    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lo/getClsId;->update(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;)V

    return-object p0
.end method


# virtual methods
.method public delete(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;
    .locals 1

    .line 177
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->validateReference(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)V

    .line 178
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->transaction:Lo/getClsId;

    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/getClsId;->delete(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    return-object p0
.end method

.method public get(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/firestore/FirebaseFirestoreException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->validateReference(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)V

    .line 228
    :try_start_0
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->getAsync(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p1}, Lo/clearInstancesForTest;->onNavigationEvent(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 235
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    throw p1

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public set(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;
    .locals 1

    .line 67
    sget-object v0, Lo/setNdkPayload;->OVERWRITE:Lo/setNdkPayload;

    invoke-virtual {p0, p1, p2, v0}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->set(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Ljava/lang/Object;Lo/setNdkPayload;)Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;

    move-result-object p1

    return-object p1
.end method

.method public set(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Ljava/lang/Object;Lo/setNdkPayload;)Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->validateReference(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)V

    const-string v0, "Provided data must not be null."

    .line 85
    invoke-static {p2, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided options must not be null."

    .line 86
    invoke-static {p3, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p3}, Lo/setNdkPayload;->isMerge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;

    move-result-object v0

    invoke-virtual {p3}, Lo/setNdkPayload;->getFieldMask()Lo/CrashlyticsReport$CustomAttribute;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseMergeData(Ljava/lang/Object;Lo/CrashlyticsReport$CustomAttribute;)Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;

    move-result-object p2

    goto :goto_0

    .line 90
    :cond_0
    iget-object p3, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {p3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;

    move-result-object p3

    invoke-virtual {p3, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseSetData(Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;

    move-result-object p2

    .line 91
    :goto_0
    iget-object p3, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->transaction:Lo/getClsId;

    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lo/getClsId;->set(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;)V

    return-object p0
.end method

.method public varargs update(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;
    .locals 2

    .line 128
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 130
    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;

    move-result-object v0

    const/4 v1, 0x1

    .line 132
    invoke-static {v1, p2, p3, p4}, Lo/eventFromJson;->collectUpdateArguments(ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 131
    invoke-virtual {v0, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseUpdateData(Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;

    move-result-object p2

    .line 134
    invoke-direct {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->update(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;)Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;

    move-result-object p1

    return-object p1
.end method

.method public update(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Ljava/util/Map;)Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseUpdateData(Ljava/util/Map;)Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;

    move-result-object p2

    .line 108
    invoke-direct {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->update(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;)Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;

    move-result-object p1

    return-object p1
.end method

.method public varargs update(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/lang/Object;[Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;
    .locals 2

    .line 153
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 155
    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;

    move-result-object v0

    const/4 v1, 0x1

    .line 157
    invoke-static {v1, p2, p3, p4}, Lo/eventFromJson;->collectUpdateArguments(ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 156
    invoke-virtual {v0, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseUpdateData(Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;

    move-result-object p2

    .line 159
    invoke-direct {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->update(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;)Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;

    move-result-object p1

    return-object p1
.end method
