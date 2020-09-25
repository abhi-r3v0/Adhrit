.class public final Lo/getCollapseIcon;
.super Lo/frameInBuffer$onPostMessage;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0014J<\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000c2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0016\u0008\u0002\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015H\u0002J,\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0011\u001a\u00020\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0013H\u0014J\u0010\u0010\u0018\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/log/stream/DataDogLogger;",
        "Ltimber/log/Timber$Tree;",
        "()V",
        "logger",
        "Lcom/datadog/android/log/Logger;",
        "getLogger",
        "()Lcom/datadog/android/log/Logger;",
        "logger$delegate",
        "Lkotlin/Lazy;",
        "isLoggable",
        "",
        "tag",
        "",
        "priority",
        "",
        "log",
        "",
        "message",
        "throwable",
        "",
        "attributes",
        "",
        "",
        "t",
        "updateAttributes",
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
.field public final onPostMessage:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 15
    invoke-direct {p0}, Lo/frameInBuffer$onPostMessage;-><init>()V

    .line 18
    new-instance v0, Lo/setMaxWidth$extraCallback;

    const-string v1, "pub0f9dd1a97661166ed9e3ff5c825cbf07"

    invoke-direct {v0, v1}, Lo/setMaxWidth$extraCallback;-><init>(Ljava/lang/String;)V

    .line 14067
    new-instance v1, Lo/setMaxWidth;

    .line 14069
    iget-boolean v2, v0, Lo/setMaxWidth$extraCallback;->onMessageChannelReady:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lo/setMaxWidth$extraCallback;->ICustomTabsCallback:Lo/setMaxWidth$ICustomTabsCallback;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 14070
    :goto_0
    iget-boolean v2, v0, Lo/setMaxWidth$extraCallback;->onPostMessage:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lo/setMaxWidth$extraCallback;->extraCallback:Lo/setMaxWidth$ICustomTabsCallback;

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 14071
    :goto_1
    iget-boolean v2, v0, Lo/setMaxWidth$extraCallback;->onTransact:Z

    if-eqz v2, :cond_2

    iget-object v0, v0, Lo/setMaxWidth$extraCallback;->onNavigationEvent:Lo/setMaxWidth$ICustomTabsCallback;

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v3

    :goto_2
    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, v1

    .line 14067
    invoke-direct/range {v2 .. v7}, Lo/setMaxWidth;-><init>(ZLo/setMaxWidth$ICustomTabsCallback;Lo/setMaxWidth$ICustomTabsCallback;Lo/setMaxWidth$ICustomTabsCallback;B)V

    .line 20
    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 14122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v2, "context"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 20
    :cond_3
    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1}, Lo/setSuggestionsAdapter;->onMessageChannelReady(Landroid/content/Context;Lo/setMaxWidth;)V

    .line 23
    new-instance v0, Lo/getCollapseIcon$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/getCollapseIcon$ICustomTabsCallback;-><init>(Lo/getCollapseIcon;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 23
    iput-object v1, p0, Lo/getCollapseIcon;->onPostMessage:Lo/isSameListener;

    return-void
.end method

.method public static onNavigationEvent(Lo/onQueryTextChange;)V
    .locals 4

    const-string v0, "logger"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "session_id"

    invoke-virtual {p0, v1, v0}, Lo/onQueryTextChange;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v0, Lo/setTrackTintMode;->onRelationshipValidationResult:Lo/setSubtitleTextColor;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "user_id"

    .line 36
    invoke-virtual {p0, v2, v0}, Lo/onQueryTextChange;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lo/onQueryTextChange;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v0, Lo/setTrackTintMode;->onRelationshipValidationResult:Lo/setSubtitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0, v2, v0}, Lo/onQueryTextChange;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "message"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 4000
    sget-object v1, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImplApi21$1:Lo/isAdded;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x58

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 5000
    sget-object v1, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImplApi21$2:Lo/isResumed;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x59

    aget-object v2, v2, v3

    const-string v3, "property"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6000
    iget-object v1, v1, Lo/hasOptionsMenu;->onPostMessage:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getJsonObjectFrom;

    .line 5020
    invoke-interface {v1}, Lo/getJsonObjectFrom;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    .line 5000
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "tag"

    if-eqz p2, :cond_1

    .line 7000
    iget-object v2, p0, Lo/getCollapseIcon;->onPostMessage:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/onQueryTextChange;

    .line 52
    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7480
    iget-object v2, v2, Lo/onQueryTextChange;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 9040
    :cond_1
    sget-object v2, Lo/forcePersistenceManager;->extraCallback:Lo/forcePersistenceManager;

    if-eqz v2, :cond_3

    check-cast v2, Ljava/util/Map;

    .line 10000
    iget-object v3, p0, Lo/getCollapseIcon;->onPostMessage:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/onQueryTextChange;

    .line 9046
    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {v2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10164
    invoke-static {v3, p1, p3, p4, v2}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;ILjava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    if-eqz p2, :cond_2

    .line 11000
    iget-object p1, p0, Lo/getCollapseIcon;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onQueryTextChange;

    .line 56
    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11484
    iget-object p1, p1, Lo/onQueryTextChange;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void

    .line 9040
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.Map<K, V>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(I)Z
    .locals 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 65
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 12000
    sget-object v0, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImplApi21$4:Lo/isAdded;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x5a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 65
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 13000
    sget-object v0, Lo/isInLayout;->run:Lo/isAdded;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x5b

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 65
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 14000
    sget-object p1, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImplApi23:Lo/isAdded;

    sget-object v0, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v1, 0x5c

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
