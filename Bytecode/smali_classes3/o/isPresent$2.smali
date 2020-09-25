.class final Lo/isPresent$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isPresent;->setHijackHash(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/isPresent;

.field final synthetic val$hijackHash:Z


# direct methods
.method constructor <init>(Lo/isPresent;Z)V
    .locals 0

    .line 615
    iput-object p1, p0, Lo/isPresent$2;->this$0:Lo/isPresent;

    iput-boolean p2, p0, Lo/isPresent$2;->val$hijackHash:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 618
    iget-object v0, p0, Lo/isPresent$2;->this$0:Lo/isPresent;

    iget-object v0, v0, Lo/buildReportData;->repo:Lo/getCrashlyticsInstallId;

    iget-boolean v1, p0, Lo/isPresent$2;->val$hijackHash:Z

    invoke-virtual {v0, v1}, Lo/getCrashlyticsInstallId;->setHijackHash(Z)V

    return-void
.end method
