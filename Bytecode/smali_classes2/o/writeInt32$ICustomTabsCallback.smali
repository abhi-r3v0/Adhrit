.class public final Lo/writeInt32$ICustomTabsCallback;
.super Lo/isBuffering;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeInt32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isBuffering<",
        "Lo/writeInt32$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lo/pruneCache;Lo/deleteTrackedQuery;)V
    .locals 0

    .line 750
    invoke-direct {p0, p1, p2}, Lo/isBuffering;-><init>(Lo/pruneCache;Lo/deleteTrackedQuery;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/pruneCache;Lo/deleteTrackedQuery;B)V
    .locals 0

    .line 747
    invoke-direct {p0, p1, p2}, Lo/writeInt32$ICustomTabsCallback;-><init>(Lo/pruneCache;Lo/deleteTrackedQuery;)V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Lo/pruneCache;Lo/deleteTrackedQuery;)Lo/resetKeepAlive;
    .locals 1

    .line 1756
    new-instance v0, Lo/writeInt32$ICustomTabsCallback;

    invoke-direct {v0, p1, p2}, Lo/writeInt32$ICustomTabsCallback;-><init>(Lo/pruneCache;Lo/deleteTrackedQuery;)V

    return-object v0
.end method
