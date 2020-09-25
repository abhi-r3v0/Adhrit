.class final Lo/getCrashlyticsInstallId$16$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDataCollectionValueFromManifest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId$16;->startListening(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/InstallerPackageNameProvider;Lo/storeDataCollectionValueInSharedPreferences;Lo/removeForwardSlashesIn$onNavigationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lo/getCrashlyticsInstallId$16;

.field final synthetic val$onListenComplete:Lo/removeForwardSlashesIn$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId$16;Lo/removeForwardSlashesIn$onNavigationEvent;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lo/getCrashlyticsInstallId$16$3;->this$1:Lo/getCrashlyticsInstallId$16;

    iput-object p2, p0, Lo/getCrashlyticsInstallId$16$3;->val$onListenComplete:Lo/removeForwardSlashesIn$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 190
    invoke-static {p1, p2}, Lo/getCrashlyticsInstallId;->access$600(Ljava/lang/String;Ljava/lang/String;)Lo/getMarkerFile;

    move-result-object p1

    .line 191
    iget-object p2, p0, Lo/getCrashlyticsInstallId$16$3;->val$onListenComplete:Lo/removeForwardSlashesIn$onNavigationEvent;

    invoke-interface {p2, p1}, Lo/removeForwardSlashesIn$onNavigationEvent;->onListenComplete(Lo/getMarkerFile;)Ljava/util/List;

    move-result-object p1

    .line 192
    iget-object p2, p0, Lo/getCrashlyticsInstallId$16$3;->this$1:Lo/getCrashlyticsInstallId$16;

    iget-object p2, p2, Lo/getCrashlyticsInstallId$16;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {p2, p1}, Lo/getCrashlyticsInstallId;->access$500(Lo/getCrashlyticsInstallId;Ljava/util/List;)V

    return-void
.end method
