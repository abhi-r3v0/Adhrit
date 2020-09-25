.class public Lo/setBinaries;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private referencesByKey:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/getRam;",
            ">;"
        }
    .end annotation
.end field

.field private referencesByTarget:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/getRam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lo/CrashlyticsReportWithSessionId;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lo/getRam;->BY_KEY:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lo/CrashlyticsReportWithSessionId;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Lo/setBinaries;->referencesByKey:Lo/CrashlyticsReportWithSessionId;

    .line 46
    new-instance v0, Lo/CrashlyticsReportWithSessionId;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lo/getRam;->BY_TARGET:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lo/CrashlyticsReportWithSessionId;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Lo/setBinaries;->referencesByTarget:Lo/CrashlyticsReportWithSessionId;

    return-void
.end method

.method private removeReference(Lo/getRam;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lo/setBinaries;->referencesByKey:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0, p1}, Lo/CrashlyticsReportWithSessionId;->remove(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    iput-object v0, p0, Lo/setBinaries;->referencesByKey:Lo/CrashlyticsReportWithSessionId;

    .line 112
    iget-object v0, p0, Lo/setBinaries;->referencesByTarget:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0, p1}, Lo/CrashlyticsReportWithSessionId;->remove(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    iput-object p1, p0, Lo/setBinaries;->referencesByTarget:Lo/CrashlyticsReportWithSessionId;

    return-void
.end method


# virtual methods
.method public addReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V
    .locals 1

    .line 56
    new-instance v0, Lo/getRam;

    invoke-direct {v0, p1, p2}, Lo/getRam;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V

    .line 57
    iget-object p1, p0, Lo/setBinaries;->referencesByKey:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {p1, v0}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    iput-object p1, p0, Lo/setBinaries;->referencesByKey:Lo/CrashlyticsReportWithSessionId;

    .line 58
    iget-object p1, p0, Lo/setBinaries;->referencesByTarget:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {p1, v0}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    iput-object p1, p0, Lo/setBinaries;->referencesByTarget:Lo/CrashlyticsReportWithSessionId;

    return-void
.end method

.method public addReferences(Lo/CrashlyticsReportWithSessionId;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;I)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 64
    invoke-virtual {p0, v0, p2}, Lo/setBinaries;->addReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z
    .locals 3

    .line 134
    new-instance v0, Lo/getRam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/getRam;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V

    .line 136
    iget-object v2, p0, Lo/setBinaries;->referencesByKey:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v2, v0}, Lo/CrashlyticsReportWithSessionId;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 141
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRam;

    invoke-virtual {v0}, Lo/getRam;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lo/setBinaries;->referencesByKey:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public referencesForId(I)Lo/CrashlyticsReportWithSessionId;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->empty()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    .line 118
    new-instance v1, Lo/getRam;

    invoke-direct {v1, v0, p1}, Lo/getRam;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V

    .line 120
    iget-object v0, p0, Lo/setBinaries;->referencesByTarget:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0, v1}, Lo/CrashlyticsReportWithSessionId;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 121
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    .line 122
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getRam;

    .line 124
    invoke-virtual {v2}, Lo/getRam;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 125
    invoke-virtual {v2}, Lo/getRam;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public removeAllReferences()V
    .locals 2

    .line 105
    iget-object v0, p0, Lo/setBinaries;->referencesByKey:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getRam;

    .line 106
    invoke-direct {p0, v1}, Lo/setBinaries;->removeReference(Lo/getRam;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V
    .locals 1

    .line 70
    new-instance v0, Lo/getRam;

    invoke-direct {v0, p1, p2}, Lo/getRam;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V

    invoke-direct {p0, v0}, Lo/setBinaries;->removeReference(Lo/getRam;)V

    return-void
.end method

.method public removeReferences(Lo/CrashlyticsReportWithSessionId;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;I)V"
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 76
    invoke-virtual {p0, v0, p2}, Lo/setBinaries;->removeReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeReferencesForId(I)Lo/CrashlyticsReportWithSessionId;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->empty()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    .line 87
    new-instance v1, Lo/getRam;

    invoke-direct {v1, v0, p1}, Lo/getRam;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V

    .line 88
    iget-object v0, p0, Lo/setBinaries;->referencesByTarget:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0, v1}, Lo/CrashlyticsReportWithSessionId;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 89
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    .line 90
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getRam;

    .line 92
    invoke-virtual {v2}, Lo/getRam;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 93
    invoke-virtual {v2}, Lo/getRam;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    .line 94
    invoke-direct {p0, v2}, Lo/setBinaries;->removeReference(Lo/getRam;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method
