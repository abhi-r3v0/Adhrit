.class public final Lo/query;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/serverCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/serverCache<",
        "Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;",
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
            "Landroid/content/Context;",
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
            "Lo/b;",
            ">;",
            "Lo/addString<",
            "Lo/b;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lo/query;->extraCallback:Lo/addString;

    .line 23
    iput-object p2, p0, Lo/query;->onMessageChannelReady:Lo/addString;

    .line 24
    iput-object p3, p0, Lo/query;->ICustomTabsCallback:Lo/addString;

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 4

    .line 1029
    new-instance v0, Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;

    iget-object v1, p0, Lo/query;->extraCallback:Lo/addString;

    invoke-interface {v1}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lo/query;->onMessageChannelReady:Lo/addString;

    invoke-interface {v2}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/b;

    iget-object v3, p0, Lo/query;->ICustomTabsCallback:Lo/addString;

    invoke-interface {v3}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;-><init>(Landroid/content/Context;Lo/b;Lo/b;)V

    return-object v0
.end method
