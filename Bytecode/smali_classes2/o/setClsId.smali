.class public final Lo/setClsId;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NO_LIMIT:J = -0x1L


# instance fields
.field private final collectionGroup:Ljava/lang/String;

.field private final endAt:Lo/getFilename;

.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/isCrashed;",
            ">;"
        }
    .end annotation
.end field

.field private final limit:J

.field private memoizedCannonicalId:Ljava/lang/String;

.field private final orderBy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setOrganization;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Lo/setJailbroken;

.field private final startAt:Lo/getFilename;


# direct methods
.method constructor <init>(Lo/setJailbroken;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLo/getFilename;Lo/getFilename;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setJailbroken;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/isCrashed;",
            ">;",
            "Ljava/util/List<",
            "Lo/setOrganization;",
            ">;J",
            "Lo/getFilename;",
            "Lo/getFilename;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lo/setClsId;->path:Lo/setJailbroken;

    .line 64
    iput-object p2, p0, Lo/setClsId;->collectionGroup:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lo/setClsId;->orderBy:Ljava/util/List;

    .line 66
    iput-object p3, p0, Lo/setClsId;->filters:Ljava/util/List;

    .line 67
    iput-wide p5, p0, Lo/setClsId;->limit:J

    .line 68
    iput-object p7, p0, Lo/setClsId;->startAt:Lo/getFilename;

    .line 69
    iput-object p8, p0, Lo/setClsId;->endAt:Lo/getFilename;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 171
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 175
    :cond_1
    check-cast p1, Lo/setClsId;

    .line 177
    iget-object v2, p0, Lo/setClsId;->collectionGroup:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lo/setClsId;->collectionGroup:Ljava/lang/String;

    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lo/setClsId;->collectionGroup:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 182
    :cond_3
    iget-wide v2, p0, Lo/setClsId;->limit:J

    iget-wide v4, p1, Lo/setClsId;->limit:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 185
    :cond_4
    iget-object v2, p0, Lo/setClsId;->orderBy:Ljava/util/List;

    iget-object v3, p1, Lo/setClsId;->orderBy:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 188
    :cond_5
    iget-object v2, p0, Lo/setClsId;->filters:Ljava/util/List;

    iget-object v3, p1, Lo/setClsId;->filters:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 191
    :cond_6
    iget-object v2, p0, Lo/setClsId;->path:Lo/setJailbroken;

    iget-object v3, p1, Lo/setClsId;->path:Lo/setJailbroken;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 194
    :cond_7
    iget-object v2, p0, Lo/setClsId;->startAt:Lo/getFilename;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lo/setClsId;->startAt:Lo/getFilename;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_8
    iget-object v2, p1, Lo/setClsId;->startAt:Lo/getFilename;

    if-eqz v2, :cond_9

    :goto_1
    return v1

    .line 197
    :cond_9
    iget-object v2, p0, Lo/setClsId;->endAt:Lo/getFilename;

    iget-object p1, p1, Lo/setClsId;->endAt:Lo/getFilename;

    if-eqz v2, :cond_a

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    if-nez p1, :cond_b

    return v0

    :cond_b
    :goto_2
    return v1
.end method

.method public final getCanonicalId()Ljava/lang/String;
    .locals 4

    .line 121
    iget-object v0, p0, Lo/setClsId;->memoizedCannonicalId:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-virtual {p0}, Lo/setClsId;->getPath()Lo/setJailbroken;

    move-result-object v1

    invoke-virtual {v1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Lo/setClsId;->collectionGroup:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "|cg:"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lo/setClsId;->collectionGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "|f:"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Lo/setClsId;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/isCrashed;

    .line 136
    invoke-virtual {v2}, Lo/isCrashed;->getCanonicalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "|ob:"

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0}, Lo/setClsId;->getOrderBy()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setOrganization;

    .line 142
    invoke-virtual {v2}, Lo/setOrganization;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v3

    invoke-virtual {v3}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2}, Lo/setOrganization;->getDirection()Lo/setOrganization$onPostMessage;

    move-result-object v2

    sget-object v3, Lo/setOrganization$onPostMessage;->ASCENDING:Lo/setOrganization$onPostMessage;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "asc"

    goto :goto_2

    :cond_3
    const-string v2, "desc"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 147
    :cond_4
    invoke-virtual {p0}, Lo/setClsId;->hasLimit()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "|l:"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lo/setClsId;->getLimit()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    :cond_5
    iget-object v1, p0, Lo/setClsId;->startAt:Lo/getFilename;

    if-eqz v1, :cond_6

    const-string v1, "|lb:"

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v1, p0, Lo/setClsId;->startAt:Lo/getFilename;

    invoke-virtual {v1}, Lo/getFilename;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_6
    iget-object v1, p0, Lo/setClsId;->endAt:Lo/getFilename;

    if-eqz v1, :cond_7

    const-string v1, "|ub:"

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Lo/setClsId;->endAt:Lo/getFilename;

    invoke-virtual {v1}, Lo/getFilename;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/setClsId;->memoizedCannonicalId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCollectionGroup()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/setClsId;->collectionGroup:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndAt()Lo/getFilename;
    .locals 1

    .line 112
    iget-object v0, p0, Lo/setClsId;->endAt:Lo/getFilename;

    return-object v0
