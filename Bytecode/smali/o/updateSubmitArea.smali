.class public final Lo/updateSubmitArea;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPreferredHeight;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000bJ\u001e\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00172\u0006\u0010\u0018\u001a\u00020\u0008H\u0002J\u0016\u0010\u0019\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0017H\u0002J\u0015\u0010\u001a\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u001bH\u0016\u00a2\u0006\u0002\u0010\u001cJ\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00032\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fH\u0016J\u0012\u0010!\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0018\u001a\u00020\u0008H\u0016J\u0018\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0008\u0010$\u001a\u00020\u0003H\u0002R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/data/file/FileOrchestrator;",
        "Lcom/datadog/android/core/internal/data/Orchestrator;",
        "rootDirectory",
        "Ljava/io/File;",
        "recentDelayMs",
        "",
        "maxBatchSize",
        "maxLogPerBatch",
        "",
        "oldFileThreshold",
        "maxDiskSpace",
        "(Ljava/io/File;JJIJJ)V",
        "fileFilter",
        "Ljava/io/FileFilter;",
        "isRootValid",
        "",
        "previousFile",
        "previousFileLogCount",
        "recentReadDelayMs",
        "recentWriteDelayMs",
        "deleteBigFiles",
        "",
        "files",
        "",
        "itemSize",
        "deleteObsoleteFiles",
        "getAllFiles",
        "",
        "()[Ljava/io/File;",
        "getReadableFile",
        "excludeFileNames",
        "",
        "",
        "getWritableFile",
        "isFileRecent",
        "file",
        "newFile",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/io/File;

.field private final ICustomTabsCallback$Stub:Ljava/io/File;

.field private final ICustomTabsService:J

.field private final asBinder:I

.field private final asInterface:J

.field private extraCallback:I

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Ljava/io/FileFilter;

.field private final onPostMessage:J

.field private final onRelationshipValidationResult:J

.field private final onTransact:J


