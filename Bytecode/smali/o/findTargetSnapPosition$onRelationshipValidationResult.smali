.class final Lo/findTargetSnapPosition$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findTargetSnapPosition;->onEvent(Lo/computeDistancePerChild;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/findTargetSnapPosition;

.field private synthetic onNavigationEvent:Lo/computeDistancePerChild;


# direct methods
.method constructor <init>(Lo/findTargetSnapPosition;Lo/computeDistancePerChild;)V
    .locals 0

    iput-object p1, p0, Lo/findTargetSnapPosition$onRelationshipValidationResult;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    iput-object p2, p0, Lo/findTargetSnapPosition$onRelationshipValidationResult;->onNavigationEvent:Lo/computeDistancePerChild;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    .line 1119
    iget-object v0, p0, Lo/findTargetSnapPosition$onRelationshipValidationResult;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    .line 2027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    const-string v1, "dataModel"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    .line 3025
    iput-boolean v2, v0, Lo/estimateNextPositionDiffForFling;->warmup:Z

    .line 1120
    iget-object v0, p0, Lo/findTargetSnapPosition$onRelationshipValidationResult;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    .line 3026
    iget-object v0, v0, Lo/findTargetSnapPosition;->onPostMessage:Lo/setActive;

    .line 1120
    new-instance v2, Lo/throwIfInMutationOperation;

    new-instance v3, Lo/getVerticalHelper;

    iget-object v4, p0, Lo/findTargetSnapPosition$onRelationshipValidationResult;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    .line 3027
    iget-object v4, v4, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v4, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4022
    :cond_1
    iget-object v1, v4, Lo/estimateNextPositionDiffForFling;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1120
    iget-object v4, p0, Lo/findTargetSnapPosition$onRelationshipValidationResult;->onNavigationEvent:Lo/computeDistancePerChild;

    check-cast v4, Lo/getDecoratedEnd;

    .line 5021
    iget-object v4, v4, Lo/getDecoratedEnd;->onPostMessage:Ljava/lang/String;

    .line 1120
    invoke-direct {v3, v1, v4}, Lo/getVerticalHelper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 23
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
