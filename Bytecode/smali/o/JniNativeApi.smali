.class public abstract Lo/JniNativeApi;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/JniNativeApi$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/deviceFile;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    .line 1961
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lo/updatePriority;->onPostMessage(Ljava/lang/String;II)Lo/updatePriority;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lo/SessionFiles;->onNavigationEvent(Lo/fullLimitUpdateChild;)Lo/SessionFiles;

    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lo/JniNativeApi;->onMessageChannelReady()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object p1

    sget-object v1, Lo/SessionFiles$onPostMessage;->asBinder:Lo/SessionFiles$onPostMessage;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Lcom/squareup/moshi/JsonDataException;

    const-string v0, "JSON document was not fully consumed."

    invoke-direct {p1, v0}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public abstract onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SessionFiles;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 58
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    .line 2053
    :try_start_0
    invoke-static {v0}, Lo/deviceFile;->onMessageChannelReady(Lo/filtersNodes;)Lo/deviceFile;

    move-result-object v1

    .line 2054
    invoke-virtual {p0, v1, p1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    invoke-virtual {v0}, Lo/updatePriority;->warmup()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 62
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
