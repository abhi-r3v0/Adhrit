.class final Lo/getCrashlyticsInstallId$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/persistEvent$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;->pruneCompletedTransactions(Lo/persistEvent;)V
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


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Lo/getCrashlyticsInstallId$7;->this$0:Lo/getCrashlyticsInstallId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visitTree(Lo/persistEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistEvent<",
            "Ljava/util/List<",
            "Lo/getCrashlyticsInstallId$onPostMessage;",
            ">;>;)V"
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lo/getCrashlyticsInstallId$7;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {v0, p1}, Lo/getCrashlyticsInstallId;->access$2600(Lo/getCrashlyticsInstallId;Lo/persistEvent;)V

    return-void
.end method
