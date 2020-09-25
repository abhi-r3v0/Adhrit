.class public final Lo/bootTime;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/serverCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/serverCache<",
        "Lo/disk;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/getUrl;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/b$e;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/ai;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/addString;Lo/addString;Lo/addString;Lo/addString;Lo/addString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addString<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lo/addString<",
            "Lo/getUrl;",
            ">;",
            "Lo/addString<",
            "Lo/ai;",
            ">;",
            "Lo/addString<",
            "Lo/ah;",
            ">;",
            "Lo/addString<",
            "Lo/b$e;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/bootTime;->onNavigationEvent:Lo/addString;

    .line 32
    iput-object p2, p0, Lo/bootTime;->extraCallback:Lo/addString;

    .line 33
    iput-object p3, p0, Lo/bootTime;->onPostMessage:Lo/addString;

    .line 34
    iput-object p4, p0, Lo/bootTime;->ICustomTabsCallback:Lo/addString;

    .line 35
    iput-object p5, p0, Lo/bootTime;->onMessageChannelReady:Lo/addString;

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 7

    .line 1040
    new-instance v6, Lo/disk;

    iget-object v0, p0, Lo/bootTime;->onNavigationEvent:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lo/bootTime;->extraCallback:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo/getUrl;

    iget-object v0, p0, Lo/bootTime;->onPostMessage:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/ai;

    iget-object v0, p0, Lo/bootTime;->ICustomTabsCallback:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lo/ah;

    iget-object v0, p0, Lo/bootTime;->onMessageChannelReady:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lo/b$e;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/disk;-><init>(Ljava/util/concurrent/Executor;Lo/getUrl;Lo/ai;Lo/ah;Lo/b$e;)V

    return-object v6
.end method
