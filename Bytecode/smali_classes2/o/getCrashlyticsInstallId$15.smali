.class final Lo/getCrashlyticsInstallId$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/buildSingleThreadExecutorService$onPostMessage;


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

    .line 112
    iput-object p1, p0, Lo/getCrashlyticsInstallId$15;->this$0:Lo/getCrashlyticsInstallId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTokenChange()V
    .locals 3

    .line 117
    iget-object v0, p0, Lo/getCrashlyticsInstallId$15;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {v0}, Lo/getCrashlyticsInstallId;->access$100(Lo/getCrashlyticsInstallId;)Lo/FileLogStore;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Auth token changed, triggering auth token refresh"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lo/getCrashlyticsInstallId$15;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {v0}, Lo/getCrashlyticsInstallId;->access$200(Lo/getCrashlyticsInstallId;)Lo/getDataCollectionValueFromSharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Lo/getDataCollectionValueFromSharedPreferences;->refreshAuthToken()V

    return-void
.end method

.method public final onTokenChange(Ljava/lang/String;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lo/getCrashlyticsInstallId$15;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {v0}, Lo/getCrashlyticsInstallId;->access$100(Lo/getCrashlyticsInstallId;)Lo/FileLogStore;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Auth token changed, triggering auth token refresh"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lo/getCrashlyticsInstallId$15;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {v0}, Lo/getCrashlyticsInstallId;->access$200(Lo/getCrashlyticsInstallId;)Lo/getDataCollectionValueFromSharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/getDataCollectionValueFromSharedPreferences;->refreshAuthToken(Ljava/lang/String;)V

    return-void
.end method
