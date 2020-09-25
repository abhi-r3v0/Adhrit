.class public final Lo/setThreshold;
.super Lo/onSuggestionsKey;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setThreshold$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/onSuggestionsKey<",
        "Lo/onSuggestionClick;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB?\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/datadog/android/log/internal/domain/LogFileStrategy;",
        "Lcom/datadog/android/core/internal/domain/AsyncWriterFilePersistenceStrategy;",
        "Lcom/datadog/android/log/internal/domain/Log;",
        "context",
        "Landroid/content/Context;",
        "recentDelayMs",
        "",
        "maxBatchSize",
        "maxLogPerBatch",
        "",
        "oldFileThreshold",
        "maxDiskSpace",
        "(Landroid/content/Context;JJIJJ)V",
        "Companion",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 11

    const-wide/16 v2, 0x1388

    const-wide/32 v4, 0x400000

    const/16 v6, 0x1f4

    const-wide/32 v7, 0x3dcc500

    const-wide/32 v9, 0x20000000

    move-object v0, p0

    move-object v1, p1

    .line 20
    invoke-direct/range {v0 .. v10}, Lo/setThreshold;-><init>(Landroid/content/Context;JJIJJ)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JJIJJ)V
    .locals 16

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "dd-logs-v1"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lo/setSearchView;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lo/setSearchView;-><init>(B)V

    move-object v3, v0

    check-cast v3, Lo/onSubmitQuery;

    .line 29
    sget-object v0, Lo/dismissSuggestions;->onPostMessage:Lo/dismissSuggestions$onPostMessage;

    .line 1016
    invoke-static {}, Lo/dismissSuggestions;->extraCallback()Lo/dismissSuggestions;

    move-result-object v13

    .line 31
    new-instance v0, Lo/onSuggestionSelect;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v4, "context.filesDir"

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/onSuggestionSelect;-><init>(Ljava/io/File;)V

    move-object v15, v0

    check-cast v15, Lo/updateViewsVisibility;

    const-wide/16 v4, 0x1388

    const-wide/32 v6, 0x400000

    const/16 v8, 0x1f4

    const-wide/32 v9, 0x3dcc500

    const-wide/32 v11, 0x20000000

    const-string v14, "ddog_logs_writer"

    move-object/from16 v1, p0

    .line 21
    invoke-direct/range {v1 .. v15}, Lo/onSuggestionsKey;-><init>(Ljava/io/File;Lo/onSubmitQuery;JJIJJLo/dismissSuggestions;Ljava/lang/String;Lo/updateViewsVisibility;)V

    return-void
.end method
