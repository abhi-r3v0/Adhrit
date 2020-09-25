.class public final Lo/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/serverCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/serverCache<",
        "Lo/am;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/addString;Lo/addString;Lo/addString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addString<",
            "Landroid/content/Context;",
            ">;",
            "Lo/addString<",
            "Ljava/lang/String;",
            ">;",
            "Lo/addString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/b$d;->onNavigationEvent:Lo/addString;

    .line 22
    iput-object p2, p0, Lo/b$d;->ICustomTabsCallback:Lo/addString;

    .line 23
    iput-object p3, p0, Lo/b$d;->onMessageChannelReady:Lo/addString;

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 4

    .line 1028
    new-instance v0, Lo/am;

    iget-object v1, p0, Lo/b$d;->onNavigationEvent:Lo/addString;

    invoke-interface {v1}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lo/b$d;->ICustomTabsCallback:Lo/addString;

    invoke-interface {v2}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lo/b$d;->onMessageChannelReady:Lo/addString;

    invoke-interface {v3}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lo/am;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method
