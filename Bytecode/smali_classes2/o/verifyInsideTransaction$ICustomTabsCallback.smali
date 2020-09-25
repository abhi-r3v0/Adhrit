.class final enum Lo/verifyInsideTransaction$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/verifyInsideTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/verifyInsideTransaction$ICustomTabsCallback;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/verifyInsideTransaction$ICustomTabsCallback;

.field private static final synthetic onPostMessage:[Lo/verifyInsideTransaction$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1057
    new-instance v0, Lo/verifyInsideTransaction$ICustomTabsCallback;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lo/verifyInsideTransaction$ICustomTabsCallback;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/verifyInsideTransaction$ICustomTabsCallback;->extraCallback:Lo/verifyInsideTransaction$ICustomTabsCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Lo/verifyInsideTransaction$ICustomTabsCallback;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 1056
    sput-object v1, Lo/verifyInsideTransaction$ICustomTabsCallback;->onPostMessage:[Lo/verifyInsideTransaction$ICustomTabsCallback;

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

    .line 1056
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/verifyInsideTransaction$ICustomTabsCallback;
    .locals 1

    .line 1056
    const-class v0, Lo/verifyInsideTransaction$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/verifyInsideTransaction$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/verifyInsideTransaction$ICustomTabsCallback;
    .locals 1

    .line 1056
    sget-object v0, Lo/verifyInsideTransaction$ICustomTabsCallback;->onPostMessage:[Lo/verifyInsideTransaction$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/verifyInsideTransaction$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/verifyInsideTransaction$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1061
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Context.DirectExecutor"

    return-object v0
.end method
