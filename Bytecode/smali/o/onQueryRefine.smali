.class public Lo/onQueryRefine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/updateSearchAutoComplete;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onQueryRefine$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/updateSearchAutoComplete<",
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
        "\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0010\u0018\u0000 \u001e*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u001eBW\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u000e\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001dH\u0016R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/domain/FilePersistenceStrategy;",
        "T",
        "",
        "Lcom/datadog/android/core/internal/domain/PersistenceStrategy;",
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
        "(Ljava/io/File;Lcom/datadog/android/core/internal/domain/Serializer;JJIJJLcom/datadog/android/core/internal/domain/PayloadDecoration;)V",
        "fileOrchestrator",
        "Lcom/datadog/android/core/internal/data/file/FileOrchestrator;",
        "fileReader",
        "Lcom/datadog/android/core/internal/data/file/FileReader;",
        "fileWriter",
        "Lcom/datadog/android/core/internal/data/file/ImmediateFileWriter;",
        "getFileWriter",
        "()Lcom/datadog/android/core/internal/data/file/ImmediateFileWriter;",
        "getReader",
        "Lcom/datadog/android/core/internal/data/Reader;",
        "getWriter",
        "Lcom/datadog/android/core/internal/data/Writer;",
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


# instance fields
.field private final extraCallback:Lo/updateSubmitArea;

.field private final onMessageChannelReady:Lo/onItemHoverEnter$extraCallback;

.field final onNavigationEvent:Lo/isSubmitAreaEnabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isSubmitAreaEnabled<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Lo/onSubmitQuery;JJIJJLo/dismissSuggestions;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lo/onSubmitQuery<",
            "TT;>;JJIJJ",
            "Lo/dismissSuggestions;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p12

    const-string v1, "dataDirectory"

    invoke-static {v12, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "serializer"

    invoke-static {v13, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "payloadDecoration"

    invoke-static {v14, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v15, Lo/updateSubmitArea;

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-direct/range {v1 .. v11}, Lo/updateSubmitArea;-><init>(Ljava/io/File;JJIJJ)V

    iput-object v15, v0, Lo/onQueryRefine;->extraCallback:Lo/updateSubmitArea;

    .line 36
    new-instance v1, Lo/onItemHoverEnter$extraCallback;

    .line 37
    check-cast v15, Lo/getPreferredHeight;

    .line 1010
    iget-object v2, v14, Lo/dismissSuggestions;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 1011
    iget-object v3, v14, Lo/dismissSuggestions;->extraCallback:Ljava/lang/CharSequence;

    .line 36
    invoke-direct {v1, v15, v12, v2, v3}, Lo/onItemHoverEnter$extraCallback;-><init>(Lo/getPreferredHeight;Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lo/onQueryRefine;->onMessageChannelReady:Lo/onItemHoverEnter$extraCallback;

    .line 45
    new-instance v1, Lo/isSubmitAreaEnabled;

    .line 46
    iget-object v2, v0, Lo/onQueryRefine;->extraCallback:Lo/updateSubmitArea;

    check-cast v2, Lo/getPreferredHeight;

    .line 1012
    iget-object v3, v14, Lo/dismissSuggestions;->onMessageChannelReady:Ljava/lang/CharSequence;

    .line 45
    invoke-direct {v1, v2, v13, v3}, Lo/isSubmitAreaEnabled;-><init>(Lo/getPreferredHeight;Lo/onSubmitQuery;Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lo/onQueryRefine;->onNavigationEvent:Lo/isSubmitAreaEnabled;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/getChildBoundsWithinSearchView;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/onQueryRefine;->onMessageChannelReady:Lo/onItemHoverEnter$extraCallback;

    check-cast v0, Lo/getChildBoundsWithinSearchView;

    return-object v0
.end method

.method public onPostMessage()Lo/getPreferredWidth;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getPreferredWidth<",
            "TT;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lo/onQueryRefine;->onNavigationEvent:Lo/isSubmitAreaEnabled;

    check-cast v0, Lo/getPreferredWidth;

    return-object v0
.end method
