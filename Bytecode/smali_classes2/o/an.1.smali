.class public final Lo/an;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/serverCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/serverCache<",
        "Lo/ak;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/b;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/am;",
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
            "Lo/aj;",
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
            "Lo/b;",
            ">;",
            "Lo/addString<",
            "Lo/b;",
            ">;",
            "Lo/addString<",
            "Lo/aj;",
            ">;",
            "Lo/addString<",
            "Lo/am;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lo/an;->onNavigationEvent:Lo/addString;

    .line 24
    iput-object p2, p0, Lo/an;->ICustomTabsCallback:Lo/addString;

    .line 25
    iput-object p3, p0, Lo/an;->onPostMessage:Lo/addString;

    .line 26
    iput-object p4, p0, Lo/an;->extraCallback:Lo/addString;

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 5

    .line 1031
    new-instance v0, Lo/ak;

    iget-object v1, p0, Lo/an;->onNavigationEvent:Lo/addString;

    invoke-interface {v1}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/b;

    iget-object v2, p0, Lo/an;->ICustomTabsCallback:Lo/addString;

    invoke-interface {v2}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/b;

    iget-object v3, p0, Lo/an;->onPostMessage:Lo/addString;

    invoke-interface {v3}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/aj;

    iget-object v4, p0, Lo/an;->extraCallback:Lo/addString;

    invoke-interface {v4}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/am;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/ak;-><init>(Lo/b;Lo/b;Lo/aj;Lo/am;)V

    return-object v0
.end method
