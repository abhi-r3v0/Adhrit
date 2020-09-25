.class final Lo/writeInt32$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/resetKeepAlive$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/writeInt32;->onMessageChannelReady(Lo/pruneCache;)Lo/writeInt32$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/resetKeepAlive$onPostMessage<",
        "Lo/writeInt32$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Lo/pruneCache;Lo/deleteTrackedQuery;)Lo/resetKeepAlive;
    .locals 2

    .line 1444
    new-instance v0, Lo/writeInt32$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lo/writeInt32$ICustomTabsCallback;-><init>(Lo/pruneCache;Lo/deleteTrackedQuery;B)V

    return-object v0
.end method
