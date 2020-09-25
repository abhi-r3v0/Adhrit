.class public final Lo/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/serverCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/serverCache<",
        "Lo/ai;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/ag$2;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/b;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;",
            "Lo/addString<",
            "Lo/ah;",
            ">;",
            "Lo/addString<",
            "Lo/ag$2;",
            ">;",
            "Lo/addString<",
            "Lo/b;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/a$e;->onPostMessage:Lo/addString;

    .line 30
    iput-object p2, p0, Lo/a$e;->onMessageChannelReady:Lo/addString;

    .line 31
    iput-object p3, p0, Lo/a$e;->ICustomTabsCallback:Lo/addString;

    .line 32
    iput-object p4, p0, Lo/a$e;->extraCallback:Lo/addString;

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 4

    .line 1037
    iget-object v0, p0, Lo/a$e;->onPostMessage:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lo/a$e;->onMessageChannelReady:Lo/addString;

    invoke-interface {v1}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ah;

    iget-object v2, p0, Lo/a$e;->ICustomTabsCallback:Lo/addString;

    invoke-interface {v2}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ag$2;

    iget-object v3, p0, Lo/a$e;->extraCallback:Lo/addString;

    invoke-interface {v3}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/b;

    .line 1048
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule;->onMessageChannelReady(Landroid/content/Context;Lo/ah;Lo/ag$2;Lo/b;)Lo/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/ai;

    return-object v0

    .line 2048
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
