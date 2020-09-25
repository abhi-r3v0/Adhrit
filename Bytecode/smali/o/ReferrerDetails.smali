.class public final Lo/ReferrerDetails;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/endConnection;


# static fields
.field private static onNavigationEvent:Lo/ReferrerDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized extraCallback()Lo/ReferrerDetails;
    .locals 2

    const-class v0, Lo/ReferrerDetails;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lo/ReferrerDetails;->onNavigationEvent:Lo/ReferrerDetails;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lo/ReferrerDetails;

    invoke-direct {v1}, Lo/ReferrerDetails;-><init>()V

    sput-object v1, Lo/ReferrerDetails;->onNavigationEvent:Lo/ReferrerDetails;

    .line 28
    :cond_0
    sget-object v1, Lo/ReferrerDetails;->onNavigationEvent:Lo/ReferrerDetails;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final extraCallback(Landroid/net/Uri;)Lo/invalidateSpanInfo;
    .locals 1

    .line 74
    new-instance v0, Lo/addTile;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/addTile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final extraCallback(Lo/getHostPrefix;Ljava/lang/Object;)Lo/invalidateSpanInfo;
    .locals 7

    .line 33
    new-instance p2, Lo/R;

    .line 1150
    iget-object v0, p1, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2166
    iget-object v2, p1, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    .line 2170
    iget-object v3, p1, Lo/getHostPrefix;->onRelationshipValidationResult:Lo/ɩ;

    .line 2185
    iget-object v4, p1, Lo/getHostPrefix;->onTransact:Lo/AFDeepLinkManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    .line 37
    invoke-direct/range {v0 .. v6}, Lo/R;-><init>(Ljava/lang/String;Lo/ǃ;Lo/ɩ;Lo/AFDeepLinkManager;Lo/invalidateSpanInfo;Ljava/lang/String;)V

    return-object p2
.end method

.method public final onNavigationEvent(Lo/getHostPrefix;Ljava/lang/Object;)Lo/invalidateSpanInfo;
    .locals 8

    .line 2228
    iget-object p2, p1, Lo/getHostPrefix;->newSession:Lo/performOnAppAttribution;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 50
    invoke-interface {p2}, Lo/performOnAppAttribution;->onMessageChannelReady()Lo/invalidateSpanInfo;

    move-result-object v0

    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    move-object v7, p2

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v0

    move-object v7, v6

    .line 56
    :goto_0
    new-instance p2, Lo/R;

    .line 3150
    iget-object v0, p1, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4166
    iget-object v3, p1, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    .line 4170
    iget-object v4, p1, Lo/getHostPrefix;->onRelationshipValidationResult:Lo/ɩ;

    .line 4185
    iget-object v5, p1, Lo/getHostPrefix;->onTransact:Lo/AFDeepLinkManager;

    move-object v1, p2

    .line 60
    invoke-direct/range {v1 .. v7}, Lo/R;-><init>(Ljava/lang/String;Lo/ǃ;Lo/ɩ;Lo/AFDeepLinkManager;Lo/invalidateSpanInfo;Ljava/lang/String;)V

    return-object p2
.end method

.method public final onPostMessage(Lo/getHostPrefix;)Lo/invalidateSpanInfo;
    .locals 1

    .line 5150
    iget-object p1, p1, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 6074
    new-instance v0, Lo/addTile;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/addTile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
