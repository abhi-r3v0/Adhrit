.class final Lo/getCrashlyticsInstallId$20;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;->callOnComplete(Lo/isPresent$onPostMessage;Lo/getMarkerFile;Lo/ExecutorUtils$2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/getCrashlyticsInstallId;

.field final synthetic val$error:Lo/getMarkerFile;

.field final synthetic val$onComplete:Lo/isPresent$onPostMessage;

.field final synthetic val$ref:Lo/isPresent;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;Lo/isPresent$onPostMessage;Lo/getMarkerFile;Lo/isPresent;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lo/getCrashlyticsInstallId$20;->this$0:Lo/getCrashlyticsInstallId;

    iput-object p2, p0, Lo/getCrashlyticsInstallId$20;->val$onComplete:Lo/isPresent$onPostMessage;

    iput-object p3, p0, Lo/getCrashlyticsInstallId$20;->val$error:Lo/getMarkerFile;

    iput-object p4, p0, Lo/getCrashlyticsInstallId$20;->val$ref:Lo/isPresent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 406
    iget-object v0, p0, Lo/getCrashlyticsInstallId$20;->val$onComplete:Lo/isPresent$onPostMessage;

    iget-object v1, p0, Lo/getCrashlyticsInstallId$20;->val$error:Lo/getMarkerFile;

    iget-object v2, p0, Lo/getCrashlyticsInstallId$20;->val$ref:Lo/isPresent;

    invoke-interface {v0, v1, v2}, Lo/isPresent$onPostMessage;->onComplete(Lo/getMarkerFile;Lo/isPresent;)V

    return-void
.end method
