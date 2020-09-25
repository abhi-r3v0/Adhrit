.class public final Lo/restoreToolbarHierarchyState$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/restoreToolbarHierarchyState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final extraCallback:Lo/error;

.field final onMessageChannelReady:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Lo/error;)V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->onMessageChannelReady:[Ljava/lang/String;

    .line 376
    iput-object p2, p0, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback:Lo/error;

    return-void
.end method

.method public static varargs extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;
    .locals 5

    .line 381
    :try_start_0
    array-length v0, p0

    new-array v0, v0, [Lo/matches;

    .line 382
    new-instance v1, Lo/updatePriority;

    invoke-direct {v1}, Lo/updatePriority;-><init>()V

    const/4 v2, 0x0

    .line 383
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 384
    aget-object v3, p0, v2

    invoke-static {v1, v3}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/filtersNodes;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 1548
    new-instance v3, Lo/matches;

    invoke-virtual {v1}, Lo/updatePriority;->mayLaunchUrl()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lo/matches;-><init>([B)V

    .line 386
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    :cond_0
    new-instance v1, Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {v0}, Lo/error;->extraCallback([Lo/matches;)Lo/error;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;-><init>([Ljava/lang/String;Lo/error;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 390
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
