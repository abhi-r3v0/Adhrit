.class public Lo/getFiles;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getFiles$onNavigationEvent;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

.field private final mutations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/CrashlyticsReport$FilesPayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getFiles;->mutations:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lo/getFiles;->committed:Z

    .line 52
    invoke-static {p1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iput-object p1, p0, Lo/getFiles;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    return-void
.end method

.method private update(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;)Lo/getFiles;
    .locals 2

    .line 164
    iget-object v0, p0, Lo/getFiles;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->validateReference(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)V

    .line 165
    invoke-direct {p0}, Lo/getFiles;->verifyNotCommitted()V

    .line 166
    iget-object v0, p0, Lo/getFiles;->mutations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Lo/CrashlyticsReport$FilesPayload$File;->exists(Z)Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;->toMutationList(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method private verifyNotCommitted()V
    .locals 2

    .line 201
    iget-boolean v0, p0, Lo/getFiles;->committed:Z

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A write batch can no longer be used after commit() has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public commit()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lo/getFiles;->verifyNotCommitted()V

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lo/getFiles;->committed:Z

    .line 193
    iget-object v0, p0, Lo/getFiles;->mutations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 194
    iget-object v0, p0, Lo/getFiles;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getClient()Lo/getEndedAt;

    move-result-object v0

    iget-object v1, p0, Lo/getFiles;->mutations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lo/getEndedAt;->write(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 1001
    :cond_0
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    const/4 v1, 0x0

    .line 1002
    invoke-virtual {v0, v1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object v0
.end method

.method public delete(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)Lo/getFiles;
    .locals 3

    .line 178
    iget-object v0, p0, Lo/getFiles;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->validateReference(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)V

    .line 179
    invoke-direct {p0}, Lo/getFiles;->verifyNotCommitted()V

    .line 180
    iget-object v0, p0, Lo/getFiles;->mutations:Ljava/util/ArrayList;

    new-instance v1, Lo/withEvents;

    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    sget-object v2, Lo/CrashlyticsReport$FilesPayload$File;->NONE:Lo/CrashlyticsReport$FilesPayload$File;

    invoke-direct {v1, p1, v2}, Lo/withEvents;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public set(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Ljava/lang/Object;)Lo/getFiles;
    .locals 1

    .line 66
    sget-object v0, Lo/setNdkPayload;->OVERWRITE:Lo/setNdkPayload;

    invoke-virtual {p0, p1, p2, v0}, Lo/getFiles;->set(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Ljava/lang/Object;Lo/setNdkPayload;)Lo/getFiles;

    move-result-object p1

    return-object p1
.end method

.method public set(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Ljava/lang/Object;Lo/setNdkPayload;)Lo/getFiles;
    .locals 1

    .line 83
    iget-object v0, p0, Lo/getFiles;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->validateReference(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)V

    const-string v0, "Provided data must not be null."

    .line 84
    invoke-static {p2, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided options must not be null."

    .line 85
    invoke-static {p3, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-direct {p0}, Lo/getFiles;->verifyNotCommitted()V

    .line 88
    invoke-virtual {p3}, Lo/setNdkPayload;->isMerge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lo/getFiles;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;

    move-result-object v0

    invoke-virtual {p3}, Lo/setNdkPayload;->getFieldMask()Lo/CrashlyticsReport$CustomAttribute;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseMergeData(Ljava/lang/Object;Lo/CrashlyticsReport$CustomAttribute;)Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;

    move-result-object p2

    goto :goto_0

    .line 90
    :cond_0
    iget-object p3, p0, Lo/getFiles;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {p3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;

    move-result-object p3

    invoke-virtual {p3, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseSetData(Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;

    move-result-object p2

    .line 91
    :goto_0
    iget-object p3, p0, Lo/getFiles;->mutations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    sget-object v0, Lo/CrashlyticsReport$FilesPayload$File;->NONE:Lo/CrashlyticsReport$FilesPayload$File;

    invoke-virtual {p2, p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;->toMutationList(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs update(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lo/getFiles;
    .locals 2

    .line 128
    iget-object v0, p0, Lo/getFiles;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

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
    invoke-direct {p0, p1, p2}, Lo/getFiles;->update(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;)Lo/getFiles;

    move-result-object p1

    return-object p1
.end method

.method public update(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Ljava/util/Map;)Lo/getFiles;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/getFiles;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lo/getFiles;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseUpdateData(Ljava/util/Map;)Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;

    move-result-object p2

    .line 108
    invoke-direct {p0, p1, p2}, Lo/getFiles;->update(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;)Lo/getFiles;

    move-result-object p1

    return-object p1
.end method

.method public varargs update(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/lang/Object;[Ljava/lang/Object;)Lo/getFiles;
    .locals 2

    .line 153
    iget-object v0, p0, Lo/getFiles;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

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
    invoke-direct {p0, p1, p2}, Lo/getFiles;->update(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;)Lo/getFiles;

    move-result-object p1

    return-object p1
.end method
