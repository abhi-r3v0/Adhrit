.class public Lo/getStartedAt;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final changes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setContents;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lo/getStartedAt;->changes:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public addChange(Lo/setContents;)V
    .locals 5

    .line 35
    invoke-virtual {p1}, Lo/setContents;->getDocument()Lo/setDiskUsed;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lo/getStartedAt;->changes:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setContents;

    if-nez v1, :cond_0

    .line 38
    iget-object v1, p0, Lo/getStartedAt;->changes:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 42
    :cond_0
    invoke-virtual {v1}, Lo/setContents;->getType()Lo/setContents$onPostMessage;

    move-result-object v2

    .line 43
    invoke-virtual {p1}, Lo/setContents;->getType()Lo/setContents$onPostMessage;

    move-result-object v3

    .line 44
    sget-object v4, Lo/setContents$onPostMessage;->ADDED:Lo/setContents$onPostMessage;

    if-eq v3, v4, :cond_1

    sget-object v4, Lo/setContents$onPostMessage;->METADATA:Lo/setContents$onPostMessage;

    if-ne v2, v4, :cond_1

    .line 45
    iget-object v1, p0, Lo/getStartedAt;->changes:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 46
    :cond_1
    sget-object v4, Lo/setContents$onPostMessage;->METADATA:Lo/setContents$onPostMessage;

    if-ne v3, v4, :cond_2

    sget-object v4, Lo/setContents$onPostMessage;->REMOVED:Lo/setContents$onPostMessage;

    if-eq v2, v4, :cond_2

    .line 47
    invoke-virtual {p1}, Lo/setContents;->getDocument()Lo/setDiskUsed;

    move-result-object p1

    invoke-static {v2, p1}, Lo/setContents;->create(Lo/setContents$onPostMessage;Lo/setDiskUsed;)Lo/setContents;

    move-result-object p1

    .line 48
    iget-object v1, p0, Lo/getStartedAt;->changes:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 49
    :cond_2
    sget-object v4, Lo/setContents$onPostMessage;->MODIFIED:Lo/setContents$onPostMessage;

    if-ne v3, v4, :cond_3

    sget-object v4, Lo/setContents$onPostMessage;->MODIFIED:Lo/setContents$onPostMessage;

    if-ne v2, v4, :cond_3

    .line 50
    sget-object v1, Lo/setContents$onPostMessage;->MODIFIED:Lo/setContents$onPostMessage;

    invoke-virtual {p1}, Lo/setContents;->getDocument()Lo/setDiskUsed;

    move-result-object p1

    invoke-static {v1, p1}, Lo/setContents;->create(Lo/setContents$onPostMessage;Lo/setDiskUsed;)Lo/setContents;

    move-result-object p1

    .line 51
    iget-object v1, p0, Lo/getStartedAt;->changes:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 52
    :cond_3
    sget-object v4, Lo/setContents$onPostMessage;->MODIFIED:Lo/setContents$onPostMessage;

    if-ne v3, v4, :cond_4

    sget-object v4, Lo/setContents$onPostMessage;->ADDED:Lo/setContents$onPostMessage;

    if-ne v2, v4, :cond_4

    .line 53
    sget-object v1, Lo/setContents$onPostMessage;->ADDED:Lo/setContents$onPostMessage;

    invoke-virtual {p1}, Lo/setContents;->getDocument()Lo/setDiskUsed;

    move-result-object p1

    invoke-static {v1, p1}, Lo/setContents;->create(Lo/setContents$onPostMessage;Lo/setDiskUsed;)Lo/setContents;

    move-result-object p1

    .line 54
    iget-object v1, p0, Lo/getStartedAt;->changes:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 55
    :cond_4
    sget-object v4, Lo/setContents$onPostMessage;->REMOVED:Lo/setContents$onPostMessage;

    if-ne v3, v4, :cond_5

    sget-object v4, Lo/setContents$onPostMessage;->ADDED:Lo/setContents$onPostMessage;

    if-ne v2, v4, :cond_5

    .line 56
    iget-object p1, p0, Lo/getStartedAt;->changes:Ljava/util/TreeMap;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 57
    :cond_5
    sget-object v4, Lo/setContents$onPostMessage;->REMOVED:Lo/setContents$onPostMessage;

    if-ne v3, v4, :cond_6

    sget-object v4, Lo/setContents$onPostMessage;->MODIFIED:Lo/setContents$onPostMessage;

    if-ne v2, v4, :cond_6

    .line 58
    sget-object p1, Lo/setContents$onPostMessage;->REMOVED:Lo/setContents$onPostMessage;

    invoke-virtual {v1}, Lo/setContents;->getDocument()Lo/setDiskUsed;

    move-result-object v1

    invoke-static {p1, v1}, Lo/setContents;->create(Lo/setContents$onPostMessage;Lo/setDiskUsed;)Lo/setContents;

    move-result-object p1

    .line 59
    iget-object v1, p0, Lo/getStartedAt;->changes:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 60
    :cond_6
    sget-object v1, Lo/setContents$onPostMessage;->ADDED:Lo/setContents$onPostMessage;

    if-ne v3, v1, :cond_7

    sget-object v1, Lo/setContents$onPostMessage;->REMOVED:Lo/setContents$onPostMessage;

    if-ne v2, v1, :cond_7

    .line 61
    sget-object v1, Lo/setContents$onPostMessage;->MODIFIED:Lo/setContents$onPostMessage;

    invoke-virtual {p1}, Lo/setContents;->getDocument()Lo/setDiskUsed;

    move-result-object p1

    invoke-static {v1, p1}, Lo/setContents;->create(Lo/setContents$onPostMessage;Lo/setDiskUsed;)Lo/setContents;

    move-result-object p1

    .line 62
    iget-object v1, p0, Lo/getStartedAt;->changes:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, p1, v0

    const/4 v0, 0x1

    aput-object v2, p1, v0

    const-string v0, "Unsupported combination of changes %s after %s"

    .line 71
    invoke-static {v0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method getChanges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/setContents;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/getStartedAt;->changes:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
