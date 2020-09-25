.class public final Lo/SearchView$OnSuggestionListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SearchView$OnSuggestionListener$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB7\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rJ\u0018\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0006\u0010\u0016\u001a\u00020\u0017J\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u0015H\u0016R\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/datadog/android/error/internal/DatadogExceptionHandler;",
        "Ljava/lang/Thread$UncaughtExceptionHandler;",
        "networkInfoProvider",
        "Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;",
        "timeProvider",
        "Lcom/datadog/android/core/internal/time/TimeProvider;",
        "userInfoProvider",
        "Lcom/datadog/android/log/internal/user/UserInfoProvider;",
        "writer",
        "Lcom/datadog/android/core/internal/data/Writer;",
        "Lcom/datadog/android/log/internal/domain/Log;",
        "appContext",
        "Landroid/content/Context;",
        "(Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;Lcom/datadog/android/core/internal/time/TimeProvider;Lcom/datadog/android/log/internal/user/UserInfoProvider;Lcom/datadog/android/core/internal/data/Writer;Landroid/content/Context;)V",
        "contextRef",
        "Ljava/lang/ref/WeakReference;",
        "previousHandler",
        "createLog",
        "thread",
        "Ljava/lang/Thread;",
        "throwable",
        "",
        "register",
        "",
        "uncaughtException",
        "t",
        "e",
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
.field ICustomTabsCallback:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final asBinder:Lo/getPreferredWidth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPreferredWidth<",
            "Lo/onSuggestionClick;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/SearchView$OnCloseListener;

.field private final onMessageChannelReady:Lo/showSoftInputIfNecessary;

.field private final onNavigationEvent:Lo/onActionViewExpanded;

.field private final onPostMessage:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/onActionViewExpanded;Lo/SearchView$OnCloseListener;Lo/showSoftInputIfNecessary;Lo/getPreferredWidth;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onActionViewExpanded;",
            "Lo/SearchView$OnCloseListener;",
            "Lo/showSoftInputIfNecessary;",
            "Lo/getPreferredWidth<",
            "Lo/onSuggestionClick;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "timeProvider"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userInfoProvider"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "writer"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SearchView$OnSuggestionListener;->onNavigationEvent:Lo/onActionViewExpanded;

    iput-object p2, p0, Lo/SearchView$OnSuggestionListener;->extraCallback:Lo/SearchView$OnCloseListener;

    iput-object p3, p0, Lo/SearchView$OnSuggestionListener;->onMessageChannelReady:Lo/showSoftInputIfNecessary;

    iput-object p4, p0, Lo/SearchView$OnSuggestionListener;->asBinder:Lo/getPreferredWidth;

    .line 27
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lo/SearchView$OnSuggestionListener;->onPostMessage:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    const-string/jumbo v2, "t"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "e"

    invoke-static {v14, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v15, v0, Lo/SearchView$OnSuggestionListener;->asBinder:Lo/getPreferredWidth;

    .line 1060
    sget-object v2, Lo/onClose;->asInterface:Lo/onClose;

    invoke-static {}, Lo/onClose;->onNavigationEvent()Ljava/lang/String;

    move-result-object v3

    .line 1064
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "thread.name"

    invoke-static {v13, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1066
    iget-object v2, v0, Lo/SearchView$OnSuggestionListener;->onMessageChannelReady:Lo/showSoftInputIfNecessary;

    invoke-interface {v2}, Lo/showSoftInputIfNecessary;->onNavigationEvent()Lo/ShareActionProvider;

    move-result-object v11

    .line 1067
    iget-object v2, v0, Lo/SearchView$OnSuggestionListener;->onNavigationEvent:Lo/onActionViewExpanded;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lo/onActionViewExpanded;->onMessageChannelReady()Lo/adjustDropDownSizeAndPosition;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v10, v2

    .line 1068
    iget-object v2, v0, Lo/SearchView$OnSuggestionListener;->extraCallback:Lo/SearchView$OnCloseListener;

    invoke-interface {v2}, Lo/SearchView$OnCloseListener;->onNavigationEvent()J

    move-result-wide v5

    .line 2040
    sget-object v2, Lo/forcePersistenceManager;->extraCallback:Lo/forcePersistenceManager;

    if-eqz v2, :cond_5

    move-object v7, v2

    check-cast v7, Ljava/util/Map;

    .line 1070
    sget-object v2, Lo/onClose;->asInterface:Lo/onClose;

    invoke-static {}, Lo/onClose;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 2070
    sget-object v2, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v2, Ljava/util/List;

    goto :goto_2

    .line 1073
    :cond_2
    sget-object v2, Lo/onClose;->asInterface:Lo/onClose;

    invoke-static {}, Lo/onClose;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    .line 3019
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "java.util.Collections.singletonList(element)"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    move-object v8, v2

    .line 1059
    new-instance v12, Lo/onSuggestionClick;

    const-string v16, "crash"

    const-string v4, "Application crash detected"

    move-object v2, v12

    move-object/from16 v9, p2

    move-object v1, v12

    move-object/from16 v12, v16

    invoke-direct/range {v2 .. v13}, Lo/onSuggestionClick;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Ljava/util/List;Ljava/lang/Throwable;Lo/adjustDropDownSizeAndPosition;Lo/ShareActionProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-interface {v15, v1}, Lo/getPreferredWidth;->onPostMessage(Ljava/lang/Object;)V

    .line 37
    iget-object v1, v0, Lo/SearchView$OnSuggestionListener;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_3

    const-string v2, "it"

    .line 38
    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lo/extraCallback;->extraCallback(Landroid/content/Context;)V

    .line 42
    :cond_3
    iget-object v1, v0, Lo/SearchView$OnSuggestionListener;->ICustomTabsCallback:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_4

    move-object/from16 v2, p1

    invoke-interface {v1, v2, v14}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_4
    return-void

    .line 2040
    :cond_5
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.Map<K, V>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
