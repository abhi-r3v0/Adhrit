.class public final Lo/collectIntentsFromActivities;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AFEvent;


# instance fields
.field private extraCallback:Lo/AFDeepLinkManager$5;


# direct methods
.method public constructor <init>(Lo/AFDeepLinkManager$5;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lo/collectIntentsFromActivities;->extraCallback:Lo/AFDeepLinkManager$5;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/getByPosition;)Lo/setStrokeColor;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 54
    iget-object v2, v0, Lo/collectIntentsFromActivities;->extraCallback:Lo/AFDeepLinkManager$5;

    invoke-interface {v2, v1}, Lo/AFDeepLinkManager$5;->extraCallback(Lo/getByPosition;)Lo/containsPosition;

    move-result-object v4

    .line 1028
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    .line 1035
    new-instance v6, Lo/ViewBoundsCheck$ViewBounds$extraCallback;

    .line 1099
    iget-wide v11, v1, Lo/getByPosition;->asInterface:J

    .line 2095
    iget-wide v13, v1, Lo/getByPosition;->onPostMessage:J

    .line 3091
    iget-wide v2, v1, Lo/getByPosition;->ICustomTabsCallback:J

    move-object v10, v6

    move-wide v15, v2

    .line 1039
    invoke-direct/range {v10 .. v16}, Lo/ViewBoundsCheck$ViewBounds$extraCallback;-><init>(JJJ)V

    .line 1041
    new-instance v2, Lo/ViewBoundsCheck$ViewBounds;

    .line 3103
    iget-object v5, v1, Lo/getByPosition;->ICustomTabsCallback$Stub:Lo/getStrokeAlpha;

    .line 3111
    iget-object v7, v1, Lo/getByPosition;->onTransact:Lo/invalidateAnchorPositionInfo;

    .line 4107
    iget-object v8, v1, Lo/getByPosition;->asBinder:Lo/recycleTile;

    const/4 v10, 0x0

    move-object v3, v2

    .line 1049
    invoke-direct/range {v3 .. v10}, Lo/ViewBoundsCheck$ViewBounds;-><init>(Lo/containsPosition;Lo/getStrokeAlpha;Lo/ViewBoundsCheck$ViewBounds$extraCallback;Lo/invalidateAnchorPositionInfo;Lo/recycleTile;Ljava/util/concurrent/Executor;Z)V

    return-object v2
.end method
