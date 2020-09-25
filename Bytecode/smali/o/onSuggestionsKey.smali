.class public abstract Lo/onSuggestionsKey;
.super Lo/onQueryRefine;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/onQueryRefine<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008 \u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003Bk\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0002\u0010\u0015J\u000e\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001dH\u0016R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00178FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/domain/AsyncWriterFilePersistenceStrategy;",
        "T",
        "",
        "Lcom/datadog/android/core/internal/domain/FilePersistenceStrategy;",
        "dataDirectory",
        "Ljava/io/File;",
        "serializer",
        "Lcom/datadog/android/core/internal/domain/Serializer;",
        "recentDelayMs",
        "",
        "maxBatchSize",
        "maxItemsPerBatch",
        "",
        "oldFileThreshold",
        "maxDiskSpace",
        "payloadDecoration",
        "Lcom/datadog/android/core/internal/domain/PayloadDecoration;",
        "writerThreadName",
        "",
        "dataMigrator",
        "Lcom/datadog/android/core/internal/data/DataMigrator;",
        "(Ljava/io/File;Lcom/datadog/android/core/internal/domain/Serializer;JJIJJLcom/datadog/android/core/internal/domain/PayloadDecoration;Ljava/lang/String;Lcom/datadog/android/core/internal/data/DataMigrator;)V",
        "deferredWriter",
        "Lcom/datadog/android/core/internal/data/file/DeferredWriter;",
        "getDeferredWriter",
        "()Lcom/datadog/android/core/internal/data/file/DeferredWriter;",
        "deferredWriter$delegate",
        "Lkotlin/Lazy;",
        "getWriter",
        "Lcom/datadog/android/core/internal/data/Writer;",
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
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:Lo/isSameListener;

.field private final onMessageChannelReady:Lo/updateViewsVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/access$2900;

    const-class v1, Lo/onSuggestionsKey;

    invoke-static {v1}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v1

    const-string v2, "deferredWriter"

    const-string v3, "getDeferredWriter()Lcom/datadog/android/core/internal/data/file/DeferredWriter;"

    invoke-direct {v0, v1, v2, v3}, Lo/access$2900;-><init>(Lo/getQueryViews;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lo/applyEmulatorSettings;->onMessageChannelReady(Lo/getConnectionURL;)Lo/applyServerOverwrite;

    move-result-object v0

    check-cast v0, Lo/applyUserOverwrite;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lo/onSubmitQuery;JJIJJLo/dismissSuggestions;Ljava/lang/String;)V
    .locals 15

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    .line 24
    invoke-direct/range {v0 .. v14}, Lo/onSuggestionsKey;-><init>(Ljava/io/File;Lo/onSubmitQuery;JJIJJLo/dismissSuggestions;Ljava/lang/String;Lo/updateViewsVisibility;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lo/onSubmitQuery;JJIJJLo/dismissSuggestions;Ljava/lang/String;Lo/updateViewsVisibility;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lo/onSubmitQuery<",
            "TT;>;JJIJJ",
            "Lo/dismissSuggestions;",
            "Ljava/lang/String;",
            "Lo/updateViewsVisibility;",
            ")V"
        }
    .end annotation

    const-string v0, "dataDirectory"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serializer"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloadDecoration"

    invoke-static {p12, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "writerThreadName"

    invoke-static {p13, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct/range {p0 .. p12}, Lo/onQueryRefine;-><init>(Ljava/io/File;Lo/onSubmitQuery;JJIJJLo/dismissSuggestions;)V

    iput-object p13, p0, Lo/onSuggestionsKey;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p14, p0, Lo/onSuggestionsKey;->onMessageChannelReady:Lo/updateViewsVisibility;

    .line 36
    new-instance p1, Lo/onSuggestionsKey$onPostMessage;

    invoke-direct {p1, p0}, Lo/onSuggestionsKey$onPostMessage;-><init>(Lo/onSuggestionsKey;)V

    check-cast p1, Lo/getServerTime;

    const-string p2, "initializer"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance p2, Lo/fromChildMerge;

    invoke-direct {p2, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p2, Lo/isSameListener;

    .line 36
    iput-object p2, p0, Lo/onSuggestionsKey;->extraCallback:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/onSuggestionsKey;)Lo/updateViewsVisibility;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/onSuggestionsKey;->onMessageChannelReady:Lo/updateViewsVisibility;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/onSuggestionsKey;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/onSuggestionsKey;->ICustomTabsCallback:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final onPostMessage()Lo/getPreferredWidth;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getPreferredWidth<",
            "TT;>;"
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Lo/onSuggestionsKey;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/updateSubmitButton;

    .line 45
    check-cast v0, Lo/getPreferredWidth;

    return-object v0
.end method
