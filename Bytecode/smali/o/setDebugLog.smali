.class public Lo/setDebugLog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPreinstallAttribution;


# static fields
.field public static final ICustomTabsCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private final asBinder:Lo/getHostPrefix$onMessageChannelReady;

.field private final asInterface:Ljava/lang/Object;

.field private final extraCallback:Ljava/lang/String;

.field private final getInterfaceDescriptor:Lo/context;

.field private newSession:Z

.field public final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Lo/getHostPrefix;

.field private onRelationshipValidationResult:Lo/getInstallVersion;

.field private final onTransact:Lo/unregisterConversionListener;

.field private final warmup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/releaseGlows$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "id"

    const-string/jumbo v1, "uri_source"

    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2032
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 2033
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2034
    new-instance v0, Lo/getPivotX;

    invoke-direct {v0, v1}, Lo/getPivotX;-><init>(Ljava/util/Set;)V

    .line 31
    sput-object v0, Lo/setDebugLog;->ICustomTabsCallback:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lo/getHostPrefix;Ljava/lang/String;Ljava/lang/String;Lo/unregisterConversionListener;Ljava/lang/Object;Lo/getHostPrefix$onMessageChannelReady;ZZLo/getInstallVersion;Lo/context;)V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lo/onAppLinkFetchFinished;->onMessageChannelReady:Lo/onAppLinkFetchFinished;

    .line 94
    iput-object p1, p0, Lo/setDebugLog;->onPostMessage:Lo/getHostPrefix;

    .line 95
    iput-object p2, p0, Lo/setDebugLog;->extraCallback:Ljava/lang/String;

    .line 97
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lo/setDebugLog;->onMessageChannelReady:Ljava/util/Map;

    .line 98
    iget-object v0, p0, Lo/setDebugLog;->extraCallback:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object p2, p0, Lo/setDebugLog;->onMessageChannelReady:Ljava/util/Map;

    if-nez p1, :cond_0

    const-string p1, "null-request"

    goto :goto_0

    .line 1150
    :cond_0
    iget-object p1, p1, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    :goto_0
    const-string/jumbo v0, "uri_source"

    .line 99
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iput-object p3, p0, Lo/setDebugLog;->onNavigationEvent:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lo/setDebugLog;->onTransact:Lo/unregisterConversionListener;

    .line 103
    iput-object p5, p0, Lo/setDebugLog;->asInterface:Ljava/lang/Object;

    .line 104
    iput-object p6, p0, Lo/setDebugLog;->asBinder:Lo/getHostPrefix$onMessageChannelReady;

    .line 106
    iput-boolean p7, p0, Lo/setDebugLog;->ICustomTabsCallback$Stub:Z

    .line 107
    iput-object p9, p0, Lo/setDebugLog;->onRelationshipValidationResult:Lo/getInstallVersion;

    .line 108
    iput-boolean p8, p0, Lo/setDebugLog;->newSession:Z

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lo/setDebugLog;->ICustomTabsCallback$Stub$Proxy:Z

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/setDebugLog;->warmup:Ljava/util/List;

    .line 113
    iput-object p10, p0, Lo/setDebugLog;->getInterfaceDescriptor:Lo/context;

    return-void
.end method

