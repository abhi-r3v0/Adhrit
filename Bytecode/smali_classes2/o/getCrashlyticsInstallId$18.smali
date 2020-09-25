.class final Lo/getCrashlyticsInstallId$18;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDataCollectionValueFromManifest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;->restoreWrites(Lo/NativeSessionFileGzipper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/getCrashlyticsInstallId;

.field final synthetic val$write:Lo/loadInstallerPackageName;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;Lo/loadInstallerPackageName;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lo/getCrashlyticsInstallId$18;->this$0:Lo/getCrashlyticsInstallId;

    iput-object p2, p0, Lo/getCrashlyticsInstallId$18;->val$write:Lo/loadInstallerPackageName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 220
    invoke-static {p1, p2}, Lo/getCrashlyticsInstallId;->access$600(Ljava/lang/String;Ljava/lang/String;)Lo/getMarkerFile;

    move-result-object p1

    .line 221
    iget-object p2, p0, Lo/getCrashlyticsInstallId$18;->this$0:Lo/getCrashlyticsInstallId;

    iget-object v0, p0, Lo/getCrashlyticsInstallId$18;->val$write:Lo/loadInstallerPackageName;

    invoke-virtual {v0}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    const-string v1, "Persisted write"

    invoke-static {p2, v1, v0, p1}, Lo/getCrashlyticsInstallId;->access$700(Lo/getCrashlyticsInstallId;Ljava/lang/String;Lo/ExecutorUtils$2;Lo/getMarkerFile;)V

    .line 222
    iget-object p2, p0, Lo/getCrashlyticsInstallId$18;->this$0:Lo/getCrashlyticsInstallId;

    iget-object v0, p0, Lo/getCrashlyticsInstallId$18;->val$write:Lo/loadInstallerPackageName;

    invoke-virtual {v0}, Lo/loadInstallerPackageName;->getWriteId()J

    move-result-wide v0

    iget-object v2, p0, Lo/getCrashlyticsInstallId$18;->val$write:Lo/loadInstallerPackageName;

    invoke-virtual {v2}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-static {p2, v0, v1, v2, p1}, Lo/getCrashlyticsInstallId;->access$800(Lo/getCrashlyticsInstallId;JLo/ExecutorUtils$2;Lo/getMarkerFile;)V

    return-void
.end method
