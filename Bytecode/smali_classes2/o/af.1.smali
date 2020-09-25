.class public final Lo/af;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/serverCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/serverCache<",
        "Lo/ae;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/addString;
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
            "Lo/getUrl;",
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
            "Lo/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/addString;Lo/addString;Lo/addString;Lo/addString;Lo/addString;Lo/addString;Lo/addString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addString<",
            "Landroid/content/Context;",
            ">;",
            "Lo/addString<",
            "Lo/getUrl;",
            ">;",
            "Lo/addString<",
            "Lo/ah;",
            ">;",
            "Lo/addString<",
            "Lo/ai;",
            ">;",
            "Lo/addString<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lo/addString<",
            "Lo/b$e;",
            ">;",
            "Lo/addString<",
            "Lo/b;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/af;->ICustomTabsCallback:Lo/addString;

    .line 37
    iput-object p2, p0, Lo/af;->onMessageChannelReady:Lo/addString;

    .line 38
    iput-object p3, p0, Lo/af;->onPostMessage:Lo/addString;

    .line 39
    iput-object p4, p0, Lo/af;->extraCallback:Lo/addString;

    .line 40
    iput-object p5, p0, Lo/af;->onNavigationEvent:Lo/addString;

    .line 41
    iput-object p6, p0, Lo/af;->asBinder:Lo/addString;

    .line 42
    iput-object p7, p0, Lo/af;->onRelationshipValidationResult:Lo/addString;

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 9

    .line 1047
    new-instance v8, Lo/ae;

    iget-object v0, p0, Lo/af;->ICustomTabsCallback:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lo/af;->onMessageChannelReady:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo/getUrl;

    iget-object v0, p0, Lo/af;->onPostMessage:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/ah;

    iget-object v0, p0, Lo/af;->extraCallback:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lo/ai;

    iget-object v0, p0, Lo/af;->onNavigationEvent:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lo/af;->asBinder:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lo/b$e;

    iget-object v0, p0, Lo/af;->onRelationshipValidationResult:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lo/b;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/ae;-><init>(Landroid/content/Context;Lo/getUrl;Lo/ah;Lo/ai;Ljava/util/concurrent/Executor;Lo/b$e;Lo/b;)V

    return-object v8
.end method
