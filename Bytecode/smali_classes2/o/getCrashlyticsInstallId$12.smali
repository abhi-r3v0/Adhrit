.class final Lo/getCrashlyticsInstallId$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/persistEvent$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;->aggregateTransactionQueues(Ljava/util/List;Lo/persistEvent;)V
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

.field final synthetic val$queue:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;Ljava/util/List;)V
    .locals 0

    .line 1265
    iput-object p1, p0, Lo/getCrashlyticsInstallId$12;->this$0:Lo/getCrashlyticsInstallId;

    iput-object p2, p0, Lo/getCrashlyticsInstallId$12;->val$queue:Ljava/util/List;

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

    .line 1268
    iget-object v0, p0, Lo/getCrashlyticsInstallId$12;->this$0:Lo/getCrashlyticsInstallId;

    iget-object v1, p0, Lo/getCrashlyticsInstallId$12;->val$queue:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lo/getCrashlyticsInstallId;->access$3000(Lo/getCrashlyticsInstallId;Ljava/util/List;Lo/persistEvent;)V

    return-void
.end method
