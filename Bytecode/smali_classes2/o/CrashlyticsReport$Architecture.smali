.class public final Lo/CrashlyticsReport$Architecture;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final batch:Lo/CrashlyticsReport$Builder;

.field private final commitVersion:Lo/withNdkPayload;

.field private final docVersions:Lo/populateFramesList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/withNdkPayload;",
            ">;"
        }
    .end annotation
.end field

.field private final mutationResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final streamToken:Lo/SessionProtobufHelper;


# direct methods
.method private constructor <init>(Lo/CrashlyticsReport$Builder;Lo/withNdkPayload;Ljava/util/List;Lo/SessionProtobufHelper;Lo/populateFramesList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReport$Builder;",
            "Lo/withNdkPayload;",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload$Builder;",
            ">;",
            "Lo/SessionProtobufHelper;",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/withNdkPayload;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/CrashlyticsReport$Architecture;->batch:Lo/CrashlyticsReport$Builder;

    .line 40
    iput-object p2, p0, Lo/CrashlyticsReport$Architecture;->commitVersion:Lo/withNdkPayload;

    .line 41
    iput-object p3, p0, Lo/CrashlyticsReport$Architecture;->mutationResults:Ljava/util/List;

    .line 42
    iput-object p4, p0, Lo/CrashlyticsReport$Architecture;->streamToken:Lo/SessionProtobufHelper;

    .line 43
    iput-object p5, p0, Lo/CrashlyticsReport$Architecture;->docVersions:Lo/populateFramesList;

    return-void
.end method

.method public static create(Lo/CrashlyticsReport$Builder;Lo/withNdkPayload;Ljava/util/List;Lo/SessionProtobufHelper;)Lo/CrashlyticsReport$Architecture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReport$Builder;",
            "Lo/withNdkPayload;",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload$Builder;",
            ">;",
            "Lo/SessionProtobufHelper;",
            ")",
            "Lo/CrashlyticsReport$Architecture;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lo/CrashlyticsReport$Builder;->getMutations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Lo/CrashlyticsReport$Builder;->getMutations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 60
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "Mutations sent %d must equal results received %d"

    .line 56
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;->emptyVersionMap()Lo/populateFramesList;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lo/CrashlyticsReport$Builder;->getMutations()Ljava/util/List;

    move-result-object v1

    move-object v9, v0

    .line 64
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 65
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$FilesPayload$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$FilesPayload$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object v0

    .line 66
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CrashlyticsReport$FilesPayload;

    invoke-virtual {v2}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-virtual {v9, v2, v0}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 69
    :cond_1
    new-instance v0, Lo/CrashlyticsReport$Architecture;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lo/CrashlyticsReport$Architecture;-><init>(Lo/CrashlyticsReport$Builder;Lo/withNdkPayload;Ljava/util/List;Lo/SessionProtobufHelper;Lo/populateFramesList;)V

    return-object v0
.end method


# virtual methods
.method public final getBatch()Lo/CrashlyticsReport$Builder;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/CrashlyticsReport$Architecture;->batch:Lo/CrashlyticsReport$Builder;

    return-object v0
.end method

.method public final getCommitVersion()Lo/withNdkPayload;
    .locals 1

    .line 77
    iget-object v0, p0, Lo/CrashlyticsReport$Architecture;->commitVersion:Lo/withNdkPayload;

    return-object v0
.end method

.method public final getDocVersions()Lo/populateFramesList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/withNdkPayload;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lo/CrashlyticsReport$Architecture;->docVersions:Lo/populateFramesList;

    return-object v0
.end method

.method public final getMutationResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload$Builder;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lo/CrashlyticsReport$Architecture;->mutationResults:Ljava/util/List;

    return-object v0
.end method

.method public final getStreamToken()Lo/SessionProtobufHelper;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/CrashlyticsReport$Architecture;->streamToken:Lo/SessionProtobufHelper;

    return-object v0
.end method
