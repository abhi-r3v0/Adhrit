.class public final Lo/AutoValue_CrashlyticsReport_Session_Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutoValue_CrashlyticsReport_Session_Application$extraCallback;,
        Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;
    }
.end annotation


# static fields
.field private static final KEY_ORDERING_ASC:Lo/setOrganization;

.field private static final KEY_ORDERING_DESC:Lo/setOrganization;


# instance fields
.field private final collectionGroup:Ljava/lang/String;

.field private final endAt:Lo/getFilename;

.field private final explicitSortOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setOrganization;",
            ">;"
        }
    .end annotation
.end field

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

.field private final limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

.field private memoizedOrderBy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setOrganization;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedTarget:Lo/setClsId;

.field private final path:Lo/setJailbroken;

.field private final startAt:Lo/getFilename;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    sget-object v0, Lo/setOrganization$onPostMessage;->ASCENDING:Lo/setOrganization$onPostMessage;

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->KEY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    .line 55
    invoke-static {v0, v1}, Lo/setOrganization;->getInstance(Lo/setOrganization$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/setOrganization;

    move-result-object v0

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_Application;->KEY_ORDERING_ASC:Lo/setOrganization;

    .line 56
    sget-object v0, Lo/setOrganization$onPostMessage;->DESCENDING:Lo/setOrganization$onPostMessage;

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->KEY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    .line 57
    invoke-static {v0, v1}, Lo/setOrganization;->getInstance(Lo/setOrganization$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/setOrganization;

    move-result-object v0

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_Application;->KEY_ORDERING_DESC:Lo/setOrganization;

    return-void
.end method

.method public constructor <init>(Lo/setJailbroken;Ljava/lang/String;)V
    .locals 10

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    sget-object v7, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;->LIMIT_TO_FIRST:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 103
    invoke-direct/range {v0 .. v9}, Lo/AutoValue_CrashlyticsReport_Session_Application;-><init>(Lo/setJailbroken;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;Lo/getFilename;Lo/getFilename;)V

    return-void
.end method

.method public constructor <init>(Lo/setJailbroken;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;Lo/getFilename;Lo/getFilename;)V
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
            "Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;",
            "Lo/getFilename;",
            "Lo/getFilename;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->path:Lo/setJailbroken;

    .line 89
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->collectionGroup:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    .line 91
    iput-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->filters:Ljava/util/List;

    .line 92
    iput-wide p5, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limit:J

    .line 93
    iput-object p7, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    .line 94
    iput-object p8, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt:Lo/getFilename;

    .line 95
    iput-object p9, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt:Lo/getFilename;

    return-void
.end method

.method public static atPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Application;
    .locals 2

    .line 51
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Application;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Application;-><init>(Lo/setJailbroken;Ljava/lang/String;)V

    return-object v0
.end method

.method private matchesBounds(Lo/setDiskUsed;)Z
    .locals 3

    .line 448
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt:Lo/getFilename;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getOrderBy()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lo/getFilename;->sortsBeforeDocument(Ljava/util/List;Lo/setDiskUsed;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 451
    :cond_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt:Lo/getFilename;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getOrderBy()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lo/getFilename;->sortsBeforeDocument(Ljava/util/List;Lo/setDiskUsed;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private matchesFilters(Lo/setDiskUsed;)Z
    .locals 2

    .line 427
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/isCrashed;

    .line 428
    invoke-virtual {v1, p1}, Lo/isCrashed;->matches(Lo/setDiskUsed;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private matchesOrderBy(Lo/setDiskUsed;)Z
    .locals 4

    .line 437
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setOrganization;

    .line 439
    invoke-virtual {v1}, Lo/setOrganization;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v2

    sget-object v3, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->KEY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lo/setOrganization;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {p1, v1}, Lo/setDiskUsed;->getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private matchesPathAndCollectionGroup(Lo/setDiskUsed;)Z
    .locals 4

    .line 414
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->collectionGroup:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 418
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->collectionGroup:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->hasCollectionId(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->path:Lo/setJailbroken;

    invoke-virtual {p1, v0}, Lo/setRamUsed;->isPrefixOf(Lo/setRamUsed;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 419
    :cond_1
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->path:Lo/setJailbroken;

    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->isDocumentKey(Lo/setJailbroken;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 420
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->path:Lo/setJailbroken;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 422
    :cond_2
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->path:Lo/setJailbroken;

    invoke-virtual {p1, v0}, Lo/setRamUsed;->isPrefixOf(Lo/setRamUsed;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->path:Lo/setJailbroken;

    invoke-virtual {p1}, Lo/setRamUsed;->length()I

    move-result p1

    invoke-virtual {v0}, Lo/setRamUsed;->length()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_3

    return v3

    :cond_3
    return v2
.end method


# virtual methods
.method public final asCollectionQueryAtPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Application;
    .locals 11

    .line 347
    new-instance v10, Lo/AutoValue_CrashlyticsReport_Session_Application;

    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->filters:Ljava/util/List;

    iget-object v4, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    iget-wide v5, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limit:J

    iget-object v7, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    iget-object v8, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt:Lo/getFilename;

    iget-object v9, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt:Lo/getFilename;

    const/4 v2, 0x0

    move-object v0, v10

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lo/AutoValue_CrashlyticsReport_Session_Application;-><init>(Lo/setJailbroken;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;Lo/getFilename;Lo/getFilename;)V

    return-object v10
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation

    .line 467
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Application$extraCallback;

    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getOrderBy()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Application$extraCallback;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final endAt(Lo/getFilename;)Lo/AutoValue_CrashlyticsReport_Session_Application;
    .locals 11

    .line 337
    new-instance v10, Lo/AutoValue_CrashlyticsReport_Session_Application;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->path:Lo/setJailbroken;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->collectionGroup:Ljava/lang/String;

    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->filters:Ljava/util/List;

    iget-object v4, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    iget-wide v5, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limit:J

    iget-object v7, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    iget-object v8, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt:Lo/getFilename;

    move-object v0, v10

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lo/AutoValue_CrashlyticsReport_Session_Application;-><init>(Lo/setJailbroken;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;Lo/getFilename;Lo/getFilename;)V

    return-object v10
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 557
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 561
    :cond_1
    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session_Application;

    .line 563
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    iget-object v2, p1, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    if-eq v1, v2, :cond_2

    return v0

    .line 567
    :cond_2
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->toTarget()Lo/setClsId;

    move-result-object v0

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->toTarget()Lo/setClsId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public final filter(Lo/isCrashed;)Lo/AutoValue_CrashlyticsReport_Session_Application;
    .locals 13

    .line 238
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->isDocumentQuery()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "No filter is allowed for document query"

    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 240
    instance-of v3, p1, Lo/getOs;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lo/getOs;

    invoke-virtual {v3}, Lo/getOs;->isInequality()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    invoke-virtual {p1}, Lo/isCrashed;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->inequalityField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Query must only have one inequality field"

    .line 245
    invoke-static {v3, v5, v4}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    .line 252
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    .line 254
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setOrganization;

    iget-object v3, v3, Lo/setOrganization;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "First orderBy must match inequality field"

    .line 251
    invoke-static {v1, v2, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 257
    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->filters:Ljava/util/List;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance p1, Lo/AutoValue_CrashlyticsReport_Session_Application;

    iget-object v4, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->path:Lo/setJailbroken;

    iget-object v5, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->collectionGroup:Ljava/lang/String;

    iget-object v7, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    iget-wide v8, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limit:J

    iget-object v10, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    iget-object v11, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt:Lo/getFilename;

    iget-object v12, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt:Lo/getFilename;

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Lo/AutoValue_CrashlyticsReport_Session_Application;-><init>(Lo/setJailbroken;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;Lo/getFilename;Lo/getFilename;)V

    return-object p1
.end method

.method public final findFilterOperator(Ljava/util/List;)Lo/isCrashed$onNavigationEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/isCrashed$onNavigationEvent;",
            ">;)",
            "Lo/isCrashed$onNavigationEvent;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/isCrashed;

    .line 221
    instance-of v2, v1, Lo/getOs;

    if-eqz v2, :cond_0

    .line 222
    check-cast v1, Lo/getOs;

    invoke-virtual {v1}, Lo/getOs;->getOperator()Lo/isCrashed$onNavigationEvent;

    move-result-object v1

    .line 223
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getCanonicalId()Ljava/lang/String;
    .locals 2

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->toTarget()Lo/setClsId;

    move-result-object v1

    invoke-virtual {v1}, Lo/setClsId;->getCanonicalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|lt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCollectionGroup()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->collectionGroup:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndAt()Lo/getFilename;
    .locals 1

    .line 189
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt:Lo/getFilename;

    return-object v0
.end method

.method public final getExplicitOrderBy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/setOrganization;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

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

    .line 148
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->filters:Ljava/util/List;

    return-object v0
.end method

.method public final getFirstOrderByField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;
    .locals 2

    .line 194
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setOrganization;

    invoke-virtual {v0}, Lo/setOrganization;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    return-object v0
.end method

.method public final getLimitToFirst()J
    .locals 3

    .line 156
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->hasLimitToFirst()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Called getLimitToFirst when no limit was set"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-wide v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limit:J

    return-wide v0
.end method

.method public final getLimitToLast()J
    .locals 3

    .line 169
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->hasLimitToLast()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Called getLimitToLast when no limit was set"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-wide v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limit:J

    return-wide v0
.end method

.method public final getLimitType()Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;
    .locals 3

    .line 178
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->hasLimitToLast()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->hasLimitToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Called getLimitType when no limit was set"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    return-object v0
.end method

.method public final getOrderBy()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/setOrganization;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->memoizedOrderBy:Ljava/util/List;

    if-nez v0, :cond_7

    .line 376
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->inequalityField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    .line 377
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getFirstOrderByField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 382
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->isKeyField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Application;->KEY_ORDERING_ASC:Lo/setOrganization;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->memoizedOrderBy:Ljava/util/List;

    goto :goto_3

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Lo/setOrganization;

    .line 385
    sget-object v4, Lo/setOrganization$onPostMessage;->ASCENDING:Lo/setOrganization$onPostMessage;

    .line 387
    invoke-static {v4, v0}, Lo/setOrganization;->getInstance(Lo/setOrganization$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/setOrganization;

    move-result-object v0

    aput-object v0, v1, v2

    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Application;->KEY_ORDERING_ASC:Lo/setOrganization;

    aput-object v0, v1, v3

    .line 386
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->memoizedOrderBy:Ljava/util/List;

    goto :goto_3

    .line 390
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setOrganization;

    .line 393
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {v4}, Lo/setOrganization;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v4

    sget-object v5, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->KEY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_6

    .line 402
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 403
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setOrganization;

    invoke-virtual {v1}, Lo/setOrganization;->getDirection()Lo/setOrganization$onPostMessage;

    move-result-object v1

    goto :goto_1

    .line 404
    :cond_4
    sget-object v1, Lo/setOrganization$onPostMessage;->ASCENDING:Lo/setOrganization$onPostMessage;

    .line 405
    :goto_1
    sget-object v2, Lo/setOrganization$onPostMessage;->ASCENDING:Lo/setOrganization$onPostMessage;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_Application;->KEY_ORDERING_ASC:Lo/setOrganization;

    goto :goto_2

    :cond_5
    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_Application;->KEY_ORDERING_DESC:Lo/setOrganization;

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_6
    iput-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->memoizedOrderBy:Ljava/util/List;

    .line 410
    :cond_7
    :goto_3
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->memoizedOrderBy:Ljava/util/List;

    return-object v0
.end method

.method public final getPath()Lo/setJailbroken;
    .locals 1

    .line 116
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->path:Lo/setJailbroken;

    return-object v0
.end method

.method public final getStartAt()Lo/getFilename;
    .locals 1

    .line 184
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt:Lo/getFilename;

    return-object v0
.end method

.method public final hasLimitToFirst()Z
    .locals 5

    .line 161
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;->LIMIT_TO_FIRST:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limit:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLimitToLast()Z
    .locals 5

    .line 174
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;->LIMIT_TO_LAST:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limit:J

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
    .locals 2

    .line 572
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->toTarget()Lo/setClsId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final inequalityField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;
    .locals 3

    .line 203
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/isCrashed;

    .line 204
    instance-of v2, v1, Lo/getOs;

    if-eqz v2, :cond_0

    .line 205
    check-cast v1, Lo/getOs;

    .line 206
    invoke-virtual {v1}, Lo/getOs;->isInequality()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {v1}, Lo/isCrashed;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isCollectionGroupQuery()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->collectionGroup:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isDocumentQuery()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->path:Lo/setJailbroken;

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->isDocumentKey(Lo/setJailbroken;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->collectionGroup:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final limitToFirst(J)Lo/AutoValue_CrashlyticsReport_Session_Application;
    .locals 11

    .line 290
    new-instance v10, Lo/AutoValue_CrashlyticsReport_Session_Application;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->path:Lo/setJailbroken;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->collectionGroup:Ljava/lang/String;

    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->filters:Ljava/util/List;

    iget-object v4, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    sget-object v7, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;->LIMIT_TO_FIRST:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    iget-object v8, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt:Lo/getFilename;

    iget-object v9, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt:Lo/getFilename;

    move-object v0, v10

    move-wide v5, p1

    invoke-direct/range {v0 .. v9}, Lo/AutoValue_CrashlyticsReport_Session_Application;-><init>(Lo/setJailbroken;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;Lo/getFilename;Lo/getFilename;)V

    return-object v10
.end method

.method public final limitToLast(J)Lo/AutoValue_CrashlyticsReport_Session_Application;
    .locals 11

    .line 308
    new-instance v10, Lo/AutoValue_CrashlyticsReport_Session_Application;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->path:Lo/setJailbroken;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->collectionGroup:Ljava/lang/String;

    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->filters:Ljava/util/List;

    iget-object v4, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    sget-object v7, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;->LIMIT_TO_LAST:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    iget-object v8, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt:Lo/getFilename;

    iget-object v9, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt:Lo/getFilename;

    move-object v0, v10

    move-wide v5, p1

    invoke-direct/range {v0 .. v9}, Lo/AutoValue_CrashlyticsReport_Session_Application;-><init>(Lo/setJailbroken;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;Lo/getFilename;Lo/getFilename;)V

    return-object v10
.end method

.method public final matches(Lo/setDiskUsed;)Z
    .locals 1

    .line 459
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->matchesPathAndCollectionGroup(Lo/setDiskUsed;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->matchesOrderBy(Lo/setDiskUsed;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->matchesFilters(Lo/setDiskUsed;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->matchesBounds(Lo/setDiskUsed;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final matchesAllDocuments()Z
    .locals 5

    .line 138
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limit:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt:Lo/getFilename;

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt:Lo/getFilename;

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getExplicitOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getExplicitOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getFirstOrderByField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->isKeyField()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final orderBy(Lo/setOrganization;)Lo/AutoValue_CrashlyticsReport_Session_Application;
    .locals 10

    .line 270
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->isDocumentQuery()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "No ordering is allowed for document query"

    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->inequalityField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v2, p1, Lo/setOrganization;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "First orderBy must match inequality field"

    .line 274
    invoke-static {v0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 277
    :cond_1
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 278
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance p1, Lo/AutoValue_CrashlyticsReport_Session_Application;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->path:Lo/setJailbroken;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->collectionGroup:Ljava/lang/String;

    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->filters:Ljava/util/List;

    iget-wide v5, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limit:J

    iget-object v7, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    iget-object v8, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt:Lo/getFilename;

    iget-object v9, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt:Lo/getFilename;

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lo/AutoValue_CrashlyticsReport_Session_Application;-><init>(Lo/setJailbroken;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;Lo/getFilename;Lo/getFilename;)V

    return-object p1
.end method

.method public final startAt(Lo/getFilename;)Lo/AutoValue_CrashlyticsReport_Session_Application;
    .locals 11

    .line 326
    new-instance v10, Lo/AutoValue_CrashlyticsReport_Session_Application;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->path:Lo/setJailbroken;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->collectionGroup:Ljava/lang/String;

    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->filters:Ljava/util/List;

    iget-object v4, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->explicitSortOrder:Ljava/util/List;

    iget-wide v5, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limit:J

    iget-object v7, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    iget-object v9, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt:Lo/getFilename;

    move-object v0, v10

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lo/AutoValue_CrashlyticsReport_Session_Application;-><init>(Lo/setJailbroken;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;Lo/getFilename;Lo/getFilename;)V

    return-object v10
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query(target="

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->toTarget()Lo/setClsId;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";limitType="

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toTarget()Lo/setClsId;
    .locals 21

    move-object/from16 v0, p0

    .line 498
    iget-object v1, v0, Lo/AutoValue_CrashlyticsReport_Session_Application;->memoizedTarget:Lo/setClsId;

    if-nez v1, :cond_5

    .line 499
    iget-object v1, v0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitType:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    sget-object v2, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;->LIMIT_TO_FIRST:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    if-ne v1, v2, :cond_0

    .line 500
    new-instance v1, Lo/setClsId;

    .line 502
    invoke-virtual/range {p0 .. p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getPath()Lo/setJailbroken;

    move-result-object v4

    .line 503
    invoke-virtual/range {p0 .. p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getCollectionGroup()Ljava/lang/String;

    move-result-object v5

    .line 504
    invoke-virtual/range {p0 .. p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getFilters()Ljava/util/List;

    move-result-object v6

    .line 505
    invoke-virtual/range {p0 .. p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getOrderBy()Ljava/util/List;

    move-result-object v7

    iget-wide v8, v0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limit:J

    .line 507
    invoke-virtual/range {p0 .. p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getStartAt()Lo/getFilename;

    move-result-object v10

    .line 508
    invoke-virtual/range {p0 .. p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getEndAt()Lo/getFilename;

    move-result-object v11

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lo/setClsId;-><init>(Lo/setJailbroken;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLo/getFilename;Lo/getFilename;)V

    iput-object v1, v0, Lo/AutoValue_CrashlyticsReport_Session_Application;->memoizedTarget:Lo/setClsId;

    goto/16 :goto_3

    .line 511
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    invoke-virtual/range {p0 .. p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getOrderBy()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setOrganization;

    .line 514
    invoke-virtual {v3}, Lo/setOrganization;->getDirection()Lo/setOrganization$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/setOrganization$onPostMessage;->DESCENDING:Lo/setOrganization$onPostMessage;

    if-ne v4, v5, :cond_1

    .line 515
    sget-object v4, Lo/setOrganization$onPostMessage;->ASCENDING:Lo/setOrganization$onPostMessage;

    goto :goto_1

    .line 516
    :cond_1
    sget-object v4, Lo/setOrganization$onPostMessage;->DESCENDING:Lo/setOrganization$onPostMessage;

    .line 517
    :goto_1
    invoke-virtual {v3}, Lo/setOrganization;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v3

    invoke-static {v4, v3}, Lo/setOrganization;->getInstance(Lo/setOrganization$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/setOrganization;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :cond_2
    iget-object v2, v0, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt:Lo/getFilename;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    new-instance v4, Lo/getFilename;

    invoke-virtual {v2}, Lo/getFilename;->getPosition()Ljava/util/List;

    move-result-object v2

    iget-object v5, v0, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt:Lo/getFilename;

    invoke-virtual {v5}, Lo/getFilename;->isBefore()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v2, v5}, Lo/getFilename;-><init>(Ljava/util/List;Z)V

    move-object/from16 v19, v4

    goto :goto_2

    :cond_3
    move-object/from16 v19, v3

    .line 524
    :goto_2
    iget-object v2, v0, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt:Lo/getFilename;

    if-eqz v2, :cond_4

    .line 525
    new-instance v3, Lo/getFilename;

    invoke-virtual {v2}, Lo/getFilename;->getPosition()Ljava/util/List;

    move-result-object v2

    iget-object v4, v0, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt:Lo/getFilename;

    invoke-virtual {v4}, Lo/getFilename;->isBefore()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v2, v4}, Lo/getFilename;-><init>(Ljava/util/List;Z)V

    :cond_4
    move-object/from16 v20, v3

    .line 528
    new-instance v2, Lo/setClsId;

    .line 530
    invoke-virtual/range {p0 .. p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getPath()Lo/setJailbroken;

    move-result-object v13

    .line 531
    invoke-virtual/range {p0 .. p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getCollectionGroup()Ljava/lang/String;

    move-result-object v14

    .line 532
    invoke-virtual/range {p0 .. p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getFilters()Ljava/util/List;

    move-result-object v15

    iget-wide v3, v0, Lo/AutoValue_CrashlyticsReport_Session_Application;->limit:J

    move-object v12, v2

    move-object/from16 v16, v1

    move-wide/from16 v17, v3

    invoke-direct/range {v12 .. v20}, Lo/setClsId;-><init>(Lo/setJailbroken;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLo/getFilename;Lo/getFilename;)V

    iput-object v2, v0, Lo/AutoValue_CrashlyticsReport_Session_Application;->memoizedTarget:Lo/setClsId;

    .line 540
    :cond_5
    :goto_3
    iget-object v1, v0, Lo/AutoValue_CrashlyticsReport_Session_Application;->memoizedTarget:Lo/setClsId;

    return-object v1
.end method
