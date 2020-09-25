.class public final Lo/setRetainInstance;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/willRunPredictiveAnimations;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setRetainInstance$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001d\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00162\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00a2\u0006\u0002\u0010\u0017J\u0008\u0010\u0018\u001a\u00020\u0011H\u0016J\u0008\u0010\u0019\u001a\u00020\u0011H\u0016J+\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00162\u0016\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u001cj\u0008\u0012\u0004\u0012\u00020\u0008`\u001dH\u0002\u00a2\u0006\u0002\u0010\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/stringrepo/FirestoreProvider;",
        "Lcom/dreamplug/stringrepo/providers/StringProvider;",
        "app",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "cache",
        "",
        "",
        "",
        "cohort",
        "getCohort",
        "()Ljava/lang/String;",
        "firebaseApp",
        "Lcom/google/firebase/FirebaseApp;",
        "options",
        "Lcom/google/firebase/FirebaseOptions;",
        "clear",
        "",
        "get",
        "key",
        "",
        "getArray",
        "",
        "(I)[Ljava/lang/String;",
        "load",
        "refresh",
        "toArray",
        "list",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "(Ljava/util/ArrayList;)[Ljava/lang/String;",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/asGzippedBytes;

.field onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lcom/google/firebase/FirebaseApp;

.field private final onPostMessage:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    const-string v0, "app"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setRetainInstance;->onPostMessage:Landroid/app/Application;

    .line 15
    new-instance p1, Lo/asGzippedBytes$onNavigationEvent;

    invoke-direct {p1}, Lo/asGzippedBytes$onNavigationEvent;-><init>()V

    const-string v0, "1:554056199766:android:7b4903b173476e60fdd5f7"

    .line 16
    invoke-virtual {p1, v0}, Lo/asGzippedBytes$onNavigationEvent;->setApplicationId(Ljava/lang/String;)Lo/asGzippedBytes$onNavigationEvent;

    move-result-object p1

    const-string v0, "AIzaSyCQJ3JhXBDxsj25zuoPNIG-cdjl5VYrojE"

    .line 17
    invoke-virtual {p1, v0}, Lo/asGzippedBytes$onNavigationEvent;->setApiKey(Ljava/lang/String;)Lo/asGzippedBytes$onNavigationEvent;

    move-result-object p1

    const-string v0, "credprodstrings"

    .line 18
    invoke-virtual {p1, v0}, Lo/asGzippedBytes$onNavigationEvent;->setProjectId(Ljava/lang/String;)Lo/asGzippedBytes$onNavigationEvent;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lo/asGzippedBytes$onNavigationEvent;->build()Lo/asGzippedBytes;

    move-result-object p1

    const-string v0, "FirebaseOptions.Builder(\u2026ECT)\n            .build()"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/setRetainInstance;->extraCallback:Lo/asGzippedBytes;

    .line 21
    iget-object v0, p0, Lo/setRetainInstance;->onPostMessage:Landroid/app/Application;

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v1, "stringsrepo"

    invoke-static {v0, p1, v1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lo/asGzippedBytes;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    const-string v0, "FirebaseApp.initializeAp\u2026app, options, COLLECTION)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/setRetainInstance;->onNavigationEvent:Lcom/google/firebase/FirebaseApp;

    return-void
.end method


# virtual methods
.method public final extraCallback(I)Ljava/lang/String;
    .locals 7

    .line 27
    iget-object v0, p0, Lo/setRetainInstance;->onPostMessage:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    .line 28
    iget-object v0, p0, Lo/setRetainInstance;->onMessageChannelReady:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 29
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 31
    :cond_0
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 32
    move-object v0, p1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v2, "res.keys"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    check-cast v0, Ljava/lang/Iterable;

    .line 94
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 34
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    .line 2024
    sget-object v4, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 3000
    sget-object v4, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1:Lo/isDetached;

    sget-object v5, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v6, 0x6c

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, "a"

    .line 34
    :cond_2
    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    .line 3048
    invoke-static {v3, v4, v5}, Lo/childWrites;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 35
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v1
.end method

.method public final onMessageChannelReady()V
    .locals 3

    .line 68
    iget-object v0, p0, Lo/setRetainInstance;->onNavigationEvent:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getInstance(Lcom/google/firebase/FirebaseApp;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    move-result-object v0

    const-string v1, "FirebaseFirestore.getInstance(firebaseApp)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;

    invoke-direct {v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;-><init>()V

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v1, v2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->setPersistenceEnabled(Z)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->build()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->setFirestoreSettings(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)V

    .line 71
    iget-object v0, p0, Lo/setRetainInstance;->onNavigationEvent:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getInstance(Lcom/google/firebase/FirebaseApp;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    move-result-object v0

    const-string/jumbo v1, "stringsrepo"

    invoke-virtual {v0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->collection(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;

    move-result-object v0

    const-string v1, "android_2.1.8.4"

    invoke-virtual {v0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;->document(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 73
    new-instance v1, Lo/setRetainInstance$extraCallback;

    invoke-direct {v1, p0}, Lo/setRetainInstance$extraCallback;-><init>(Lo/setRetainInstance;)V

    check-cast v1, Lo/addLifecycleEventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->extraCallback(Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 78
    sget-object v1, Lo/setRetainInstance$onMessageChannelReady;->extraCallback:Lo/setRetainInstance$onMessageChannelReady;

    check-cast v1, Lo/addBackgroundStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final onMessageChannelReady(I)[Ljava/lang/String;
    .locals 4

    .line 47
    iget-object p1, p0, Lo/setRetainInstance;->onPostMessage:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lo/setRetainInstance;->onMessageChannelReady:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 49
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/ArrayList;

    .line 3055
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
