.class public final Lo/valid;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/serverCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/serverCache<",
        "Lo/EventDataCollector;",
        ">;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/addString;Lo/addString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addString<",
            "Landroid/content/Context;",
            ">;",
            "Lo/addString<",
            "Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lo/valid;->onNavigationEvent:Lo/addString;

    .line 20
    iput-object p2, p0, Lo/valid;->onPostMessage:Lo/addString;

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 3

    .line 1025
    new-instance v0, Lo/EventDataCollector;

    iget-object v1, p0, Lo/valid;->onNavigationEvent:Lo/addString;

    invoke-interface {v1}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lo/valid;->onPostMessage:Lo/addString;

    invoke-interface {v2}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;

    invoke-direct {v0, v1, v2}, Lo/EventDataCollector;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;)V

    return-object v0
.end method
