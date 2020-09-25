.class public abstract Lo/updateVoiceButton;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onCloseClicked;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/updateVoiceButton$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008 \u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0014\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0003H\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/net/DataOkHttpUploader;",
        "Lcom/datadog/android/core/internal/net/DataUploader;",
        "url",
        "",
        "client",
        "Lokhttp3/OkHttpClient;",
        "contentType",
        "(Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/lang/String;)V",
        "getContentType$dd_sdk_android_release",
        "()Ljava/lang/String;",
        "userAgent",
        "buildRequest",
        "Lokhttp3/Request;",
        "data",
        "",
        "headers",
        "",
        "responseCodeToUploadStatus",
        "Lcom/datadog/android/core/internal/net/UploadStatus;",
        "code",
        "",
        "setEndpoint",
        "",
        "endpoint",
        "upload",
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
.field private ICustomTabsCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Lo/propertyName;

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lo/propertyName;)V
    .locals 1

    const-string v0, "application/json"

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lo/updateVoiceButton;-><init>(Ljava/lang/String;Lo/propertyName;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/propertyName;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/updateVoiceButton;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/updateVoiceButton;->onNavigationEvent:Lo/propertyName;

    iput-object p3, p0, Lo/updateVoiceButton;->onMessageChannelReady:Ljava/lang/String;

    const-string p1, "http.agent"

    .line 58
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Datadog/1.4.3 (Linux; U; Android "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Build/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    :cond_2
    iput-object p1, p0, Lo/updateVoiceButton;->onPostMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady([B)Lo/onVoiceClicked;
    .locals 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1069
    :try_start_0
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending data to POST "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/updateVoiceButton;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/onQueryTextChange;->onPostMessage(Lo/onQueryTextChange;Ljava/lang/String;)V

    .line 1070
    new-instance v1, Lo/isCompleteForChild$ICustomTabsCallback;

    invoke-direct {v1}, Lo/isCompleteForChild$ICustomTabsCallback;-><init>()V

    .line 1071
    iget-object v2, p0, Lo/updateVoiceButton;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;)Lo/isCompleteForChild$ICustomTabsCallback;

    move-result-object v1

    .line 1072
    invoke-static {v0, p1}, Lo/isCompleteForPath;->ICustomTabsCallback(Lo/isFiltered;[B)Lo/isCompleteForPath;

    move-result-object p1

    const-string v2, "POST"

    .line 1232
    invoke-virtual {v1, v2, p1}, Lo/isCompleteForChild$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Lo/isCompleteForPath;)Lo/isCompleteForChild$ICustomTabsCallback;

    move-result-object p1

    const/4 v1, 0x2

    new-array v2, v1, [Lo/addWrite;

    const-string v3, "User-Agent"

    .line 2053
    iget-object v4, p0, Lo/updateVoiceButton;->onPostMessage:Ljava/lang/String;

    .line 3043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const/4 v4, 0x1

    const-string v5, "Content-Type"

    .line 2054
    iget-object v6, p0, Lo/updateVoiceButton;->onMessageChannelReady:Ljava/lang/String;

    .line 4043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v5, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v2, v4

    const-string v4, "pairs"

    .line 2052
    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4088
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object v1, v4

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    check-cast v4, Ljava/util/Map;

    .line 1105
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1074
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4196
    iget-object v6, p1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    .line 4311
    invoke-static {v4}, Lo/shouldIncludeField;->extraCallback(Ljava/lang/String;)V

    .line 4312
    invoke-static {v5, v4}, Lo/shouldIncludeField;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 4362
    iget-object v7, v6, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4363
    iget-object v4, v6, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DataOkHttpUploader: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lo/onQueryTextChange;->onPostMessage(Lo/onQueryTextChange;Ljava/lang/String;)V

    goto :goto_0

    .line 5292
    :cond_0
    iget-object v1, p1, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    if-eqz v1, :cond_b

    .line 5293
    new-instance v1, Lo/isCompleteForChild;

    invoke-direct {v1, p1}, Lo/isCompleteForChild;-><init>(Lo/isCompleteForChild$ICustomTabsCallback;)V

    const-string p1, "builder.build()"

    .line 1077
    invoke-static {v1, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lo/updateVoiceButton;->onNavigationEvent:Lo/propertyName;

    .line 5427
    invoke-static {p1, v1, v3}, Lo/getIndexedNode;->extraCallback(Lo/propertyName;Lo/isCompleteForChild;Z)Lo/getIndexedNode;

    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lo/convertInteger;)Lo/childAddedChange;

    move-result-object p1

    .line 35
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object v1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6098
    iget v3, p1, Lo/childAddedChange;->onNavigationEvent:I

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "body:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6177
    iget-object v4, p1, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    if-eqz v4, :cond_1

    .line 37
    invoke-virtual {v4}, Lo/getChildKey;->extraCallback()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "headers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7136
    iget-object v3, p1, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Lo/onQueryTextChange;->onNavigationEvent(Lo/onQueryTextChange;Ljava/lang/String;)V

    .line 8098
    iget p1, p1, Lo/childAddedChange;->onNavigationEvent:I

    const/16 v1, 0x193

    if-ne p1, v1, :cond_2

    .line 9082
    sget-object p1, Lo/onVoiceClicked;->ICustomTabsCallback:Lo/onVoiceClicked;

    goto :goto_6

    :cond_2
    const/16 v1, 0x12b

    const/16 v2, 0xc8

    if-le v2, p1, :cond_3

    goto :goto_2

    :cond_3
    if-lt v1, p1, :cond_4

    .line 9083
    sget-object p1, Lo/onVoiceClicked;->onNavigationEvent:Lo/onVoiceClicked;

    goto :goto_6

    :cond_4
    :goto_2
    const/16 v1, 0x18f

    const/16 v2, 0x12c

    if-le v2, p1, :cond_5

    goto :goto_3

    :cond_5
    if-lt v1, p1, :cond_6

    .line 9084
    sget-object p1, Lo/onVoiceClicked;->extraCallback:Lo/onVoiceClicked;

    goto :goto_6

    :cond_6
    :goto_3
    const/16 v1, 0x1f3

    const/16 v2, 0x190

    if-le v2, p1, :cond_7

    goto :goto_4

    :cond_7
    if-lt v1, p1, :cond_8

    .line 9085
    sget-object p1, Lo/onVoiceClicked;->onMessageChannelReady:Lo/onVoiceClicked;

    goto :goto_6

    :cond_8
    :goto_4
    const/16 v1, 0x257

    const/16 v2, 0x1f4

    if-le v2, p1, :cond_9

    goto :goto_5

    :cond_9
    if-lt v1, p1, :cond_a

    .line 9086
    sget-object p1, Lo/onVoiceClicked;->asInterface:Lo/onVoiceClicked;

    goto :goto_6

    .line 9087
    :cond_a
    :goto_5
    sget-object p1, Lo/onVoiceClicked;->onTransact:Lo/onVoiceClicked;

    goto :goto_6

    .line 5292
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 42
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object v1

    const/4 v2, 0x4

    const-string/jumbo v3, "unable to upload data"

    invoke-static {v1, v3, p1, v0, v2}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;I)V

    .line 43
    sget-object p1, Lo/onVoiceClicked;->onPostMessage:Lo/onVoiceClicked;

    :goto_6
    return-object p1
.end method
