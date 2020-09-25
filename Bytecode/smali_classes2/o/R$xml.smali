.class public final Lo/R$xml;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/serverCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/serverCache<",
        "Lo/OaidClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/ae;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/b;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/b;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/ag;",
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
            "Lo/b;",
            ">;",
            "Lo/addString<",
            "Lo/b;",
            ">;",
            "Lo/addString<",
            "Lo/a$a;",
            ">;",
            "Lo/addString<",
            "Lo/ae;",
            ">;",
            "Lo/addString<",
            "Lo/ag;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/R$xml;->onNavigationEvent:Lo/addString;

    .line 30
    iput-object p2, p0, Lo/R$xml;->onMessageChannelReady:Lo/addString;

    .line 31
    iput-object p3, p0, Lo/R$xml;->ICustomTabsCallback:Lo/addString;

    .line 32
    iput-object p4, p0, Lo/R$xml;->extraCallback:Lo/addString;

    .line 33
    iput-object p5, p0, Lo/R$xml;->onPostMessage:Lo/addString;

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 7

    .line 1038
    new-instance v6, Lo/OaidClient;

    iget-object v0, p0, Lo/R$xml;->onNavigationEvent:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/b;

    iget-object v0, p0, Lo/R$xml;->onMessageChannelReady:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo/b;

    iget-object v0, p0, Lo/R$xml;->ICustomTabsCallback:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/a$a;

    iget-object v0, p0, Lo/R$xml;->extraCallback:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lo/ae;

    iget-object v0, p0, Lo/R$xml;->onPostMessage:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lo/ag;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/OaidClient;-><init>(Lo/b;Lo/b;Lo/a$a;Lo/ae;Lo/ag;)V

    return-object v6
.end method