# direct methods
.method public constructor <init>(Ljava/io/File;JJIJJ)V
    .locals 1

    const-string/jumbo v0, "rootDirectory"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/updateSubmitArea;->ICustomTabsCallback$Stub:Ljava/io/File;

    iput-wide p4, p0, Lo/updateSubmitArea;->onTransact:J

    iput p6, p0, Lo/updateSubmitArea;->asBinder:I

    iput-wide p7, p0, Lo/updateSubmitArea;->asInterface:J

    iput-wide p9, p0, Lo/updateSubmitArea;->ICustomTabsService:J

    .line 23
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 24
    iget-object p1, p0, Lo/updateSubmitArea;->ICustomTabsCallback$Stub:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lo/updateSubmitArea;->ICustomTabsCallback$Stub:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    .line 23
    :goto_0
    iput-boolean p1, p0, Lo/updateSubmitArea;->onMessageChannelReady:Z

    .line 30
    new-instance p1, Lo/hasVoiceSearch;

    invoke-direct {p1}, Lo/hasVoiceSearch;-><init>()V

    check-cast p1, Ljava/io/FileFilter;

    iput-object p1, p0, Lo/updateSubmitArea;->onNavigationEvent:Ljava/io/FileFilter;

    const-wide/16 p4, 0x14

    .line 37
    div-long p4, p2, p4

    sub-long p6, p2, p4

    iput-wide p6, p0, Lo/updateSubmitArea;->onPostMessage:J

    add-long/2addr p2, p4

    .line 38
    iput-wide p2, p0, Lo/updateSubmitArea;->onRelationshipValidationResult:J

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/util/Set;)Ljava/io/File;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "excludeFileNames"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-boolean v0, p0, Lo/updateSubmitArea;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 84
    :cond_0
    iget-object v0, p0, Lo/updateSubmitArea;->ICustomTabsCallback$Stub:Ljava/io/File;

    iget-object v2, p0, Lo/updateSubmitArea;->onNavigationEvent:Ljava/io/FileFilter;

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/io/File;

    .line 163
    :cond_1
    check-cast v0, [Ljava/lang/Comparable;

    const-string v3, "$this$sorted"

    .line 84
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12553
    invoke-static {v0}, Lo/isStopped;->extraCallback([Ljava/lang/Comparable;)[Ljava/lang/Comparable;

    move-result-object v0

    const-string v3, "$this$asList"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "ArraysUtilJVM.asList(this)"

    .line 13129
    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lo/updateSubmitArea;->asInterface:J

    sub-long/2addr v3, v5

    .line 14127
    check-cast v0, Ljava/lang/Iterable;

    const-string v5, "$this$asSequence"

    .line 14128
    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14553
    new-instance v5, Lo/getSessionPersistenceKey$onMessageChannelReady;

    invoke-direct {v5, v0}, Lo/getSessionPersistenceKey$onMessageChannelReady;-><init>(Ljava/lang/Iterable;)V

    check-cast v5, Lo/applyTaggedRangeMerges;

    .line 14129
    new-instance v6, Lo/updateSubmitArea$onPostMessage;

    invoke-direct {v6, v3, v4}, Lo/updateSubmitArea$onPostMessage;-><init>(J)V

    check-cast v6, Lo/onDisconnectSetValue;

    const-string v3, "$this$filter"

    invoke-static {v5, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "predicate"

    invoke-static {v6, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15382
    new-instance v3, Lo/applyServerMerge;

    invoke-direct {v3, v5, v6}, Lo/applyServerMerge;-><init>(Lo/applyTaggedRangeMerges;Lo/onDisconnectSetValue;)V

    check-cast v3, Lo/applyTaggedRangeMerges;

    .line 14167
    invoke-interface {v3}, Lo/applyTaggedRangeMerges;->ICustomTabsCallback()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 14130
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 164
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/io/File;

    const-string v6, "it"

    .line 89
    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    goto :goto_2

    :cond_5
    move-object v3, v1

    .line 88
    :goto_2
    check-cast v3, Ljava/io/File;

    if-nez v3, :cond_6

    return-object v1

    .line 95
    :cond_6
    iget-wide v5, p0, Lo/updateSubmitArea;->onRelationshipValidationResult:J

    .line 16120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 16121
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file.name"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v7, v5

    cmp-long p1, v9, v7

    if-ltz p1, :cond_7

    const/4 v2, 0x1

    :cond_7
    if-eqz v2, :cond_8

    return-object v1

    :cond_8
    return-object v3
.end method

.method public final onPostMessage(I)Ljava/io/File;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 44
    iget-boolean v0, p0, Lo/updateSubmitArea;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 48
    :cond_0
    iget-object v0, p0, Lo/updateSubmitArea;->ICustomTabsCallback$Stub:Ljava/io/File;

    iget-object v2, p0, Lo/updateSubmitArea;->onNavigationEvent:Ljava/io/FileFilter;

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/io/File;

    .line 162
    :cond_1
    check-cast v0, [Ljava/lang/Comparable;

    const-string v3, "$this$sorted"

    .line 48
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6553
    invoke-static {v0}, Lo/isStopped;->extraCallback([Ljava/lang/Comparable;)[Ljava/lang/Comparable;

    move-result-object v0

    const-string v3, "$this$asList"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "ArraysUtilJVM.asList(this)"

    .line 7129
    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8134
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .line 8170
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 8135
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    goto :goto_0

    .line 8137
    :cond_2
    iget-wide v9, p0, Lo/updateSubmitArea;->ICustomTabsService:J

    sub-long v9, v7, v9

    cmp-long v4, v9, v5

    if-lez v4, :cond_4

    .line 8139
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object v4

    .line 8140
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Too much disk space used ("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lo/updateSubmitArea;->ICustomTabsService:J

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "): cleaning up to free "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8141
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bytes\u2026"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 8139
    invoke-static {v4, v7}, Lo/onQueryTextChange;->extraCallback(Lo/onQueryTextChange;Ljava/lang/String;)V

    const-string v4, "$this$asSequence"

    .line 8143
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8553
    new-instance v4, Lo/getSessionPersistenceKey$onMessageChannelReady;

    invoke-direct {v4, v3}, Lo/getSessionPersistenceKey$onMessageChannelReady;-><init>(Ljava/lang/Iterable;)V

    check-cast v4, Lo/applyTaggedRangeMerges;

    .line 8173
    invoke-interface {v4}, Lo/applyTaggedRangeMerges;->ICustomTabsCallback()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    cmp-long v7, v9, v5

    if-lez v7, :cond_3

    .line 8146
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 8147
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_3

    sub-long/2addr v9, v7

    goto :goto_1

    :cond_4
    const-string v3, "$this$lastOrNull"

    .line 52
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9453
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 52
    :goto_2
    check-cast v1, Ljava/io/File;

    .line 53
    iget-object v0, p0, Lo/updateSubmitArea;->ICustomTabsCallback:Ljava/io/File;

    .line 54
    iget v3, p0, Lo/updateSubmitArea;->extraCallback:I

    if-eqz v1, :cond_a

    .line 61
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    int-to-long v7, p1

    add-long/2addr v5, v7

    .line 63
    iget-wide v7, p0, Lo/updateSubmitArea;->onTransact:J

    cmp-long p1, v5, v7

    if-gez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    .line 64
    :goto_3
    iget-wide v5, p0, Lo/updateSubmitArea;->onPostMessage:J

    .line 10120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 10121
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v9, "file.name"

    invoke-static {v0, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v7, v5

    cmp-long v0, v9, v7

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    .line 65
    :goto_4
    iget v5, p0, Lo/updateSubmitArea;->asBinder:I

    if-ge v3, v5, :cond_8

    const/4 v2, 0x1

    :cond_8
    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    add-int/2addr v3, v4

    .line 68
    iput v3, p0, Lo/updateSubmitArea;->extraCallback:I

    return-object v1

    .line 11112
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 11113
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/updateSubmitArea;->ICustomTabsCallback$Stub:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11114
    iput-object v0, p0, Lo/updateSubmitArea;->ICustomTabsCallback:Ljava/io/File;

    .line 11115
    iput v4, p0, Lo/updateSubmitArea;->extraCallback:I

    return-object v0

    .line 12112
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 12113
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/updateSubmitArea;->ICustomTabsCallback$Stub:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12114
    iput-object v0, p0, Lo/updateSubmitArea;->ICustomTabsCallback:Ljava/io/File;

    .line 12115
    iput v4, p0, Lo/updateSubmitArea;->extraCallback:I

    return-object v0
.end method
