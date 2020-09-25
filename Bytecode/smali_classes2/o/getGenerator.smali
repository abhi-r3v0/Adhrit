.class public final Lo/getGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getGenerator$onMessageChannelReady;,
        Lo/getGenerator$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private onlineState:Lo/setGeneratorType;

.field private final queries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            "Lo/getGenerator$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final snapshotsInSyncListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final syncEngine:Lo/AutoValue_CrashlyticsReport_Session_Application$1;


# direct methods
.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Application$1;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/getGenerator;->snapshotsInSyncListeners:Ljava/util/Set;

    .line 64
    sget-object v0, Lo/setGeneratorType;->UNKNOWN:Lo/setGeneratorType;

    iput-object v0, p0, Lo/getGenerator;->onlineState:Lo/setGeneratorType;

    .line 67
    iput-object p1, p0, Lo/getGenerator;->syncEngine:Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getGenerator;->queries:Ljava/util/Map;

    .line 69
    invoke-virtual {p1, p0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->setCallback(Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;)V

    return-void
.end method

.method private raiseSnapshotsInSyncEvent()V
    .locals 3

    .line 136
    iget-object v0, p0, Lo/getGenerator;->snapshotsInSyncListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    const/4 v2, 0x0

    .line 137
    invoke-interface {v1, v2, v2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addQueryListener(Lo/getOrganization;)I
    .locals 6

    .line 80
    invoke-virtual {p1}, Lo/getOrganization;->getQuery()Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lo/getGenerator;->queries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getGenerator$ICustomTabsCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 85
    new-instance v1, Lo/getGenerator$ICustomTabsCallback;

    invoke-direct {v1}, Lo/getGenerator$ICustomTabsCallback;-><init>()V

    .line 86
    iget-object v5, p0, Lo/getGenerator;->queries:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_1
    invoke-static {v1}, Lo/getGenerator$ICustomTabsCallback;->access$000(Lo/getGenerator$ICustomTabsCallback;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v5, p0, Lo/getGenerator;->onlineState:Lo/setGeneratorType;

    invoke-virtual {p1, v5}, Lo/getOrganization;->onOnlineStateChanged(Lo/setGeneratorType;)Z

    move-result v5

    xor-int/2addr v2, v5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "onOnlineStateChanged() shouldn\'t raise an event for brand-new listeners."

    .line 93
    invoke-static {v2, v5, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {v1}, Lo/getGenerator$ICustomTabsCallback;->access$100(Lo/getGenerator$ICustomTabsCallback;)Lo/getDiskSpace;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 97
    invoke-static {v1}, Lo/getGenerator$ICustomTabsCallback;->access$100(Lo/getGenerator$ICustomTabsCallback;)Lo/getDiskSpace;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo/getOrganization;->onViewSnapshot(Lo/getDiskSpace;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 99
    invoke-direct {p0}, Lo/getGenerator;->raiseSnapshotsInSyncEvent()V

    :cond_2
    if-eqz v4, :cond_3

    .line 104
    iget-object p1, p0, Lo/getGenerator;->syncEngine:Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    invoke-virtual {p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->listen(Lo/AutoValue_CrashlyticsReport_Session_Application;)I

    move-result p1

    invoke-static {v1, p1}, Lo/getGenerator$ICustomTabsCallback;->access$202(Lo/getGenerator$ICustomTabsCallback;I)I

    .line 106
    :cond_3
    invoke-static {v1}, Lo/getGenerator$ICustomTabsCallback;->access$200(Lo/getGenerator$ICustomTabsCallback;)I

    move-result p1

    return p1
.end method

.method public final addSnapshotsInSyncListener(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lo/getGenerator;->snapshotsInSyncListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 127
    invoke-interface {p1, v0, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method public final handleOnlineStateChange(Lo/setGeneratorType;)V
    .locals 4

    .line 175
    iput-object p1, p0, Lo/getGenerator;->onlineState:Lo/setGeneratorType;

    .line 176
    iget-object v0, p0, Lo/getGenerator;->queries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getGenerator$ICustomTabsCallback;

    .line 177
    invoke-static {v2}, Lo/getGenerator$ICustomTabsCallback;->access$000(Lo/getGenerator$ICustomTabsCallback;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getOrganization;

    .line 178
    invoke-virtual {v3, p1}, Lo/getOrganization;->onOnlineStateChanged(Lo/setGeneratorType;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 184
    invoke-direct {p0}, Lo/getGenerator;->raiseSnapshotsInSyncEvent()V

    :cond_3
    return-void
.end method

.method public final onError(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/emptyMap;)V
    .locals 3

    .line 163
    iget-object v0, p0, Lo/getGenerator;->queries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getGenerator$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 165
    invoke-static {v0}, Lo/getGenerator$ICustomTabsCallback;->access$000(Lo/getGenerator$ICustomTabsCallback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getOrganization;

    .line 166
    invoke-static {p2}, Lo/eventFromJson;->exceptionFromStatus(Lo/emptyMap;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getOrganization;->onError(Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object p2, p0, Lo/getGenerator;->queries:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onViewSnapshots(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getDiskSpace;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getDiskSpace;

    .line 145
    invoke-virtual {v1}, Lo/getDiskSpace;->getQuery()Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object v2

    .line 146
    iget-object v3, p0, Lo/getGenerator;->queries:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getGenerator$ICustomTabsCallback;

    if-eqz v2, :cond_0

    .line 148
    invoke-static {v2}, Lo/getGenerator$ICustomTabsCallback;->access$000(Lo/getGenerator$ICustomTabsCallback;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getOrganization;

    .line 149
    invoke-virtual {v4, v1}, Lo/getOrganization;->onViewSnapshot(Lo/getDiskSpace;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 153
    :cond_2
    invoke-static {v2, v1}, Lo/getGenerator$ICustomTabsCallback;->access$102(Lo/getGenerator$ICustomTabsCallback;Lo/getDiskSpace;)Lo/getDiskSpace;

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 157
    invoke-direct {p0}, Lo/getGenerator;->raiseSnapshotsInSyncEvent()V

    :cond_4
    return-void
.end method

.method public final removeQueryListener(Lo/getOrganization;)V
    .locals 3

    .line 111
    invoke-virtual {p1}, Lo/getOrganization;->getQuery()Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lo/getGenerator;->queries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getGenerator$ICustomTabsCallback;

    if-eqz v1, :cond_0

    .line 115
    invoke-static {v1}, Lo/getGenerator$ICustomTabsCallback;->access$000(Lo/getGenerator$ICustomTabsCallback;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    invoke-static {v1}, Lo/getGenerator$ICustomTabsCallback;->access$000(Lo/getGenerator$ICustomTabsCallback;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lo/getGenerator;->queries:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lo/getGenerator;->syncEngine:Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    invoke-virtual {p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->stopListening(Lo/AutoValue_CrashlyticsReport_Session_Application;)V

    :cond_1
    return-void
.end method

.method public final removeSnapshotsInSyncListener(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lo/getGenerator;->snapshotsInSyncListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
