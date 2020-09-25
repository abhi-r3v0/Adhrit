.class public final Lo/submitList$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ak$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/submitList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/link/adapter/CardLinkAdapter$Companion;",
        "",
        "()V",
        "ITEM_TYPE_LINK_CANDIDATE",
        "",
        "ITEM_TYPE_LINK_CANDIDATE_HEADER",
        "ITEM_TYPE_LINK_REASON",
        "ITEM_TYPE_LINK_REASON_HEADER",
        "SELECT_CANDIDATE",
        "",
        "SELECT_REASON",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/ak;

.field private final onNavigationEvent:Lo/OaidClient$Info;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/ak;Lo/OaidClient$Info;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/submitList$ICustomTabsCallback;->extraCallback:Lo/ak;

    iput-object p2, p0, Lo/submitList$ICustomTabsCallback;->onNavigationEvent:Lo/OaidClient$Info;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 2000
    iget-object v0, p0, Lo/submitList$ICustomTabsCallback;->extraCallback:Lo/ak;

    iget-object v1, p0, Lo/submitList$ICustomTabsCallback;->onNavigationEvent:Lo/OaidClient$Info;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 2368
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2369
    invoke-static {p1, v1}, Lo/ak;->extraCallback(Landroid/database/sqlite/SQLiteDatabase;Lo/OaidClient$Info;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "_id"

    const-string v4, "transport_name"

    const-string v5, "timestamp_ms"

    const-string v6, "uptime_ms"

    const-string v7, "payload_encoding"

    const-string v8, "payload"

    const-string v9, "code"

    const-string v10, "inline"

    .line 2374
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 2388
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, v0, Lo/ak;->ICustomTabsCallback:Lo/aj;

    .line 2392
    invoke-virtual {v2}, Lo/aj;->ICustomTabsCallback()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "events"

    const-string v5, "context_id = ?"

    move-object v2, p1

    .line 2375
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3000
    new-instance v3, Lo/refreshData$ICustomTabsCallback;

    invoke-direct {v3, v0, v11, v1}, Lo/refreshData$ICustomTabsCallback;-><init>(Lo/ak;Ljava/util/List;Lo/OaidClient$Info;)V

    .line 2374
    invoke-static {v2, v3}, Lo/ak;->ICustomTabsCallback(Landroid/database/Cursor;Lo/ak$onPostMessage;)Ljava/lang/Object;

    .line 2310
    :goto_0
    invoke-static {p1, v11}, Lo/ak;->extraCallback(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v11, p1}, Lo/ak;->onMessageChannelReady(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