.method public constructor <init>(Lo/getHostPrefix;Ljava/lang/String;Lo/unregisterConversionListener;Ljava/lang/Object;Lo/getHostPrefix$onMessageChannelReady;ZZLo/getInstallVersion;Lo/context;)V
    .locals 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 70
    invoke-direct/range {v0 .. v10}, Lo/setDebugLog;-><init>(Lo/getHostPrefix;Ljava/lang/String;Ljava/lang/String;Lo/unregisterConversionListener;Ljava/lang/Object;Lo/getHostPrefix$onMessageChannelReady;ZZLo/getInstallVersion;Lo/context;)V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/releaseGlows$onPostMessage$onMessageChannelReady;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/releaseGlows$onPostMessage$onMessageChannelReady;

    .line 291
    invoke-virtual {v0}, Lo/releaseGlows$onPostMessage$onMessageChannelReady;->onMessageChannelReady()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static onMessageChannelReady(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/releaseGlows$onPostMessage$onMessageChannelReady;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 314
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/releaseGlows$onPostMessage$onMessageChannelReady;

    .line 315
    invoke-virtual {v0}, Lo/releaseGlows$onPostMessage$onMessageChannelReady;->ICustomTabsCallback()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static onNavigationEvent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/releaseGlows$onPostMessage$onMessageChannelReady;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/releaseGlows$onPostMessage$onMessageChannelReady;

    .line 281
    invoke-virtual {v0}, Lo/releaseGlows$onPostMessage$onMessageChannelReady;->extraCallback()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static onPostMessage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/releaseGlows$onPostMessage$onMessageChannelReady;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/releaseGlows$onPostMessage$onMessageChannelReady;

    .line 305
    invoke-virtual {v0}, Lo/releaseGlows$onPostMessage$onMessageChannelReady;->onPostMessage()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/unregisterConversionListener;
    .locals 1

    .line 133
    iget-object v0, p0, Lo/setDebugLog;->onTransact:Lo/unregisterConversionListener;

    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 321
    sget-object v0, Lo/setDebugLog;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lo/setDebugLog;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Lo/context;
    .locals 1

    .line 182
    iget-object v0, p0, Lo/setDebugLog;->getInterfaceDescriptor:Lo/context;

    return-object v0
.end method

.method public final declared-synchronized ICustomTabsService()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/releaseGlows$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 265
    :try_start_0
    iget-boolean v0, p0, Lo/setDebugLog;->ICustomTabsCallback$Stub$Proxy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 266
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 268
    :try_start_1
    iput-boolean v0, p0, Lo/setDebugLog;->ICustomTabsCallback$Stub$Proxy:Z

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/setDebugLog;->warmup:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized asBinder()Z
    .locals 1

    monitor-enter p0

    .line 158
    :try_start_0
    iget-boolean v0, p0, Lo/setDebugLog;->newSession:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized asInterface()Lo/getInstallVersion;
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lo/setDebugLog;->onRelationshipValidationResult:Lo/getInstallVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final extraCallback()Ljava/lang/Object;
    .locals 1

    .line 138
    iget-object v0, p0, Lo/setDebugLog;->asInterface:Ljava/lang/Object;

    return-object v0
.end method

.method public final declared-synchronized extraCallback(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lo/releaseGlows$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 247
    :try_start_0
    iget-boolean v0, p0, Lo/setDebugLog;->newSession:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 248
    monitor-exit p0

    return-object p1

    .line 250
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lo/setDebugLog;->newSession:Z

    .line 251
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lo/setDebugLog;->warmup:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lo/setDebugLog;->onMessageChannelReady:Ljava/util/Map;

    const-string v1, "origin"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object p1, p0, Lo/setDebugLog;->onMessageChannelReady:Ljava/util/Map;

    const-string v0, "origin_sub"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final newSession()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lo/setDebugLog;->onMessageChannelReady:Ljava/util/Map;

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lo/setDebugLog;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized onMessageChannelReady(Lo/getInstallVersion;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getInstallVersion;",
            ")",
            "Ljava/util/List<",
            "Lo/releaseGlows$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lo/setDebugLog;->onRelationshipValidationResult:Lo/getInstallVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 229
    monitor-exit p0

    return-object p1

    .line 231
    :cond_0
    :try_start_1
    iput-object p1, p0, Lo/setDebugLog;->onRelationshipValidationResult:Lo/getInstallVersion;

    .line 232
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lo/setDebugLog;->warmup:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onMessageChannelReady()Lo/getHostPrefix;
    .locals 1

    .line 118
    iget-object v0, p0, Lo/setDebugLog;->onPostMessage:Lo/getHostPrefix;

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 328
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 329
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1321
    sget-object v2, Lo/setDebugLog;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1322
    iget-object v2, p0, Lo/setDebugLog;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/setDebugLog;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized onNavigationEvent(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lo/releaseGlows$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 210
    :try_start_0
    iget-boolean v0, p0, Lo/setDebugLog;->ICustomTabsCallback$Stub:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 211
    monitor-exit p0

    return-object p1

    .line 213
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lo/setDebugLog;->ICustomTabsCallback$Stub:Z

    .line 214
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lo/setDebugLog;->warmup:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lo/setDebugLog;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 2

    .line 1358
    iget-object v0, p0, Lo/setDebugLog;->onMessageChannelReady:Ljava/util/Map;

    const-string v1, "origin"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    iget-object p1, p0, Lo/setDebugLog;->onMessageChannelReady:Ljava/util/Map;

    const-string v0, "default"

    const-string v1, "origin_sub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onPostMessage(Lo/releaseGlows$onPostMessage$onMessageChannelReady;)V
    .locals 1

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lo/setDebugLog;->warmup:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-boolean v0, p0, Lo/setDebugLog;->ICustomTabsCallback$Stub$Proxy:Z

    .line 173
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Lo/releaseGlows$onPostMessage$onMessageChannelReady;->extraCallback()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 173
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onRelationshipValidationResult()Z
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    iget-boolean v0, p0, Lo/setDebugLog;->ICustomTabsCallback$Stub:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onTransact()Lo/getHostPrefix$onMessageChannelReady;
    .locals 1

    .line 143
    iget-object v0, p0, Lo/setDebugLog;->asBinder:Lo/getHostPrefix$onMessageChannelReady;

    return-object v0
.end method
