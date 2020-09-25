.class public final Lo/ag$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/serverCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/serverCache<",
        "Lo/ag;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/b$e;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/ai;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/addString;
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
            "Lo/ah;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/addString;Lo/addString;Lo/addString;Lo/addString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addString<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lo/addString<",
            "Lo/ah;",
            ">;",
            "Lo/addString<",
            "Lo/ai;",
            ">;",
            "Lo/addString<",
            "Lo/b$e;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lo/ag$a;->onMessageChannelReady:Lo/addString;

    .line 27
    iput-object p2, p0, Lo/ag$a;->onPostMessage:Lo/addString;

    .line 28
    iput-object p3, p0, Lo/ag$a;->extraCallback:Lo/addString;

    .line 29
    iput-object p4, p0, Lo/ag$a;->ICustomTabsCallback:Lo/addString;

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 5

    .line 1034
    new-instance v0, Lo/ag;

    iget-object v1, p0, Lo/ag$a;->onMessageChannelReady:Lo/addString;

    invoke-interface {v1}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lo/ag$a;->onPostMessage:Lo/addString;

    invoke-interface {v2}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ah;

    iget-object v3, p0, Lo/ag$a;->extraCallback:Lo/addString;

    invoke-interface {v3}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ai;

    iget-object v4, p0, Lo/ag$a;->ICustomTabsCallback:Lo/addString;

    invoke-interface {v4}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/b$e;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/ag;-><init>(Ljava/util/concurrent/Executor;Lo/ah;Lo/ai;Lo/b$e;)V

    return-object v0
.end method
