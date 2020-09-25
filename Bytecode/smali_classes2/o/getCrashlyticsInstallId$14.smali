.class final Lo/getCrashlyticsInstallId$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/persistEvent$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;->abortTransactions(Lo/ExecutorUtils$2;I)Lo/ExecutorUtils$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/persistEvent$onNavigationEvent<",
        "Ljava/util/List<",
        "Lo/getCrashlyticsInstallId$onPostMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/getCrashlyticsInstallId;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;I)V
    .locals 0

    .line 1294
    iput-object p1, p0, Lo/getCrashlyticsInstallId$14;->this$0:Lo/getCrashlyticsInstallId;

    iput p2, p0, Lo/getCrashlyticsInstallId$14;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visitTree(Lo/persistEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistEvent<",
            "Ljava/util/List<",
            "Lo/getCrashlyticsInstallId$onPostMessage;",
            ">;>;)V"
        }
    .end annotation

    .line 1297
    iget-object v0, p0, Lo/getCrashlyticsInstallId$14;->this$0:Lo/getCrashlyticsInstallId;

    iget v1, p0, Lo/getCrashlyticsInstallId$14;->val$reason:I

    invoke-static {v0, p1, v1}, Lo/getCrashlyticsInstallId;->access$3100(Lo/getCrashlyticsInstallId;Lo/persistEvent;I)V

    return-void
.end method
