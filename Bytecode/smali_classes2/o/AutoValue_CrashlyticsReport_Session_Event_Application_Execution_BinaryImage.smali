.class final Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setArch;


# instance fields
.field private final collectionParentsCache:Lo/setExecution$onPostMessage;

.field private final db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lo/setExecution$onPostMessage;

    invoke-direct {v0}, Lo/setExecution$onPostMessage;-><init>()V

    iput-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage;->collectionParentsCache:Lo/setExecution$onPostMessage;

    .line 38
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    return-void
.end method

.method static synthetic lambda$getCollectionParents$0(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/toStringMap$ICustomTabsCallback;->decodeResourcePath(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final addToCollectionParentIndex(Lo/setJailbroken;)V
    .locals 6

    .line 43
    invoke-virtual {p1}, Lo/setRamUsed;->length()I

    move-result v0

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Expected a collection path."

    invoke-static {v0, v5, v4}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage;->collectionParentsCache:Lo/setExecution$onPostMessage;

    invoke-virtual {v0, p1}, Lo/setExecution$onPostMessage;->add(Lo/setJailbroken;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p1}, Lo/setRamUsed;->getLastSegment()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lo/setRamUsed;->popLast()Lo/setRamUsed;

    move-result-object p1

    check-cast p1, Lo/setJailbroken;

    .line 48
    iget-object v4, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 53
    invoke-static {p1}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "INSERT OR REPLACE INTO collection_parents (collection_id, parent) VALUES (?, ?)"

    .line 48
    invoke-virtual {v4, p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final getCollectionParents(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/setJailbroken;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v2, "SELECT parent FROM collection_parents WHERE collection_id = ?"

    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 61
    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p1

    invoke-static {v0}, Lo/setSignal;->lambdaFactory$(Ljava/util/ArrayList;)Lo/from;

    move-result-object v1

    .line 62
    invoke-virtual {p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    return-object v0
.end method
