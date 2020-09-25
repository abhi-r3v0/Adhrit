.class public final Lo/hasSubMenu;
.super Lo/onSuggestionsKey;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hasSubMenu$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/onSuggestionsKey<",
        "Lo/overwriteServerCache;",
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015Ba\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/datadog/android/tracing/internal/domain/TracingFileStrategy;",
        "Lcom/datadog/android/core/internal/domain/AsyncWriterFilePersistenceStrategy;",
        "Ldatadog/opentracing/DDSpan;",
        "context",
        "Landroid/content/Context;",
        "timeProvider",
        "Lcom/datadog/android/core/internal/time/TimeProvider;",
        "networkInfoProvider",
        "Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;",
        "userInfoProvider",
        "Lcom/datadog/android/log/internal/user/UserInfoProvider;",
        "recentDelayMs",
        "",
        "maxBatchSize",
        "maxLogPerBatch",
        "",
        "oldFileThreshold",
        "maxDiskSpace",
        "envName",
        "",
        "(Landroid/content/Context;Lcom/datadog/android/core/internal/time/TimeProvider;Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;Lcom/datadog/android/log/internal/user/UserInfoProvider;JJIJJLjava/lang/String;)V",
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
.method private constructor <init>(Landroid/content/Context;Lo/SearchView$OnCloseListener;Lo/onActionViewExpanded;Lo/showSoftInputIfNecessary;JJIJJLjava/lang/String;)V
    .locals 13

    move-object v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p14

    const-string v4, "context"

    move-object v5, p1

    invoke-static {p1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "timeProvider"

    invoke-static {p2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "networkInfoProvider"

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "userInfoProvider"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "envName"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "dd-tracing-v1"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    new-instance v5, Lo/onPrepareSubMenu;

    invoke-direct {v5, p2, v1, v2, v3}, Lo/onPrepareSubMenu;-><init>(Lo/SearchView$OnCloseListener;Lo/onActionViewExpanded;Lo/showSoftInputIfNecessary;Ljava/lang/String;)V

    move-object v0, v5

    check-cast v0, Lo/onSubmitQuery;

    .line 31
    sget-object v1, Lo/dismissSuggestions;->onPostMessage:Lo/dismissSuggestions$onPostMessage;

    .line 1017
    invoke-static {}, Lo/dismissSuggestions;->onMessageChannelReady()Lo/dismissSuggestions;

    move-result-object v1

    const-wide/16 v2, 0x1388

    const-wide/32 v5, 0x400000

    const/16 v7, 0x1f4

    const-wide/32 v8, 0x3dcc500

    const-wide/32 v10, 0x20000000

    const-string v12, "ddog_traces_writer"

    move-object p1, p0

    move-object p2, v4

    move-object/from16 p3, v0

    move-wide/from16 p4, v2

    move-wide/from16 p6, v5

    move/from16 p8, v7

    move-wide/from16 p9, v8

    move-wide/from16 p11, v10

    move-object/from16 p13, v1

    move-object/from16 p14, v12

    .line 23
    invoke-direct/range {p1 .. p14}, Lo/onSuggestionsKey;-><init>(Ljava/io/File;Lo/onSubmitQuery;JJIJJLo/dismissSuggestions;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lo/SearchView$OnCloseListener;Lo/onActionViewExpanded;Lo/showSoftInputIfNecessary;Ljava/lang/String;)V
    .locals 15

    const-wide/16 v5, 0x1388

    const-wide/32 v7, 0x400000

    const/16 v9, 0x1f4

    const-wide/32 v10, 0x3dcc500

    const-wide/32 v12, 0x20000000

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v14, p5

    .line 22
    invoke-direct/range {v0 .. v14}, Lo/hasSubMenu;-><init>(Landroid/content/Context;Lo/SearchView$OnCloseListener;Lo/onActionViewExpanded;Lo/showSoftInputIfNecessary;JJIJJLjava/lang/String;)V

    return-void
.end method
