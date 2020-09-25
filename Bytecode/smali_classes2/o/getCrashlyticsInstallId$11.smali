.class final Lo/getCrashlyticsInstallId$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/persistEvent$onMessageChannelReady;


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
        "Lo/persistEvent$onMessageChannelReady<",
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

    .line 1283
    iput-object p1, p0, Lo/getCrashlyticsInstallId$11;->this$0:Lo/getCrashlyticsInstallId;

    iput p2, p0, Lo/getCrashlyticsInstallId$11;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filterTreeNode(Lo/persistEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistEvent<",
            "Ljava/util/List<",
            "Lo/getCrashlyticsInstallId$onPostMessage;",
            ">;>;)Z"
        }
    .end annotation

    .line 1286
    iget-object v0, p0, Lo/getCrashlyticsInstallId$11;->this$0:Lo/getCrashlyticsInstallId;

    iget v1, p0, Lo/getCrashlyticsInstallId$11;->val$reason:I

    invoke-static {v0, p1, v1}, Lo/getCrashlyticsInstallId;->access$3100(Lo/getCrashlyticsInstallId;Lo/persistEvent;I)V

    const/4 p1, 0x0

    return p1
.end method