.end method

.method public final getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/isCrashed;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lo/setClsId;->filters:Ljava/util/List;

    return-object v0
.end method

.method public final getLimit()J
    .locals 3

    .line 97
    invoke-virtual {p0}, Lo/setClsId;->hasLimit()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Called getLimit when no limit was set"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-wide v0, p0, Lo/setClsId;->limit:J

    return-wide v0
.end method

.method public final getOrderBy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/setOrganization;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lo/setClsId;->orderBy:Ljava/util/List;

    return-object v0
.end method

.method public final getPath()Lo/setJailbroken;
    .locals 1

    .line 74
    iget-object v0, p0, Lo/setClsId;->path:Lo/setJailbroken;

    return-object v0
.end method

.method public final getStartAt()Lo/getFilename;
    .locals 1

    .line 107
    iget-object v0, p0, Lo/setClsId;->startAt:Lo/getFilename;

    return-object v0
.end method

.method public final hasLimit()Z
    .locals 5

    .line 102
    iget-wide v0, p0, Lo/setClsId;->limit:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 202
    iget-object v0, p0, Lo/setClsId;->orderBy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 203
    iget-object v1, p0, Lo/setClsId;->collectionGroup:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 204
    iget-object v1, p0, Lo/setClsId;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 205
    iget-object v1, p0, Lo/setClsId;->path:Lo/setJailbroken;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 206
    iget-wide v3, p0, Lo/setClsId;->limit:J

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 207
    iget-object v1, p0, Lo/setClsId;->startAt:Lo/getFilename;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 208
    iget-object v1, p0, Lo/setClsId;->endAt:Lo/getFilename;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final isDocumentQuery()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lo/setClsId;->path:Lo/setJailbroken;

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->isDocumentKey(Lo/setJailbroken;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setClsId;->collectionGroup:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/setClsId;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query("

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v1, p0, Lo/setClsId;->path:Lo/setJailbroken;

    invoke-virtual {v1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v1, p0, Lo/setClsId;->collectionGroup:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " collectionGroup="

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lo/setClsId;->collectionGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_0
    iget-object v1, p0, Lo/setClsId;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, " where "

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 223
    :goto_0
    iget-object v3, p0, Lo/setClsId;->filters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    if-lez v1, :cond_1

    const-string v3, " and "

    .line 225
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_1
    iget-object v3, p0, Lo/setClsId;->filters:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/isCrashed;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_2
    iget-object v1, p0, Lo/setClsId;->orderBy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, " order by "

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :goto_1
    iget-object v1, p0, Lo/setClsId;->orderBy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    if-lez v2, :cond_3

    const-string v1, ", "

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_3
    iget-object v1, p0, Lo/setClsId;->orderBy:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string v1, ")"

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
