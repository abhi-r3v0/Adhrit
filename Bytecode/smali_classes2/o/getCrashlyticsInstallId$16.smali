.class Lo/getCrashlyticsInstallId$16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/removeForwardSlashesIn$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;->deferredInitialization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/getCrashlyticsInstallId;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lo/getCrashlyticsInstallId$16;->this$0:Lo/getCrashlyticsInstallId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startListening(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/InstallerPackageNameProvider;Lo/storeDataCollectionValueInSharedPreferences;Lo/removeForwardSlashesIn$onNavigationEvent;)V
    .locals 7

    .line 182
    iget-object v0, p0, Lo/getCrashlyticsInstallId$16;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {v0}, Lo/getCrashlyticsInstallId;->access$200(Lo/getCrashlyticsInstallId;)Lo/getDataCollectionValueFromSharedPreferences;

    move-result-object v1

    .line 183
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->asList()Ljava/util/List;

    move-result-object v2

    .line 184
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object p1

    invoke-virtual {p1}, Lo/recursiveDelete;->getWireProtocolParams()Ljava/util/Map;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 186
    invoke-virtual {p2}, Lo/InstallerPackageNameProvider;->getTagNumber()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    new-instance v6, Lo/getCrashlyticsInstallId$16$3;

    invoke-direct {v6, p0, p4}, Lo/getCrashlyticsInstallId$16$3;-><init>(Lo/getCrashlyticsInstallId$16;Lo/removeForwardSlashesIn$onNavigationEvent;)V

    move-object v4, p3

    .line 182
    invoke-interface/range {v1 .. v6}, Lo/getDataCollectionValueFromSharedPreferences;->listen(Ljava/util/List;Ljava/util/Map;Lo/storeDataCollectionValueInSharedPreferences;Ljava/lang/Long;Lo/getDataCollectionValueFromManifest;)V

    return-void
.end method

.method public stopListening(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/InstallerPackageNameProvider;)V
    .locals 1

    .line 199
    iget-object p2, p0, Lo/getCrashlyticsInstallId$16;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {p2}, Lo/getCrashlyticsInstallId;->access$200(Lo/getCrashlyticsInstallId;)Lo/getDataCollectionValueFromSharedPreferences;

    move-result-object p2

    .line 200
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->asList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object p1

    invoke-virtual {p1}, Lo/recursiveDelete;->getWireProtocolParams()Ljava/util/Map;

    move-result-object p1

    .line 199
    invoke-interface {p2, v0, p1}, Lo/getDataCollectionValueFromSharedPreferences;->unlisten(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
