.class public final enum Lo/overrideProtocolAndHost;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/overrideProtocolAndHost;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/overrideProtocolAndHost;

.field private static final synthetic onPostMessage:[Lo/overrideProtocolAndHost;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lo/overrideProtocolAndHost;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lo/overrideProtocolAndHost;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/overrideProtocolAndHost;->ICustomTabsCallback:Lo/overrideProtocolAndHost;

    const/4 v1, 0x1

    new-array v1, v1, [Lo/overrideProtocolAndHost;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 24
    sput-object v1, Lo/overrideProtocolAndHost;->onPostMessage:[Lo/overrideProtocolAndHost;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/overrideProtocolAndHost;
    .locals 1

    .line 24
    const-class v0, Lo/overrideProtocolAndHost;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/overrideProtocolAndHost;

    return-object p0
.end method

.method public static values()[Lo/overrideProtocolAndHost;
    .locals 1

    .line 24
    sget-object v0, Lo/overrideProtocolAndHost;->onPostMessage:[Lo/overrideProtocolAndHost;

    invoke-virtual {v0}, [Lo/overrideProtocolAndHost;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/overrideProtocolAndHost;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 30
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
