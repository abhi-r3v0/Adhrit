.class public final Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lo/setDiskUsed;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyIndex:Lo/populateFramesList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedSet:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/populateFramesList;Lo/CrashlyticsReportWithSessionId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setDiskUsed;",
            ">;",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/setDiskUsed;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->keyIndex:Lo/populateFramesList;

    .line 70
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->sortedSet:Lo/CrashlyticsReportWithSessionId;

    return-void
.end method

.method public static emptySet(Ljava/util/Comparator;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lo/setDiskUsed;",
            ">;)",
            "Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;"
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lo/stopTracking;->lambdaFactory$(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    .line 49
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    .line 50
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;->emptyDocumentMap()Lo/populateFramesList;

    move-result-object v1

    new-instance v2, Lo/CrashlyticsReportWithSessionId;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lo/CrashlyticsReportWithSessionId;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {v0, v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;-><init>(Lo/populateFramesList;Lo/CrashlyticsReportWithSessionId;)V

    return-object v0
.end method

.method public static synthetic lambda$emptySet$0(Ljava/util/Comparator;Lo/setDiskUsed;Lo/setDiskUsed;)I
    .locals 0

    .line 41
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    .line 43
    invoke-static {}, Lo/setDiskUsed;->keyComparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    :cond_0
    return p0
.end method


# virtual methods
.method public final add(Lo/setDiskUsed;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;
    .locals 3

    .line 146
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->remove(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v0

    .line 148
    iget-object v1, v0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->keyIndex:Lo/populateFramesList;

    .line 149
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object v1

    .line 150
    iget-object v0, v0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->sortedSet:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0, p1}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    .line 151
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    invoke-direct {v0, v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;-><init>(Lo/populateFramesList;Lo/CrashlyticsReportWithSessionId;)V

    return-object v0
.end method

.method public final contains(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->keyIndex:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    .line 195
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->size()I

    move-result v2

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 199
    :cond_2
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 200
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 201
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setDiskUsed;

    .line 203
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setDiskUsed;

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final getDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/setDiskUsed;
    .locals 1

    .line 89
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->keyIndex:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setDiskUsed;

    return-object p1
.end method

.method public final getFirstDocument()Lo/setDiskUsed;
    .locals 1

    .line 98
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->sortedSet:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->getMinEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setDiskUsed;

    return-object v0
.end method

.method public final getLastDocument()Lo/setDiskUsed;
    .locals 1

    .line 107
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->sortedSet:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->getMaxEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setDiskUsed;

    return-object v0
.end method

.method public final getPredecessor(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/setDiskUsed;
    .locals 2

    .line 120
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->keyIndex:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setDiskUsed;

    if-eqz v0, :cond_0

    .line 124
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->sortedSet:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {p1, v0}, Lo/CrashlyticsReportWithSessionId;->getPredecessorEntry(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setDiskUsed;

    return-object p1

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Key not contained in DocumentSet: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 3

    .line 215
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setDiskUsed;

    mul-int/lit8 v1, v1, 0x1f

    .line 216
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final indexOf(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)I
    .locals 1

    .line 132
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->keyIndex:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setDiskUsed;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 136
    :cond_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->sortedSet:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0, p1}, Lo/CrashlyticsReportWithSessionId;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->keyIndex:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->sortedSet:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;
    .locals 2

    .line 156
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->keyIndex:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setDiskUsed;

    if-nez v0, :cond_0

    return-object p0

    .line 161
    :cond_0
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->keyIndex:Lo/populateFramesList;

    invoke-virtual {v1, p1}, Lo/populateFramesList;->remove(Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p1

    .line 162
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->sortedSet:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v1, v0}, Lo/CrashlyticsReportWithSessionId;->remove(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    .line 163
    new-instance v1, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    invoke-direct {v1, p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;-><init>(Lo/populateFramesList;Lo/CrashlyticsReportWithSessionId;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    .line 74
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->keyIndex:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->size()I

    move-result v0

    return v0
.end method

.method public final toList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setDiskUsed;

    .line 173
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setDiskUsed;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ", "

    .line 229
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
