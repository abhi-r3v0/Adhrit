.class public final Lcom/datadog/android/core/internal/data/upload/UploadWorker;
.super Landroidx/work/Worker;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/data/upload/UploadWorker;",
        "Landroidx/work/Worker;",
        "appContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "consumeBatch",
        "",
        "batch",
        "Lcom/datadog/android/core/internal/domain/Batch;",
        "uploader",
        "Lcom/datadog/android/core/internal/net/DataUploader;",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "uploadAllBatches",
        "",
        "reader",
        "Lcom/datadog/android/core/internal/data/Reader;",
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
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerParams"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private static ICustomTabsCallback(Lo/getChildBoundsWithinSearchView;Lo/onCloseClicked;)V
    .locals 3

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 64
    :cond_0
    invoke-interface {p0}, Lo/getChildBoundsWithinSearchView;->onPostMessage()Lo/postUpdateFocusedState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 66
    invoke-static {v1, p1}, Lcom/datadog/android/core/internal/data/upload/UploadWorker;->extraCallback(Lo/postUpdateFocusedState;Lo/onCloseClicked;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3013
    iget-object v2, v1, Lo/postUpdateFocusedState;->ICustomTabsCallback:Ljava/lang/String;

    .line 67
    invoke-interface {p0, v2}, Lo/getChildBoundsWithinSearchView;->onPostMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    if-nez v1, :cond_0

    .line 74
    check-cast v0, Ljava/lang/Iterable;

    .line 101
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/postUpdateFocusedState;

    .line 4013
    iget-object v0, v0, Lo/postUpdateFocusedState;->ICustomTabsCallback:Ljava/lang/String;

    .line 75
    invoke-interface {p0, v0}, Lo/getChildBoundsWithinSearchView;->extraCallback(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static extraCallback(Lo/postUpdateFocusedState;Lo/onCloseClicked;)Z
    .locals 3

    .line 5013
    iget-object v0, p0, Lo/postUpdateFocusedState;->ICustomTabsCallback:Ljava/lang/String;

    .line 88
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UploadWorker: Sending batch "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/onQueryTextChange;->onNavigationEvent(Lo/onQueryTextChange;Ljava/lang/String;)V

    .line 5014
    iget-object p0, p0, Lo/postUpdateFocusedState;->extraCallback:[B

    .line 89
    invoke-interface {p1, p0}, Lo/onCloseClicked;->onMessageChannelReady([B)Lo/onVoiceClicked;

    move-result-object p0

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "uploader.javaClass.simpleName"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo/onVoiceClicked;->onNavigationEvent(Ljava/lang/String;)V

    .line 91
    sget-object p1, Lo/onVoiceClicked;->onNavigationEvent:Lo/onVoiceClicked;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final extraCallback()Landroidx/work/ListenableWorker$ICustomTabsCallback;
    .locals 5

    .line 31
    sget-object v0, Lo/setSuggestionsAdapter;->onMessageChannelReady:Lo/setSuggestionsAdapter;

    invoke-static {}, Lo/setSuggestionsAdapter;->onMessageChannelReady()Z

    move-result v0

    const-string v1, "Result.success()"

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const-string v4, "Datadog has not been initialized.\nPlease add the following code in your application\'s onCreate() method:\nDatadog.initialize(context, \"<CLIENT_TOKEN>\");"

    invoke-static {v0, v4, v3, v3, v2}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;I)V

    .line 1334
    new-instance v0, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;-><init>()V

    .line 33
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 38
    :cond_0
    sget-object v0, Lo/onClose;->asInterface:Lo/onClose;

    invoke-static {}, Lo/onClose;->extraCallback()Lo/updateSearchAutoComplete;

    move-result-object v0

    invoke-interface {v0}, Lo/updateSearchAutoComplete;->onMessageChannelReady()Lo/getChildBoundsWithinSearchView;

    move-result-object v0

    .line 39
    sget-object v2, Lo/onClose;->asInterface:Lo/onClose;

    invoke-static {}, Lo/onClose;->onMessageChannelReady()Lo/onCloseClicked;

    move-result-object v2

    .line 37
    invoke-static {v0, v2}, Lcom/datadog/android/core/internal/data/upload/UploadWorker;->ICustomTabsCallback(Lo/getChildBoundsWithinSearchView;Lo/onCloseClicked;)V

    .line 44
    sget-object v0, Lo/SearchView$OnQueryTextListener;->asInterface:Lo/SearchView$OnQueryTextListener;

    invoke-static {}, Lo/SearchView$OnQueryTextListener;->onMessageChannelReady()Lo/updateSearchAutoComplete;

    move-result-object v0

    invoke-interface {v0}, Lo/updateSearchAutoComplete;->onMessageChannelReady()Lo/getChildBoundsWithinSearchView;

    move-result-object v0

    .line 45
    sget-object v2, Lo/SearchView$OnQueryTextListener;->asInterface:Lo/SearchView$OnQueryTextListener;

    invoke-static {}, Lo/SearchView$OnQueryTextListener;->extraCallback()Lo/onCloseClicked;

    move-result-object v2

    .line 43
    invoke-static {v0, v2}, Lcom/datadog/android/core/internal/data/upload/UploadWorker;->ICustomTabsCallback(Lo/getChildBoundsWithinSearchView;Lo/onCloseClicked;)V

    .line 50
    sget-object v0, Lo/setImeVisibility;->onMessageChannelReady:Lo/setImeVisibility;

    invoke-static {}, Lo/setImeVisibility;->extraCallback()Lo/updateSearchAutoComplete;

    move-result-object v0

    invoke-interface {v0}, Lo/updateSearchAutoComplete;->onMessageChannelReady()Lo/getChildBoundsWithinSearchView;

    move-result-object v0

    .line 51
    sget-object v2, Lo/setImeVisibility;->onMessageChannelReady:Lo/setImeVisibility;

    invoke-static {}, Lo/setImeVisibility;->ICustomTabsCallback()Lo/onCloseClicked;

    move-result-object v2

    .line 49
    invoke-static {v0, v2}, Lcom/datadog/android/core/internal/data/upload/UploadWorker;->ICustomTabsCallback(Lo/getChildBoundsWithinSearchView;Lo/onCloseClicked;)V

    .line 2334
    new-instance v0, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;-><init>()V

    .line 54
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
