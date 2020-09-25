.class public final Lo/isSubmitAreaEnabled;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPreferredWidth;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isSubmitAreaEnabled$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getPreferredWidth<",
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
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u001b*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u001bB%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0015\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010\u0010J\u0015\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010\u0011\u001a\u00020\u000e2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000cH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/data/file/ImmediateFileWriter;",
        "T",
        "",
        "Lcom/datadog/android/core/internal/data/Writer;",
        "fileOrchestrator",
        "Lcom/datadog/android/core/internal/data/Orchestrator;",
        "serializer",
        "Lcom/datadog/android/core/internal/domain/Serializer;",
        "separator",
        "",
        "(Lcom/datadog/android/core/internal/data/Orchestrator;Lcom/datadog/android/core/internal/domain/Serializer;Ljava/lang/CharSequence;)V",
        "separatorBytes",
        "",
        "consume",
        "",
        "model",
        "(Ljava/lang/Object;)V",
        "write",
        "models",
        "",
        "writeData",
        "data",
        "",
        "writeDataToFile",
        "file",
        "Ljava/io/File;",
        "dataAsByteArray",
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
.field private final ICustomTabsCallback:Lo/getPreferredHeight;

.field private final extraCallback:Lo/onSubmitQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onSubmitQuery<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:[B


# direct methods
.method public constructor <init>(Lo/getPreferredHeight;Lo/onSubmitQuery;Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getPreferredHeight;",
            "Lo/onSubmitQuery<",
            "TT;>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    const-string v0, "fileOrchestrator"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serializer"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "separator"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/isSubmitAreaEnabled;->ICustomTabsCallback:Lo/getPreferredHeight;

    iput-object p2, p0, Lo/isSubmitAreaEnabled;->extraCallback:Lo/onSubmitQuery;

    .line 26
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lo/applyOperationToSyncPoints;->onPostMessage:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/isSubmitAreaEnabled;->onMessageChannelReady:[B

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final onNavigationEvent(Ljava/io/File;[B)V
    .locals 6

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 77
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object p1, v2

    check-cast p1, Ljava/io/FileOutputStream;

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 79
    iget-object v0, p0, Lo/isSubmitAreaEnabled;->onMessageChannelReady:[B

    invoke-static {v0, p2}, Lo/isStopped;->onPostMessage([B[B)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 83
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 77
    invoke-static {v2, p1}, Lo/extraCallback;->onNavigationEvent(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v2, p1}, Lo/extraCallback;->onNavigationEvent(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lo/isSubmitAreaEnabled;->extraCallback:Lo/onSubmitQuery;

    invoke-interface {v0, p1}, Lo/onSubmitQuery;->onPostMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1047
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/high16 v3, 0x40000

    if-lt v0, v3, :cond_0

    .line 1048
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Unable to persist data, serialized size is too big\n"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2, v2, v1}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;I)V

    return-void

    .line 1050
    :cond_0
    monitor-enter p0

    const/4 v0, 0x4

    .line 1059
    :try_start_0
    sget-object v3, Lo/applyOperationToSyncPoints;->onPostMessage:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v3, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1060
    iget-object v3, p0, Lo/isSubmitAreaEnabled;->ICustomTabsCallback:Lo/getPreferredHeight;

    array-length v4, p1

    invoke-interface {v3, v4}, Lo/getPreferredHeight;->onPostMessage(I)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1062
    :try_start_1
    invoke-direct {p0, v3, p1}, Lo/isSubmitAreaEnabled;->onNavigationEvent(Ljava/io/File;[B)V

    goto/16 :goto_6

    .line 1064
    :cond_1
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object p1

    const-string v4, "Could not get a valid file"

    invoke-static {p1, v4, v2, v2, v1}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_4

    .line 1059
    :cond_2
    :try_start_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_3
    move-exception p1

    move-object v3, v2

    .line 1071
    :goto_0
    :try_start_3
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t access file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, v3, p1, v2, v0}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;I)V

    goto :goto_6

    :catch_4
    move-exception p1

    move-object v3, v2

    .line 1069
    :goto_2
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t write data to file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v2

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, v3, p1, v2, v0}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;I)V

    goto :goto_6

    :catch_5
    move-exception p1

    move-object v3, v2

    .line 1067
    :goto_4
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t create an output stream to file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5
    move-object v3, v2

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, v3, p1, v2, v0}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;I)V

    .line 1052
    :goto_6
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1050
    monitor-exit p0

    return-void

    :goto_7
    monitor-exit p0

    throw p1
.end method
