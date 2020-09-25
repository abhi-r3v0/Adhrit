.class public final Lo/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/serverCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/serverCache<",
        "Lo/ag$2;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Lo/addString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addString<",
            "Lo/b;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lo/a$d;->onMessageChannelReady:Lo/addString;

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 2

    .line 1023
    iget-object v0, p0, Lo/a$d;->onMessageChannelReady:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/b;

    .line 1031
    invoke-static {v0}, Lcom/google/android/datatransport/runtime/scheduling/SchedulingConfigModule;->onMessageChannelReady(Lo/b;)Lo/ag$2;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/ag$2;

    return-object v0

    .line 1048
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
