.class public final Lo/SortedList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/upi/commandmanager/UpiCommandManagerTimeoutUtil;",
        "",
        "()V",
        "COMMANDS_WITHOUT_TIMEOUT",
        "",
        "",
        "getCOMMANDS_WITHOUT_TIMEOUT",
        "()Ljava/util/List;",
        "INIT_TIMEOUT_DEFAULT",
        "",
        "SESSION_TIMEOUT_DEFAULT",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/SortedList;

.field private static final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lo/SortedList;

    invoke-direct {v0}, Lo/SortedList;-><init>()V

    sput-object v0, Lo/SortedList;->ICustomTabsCallback:Lo/SortedList;

    const-string v0, "PAY"

    const-string v1, "SET_MPIN"

    const-string v2, "CHECK_BALANCE"

    const-string v3, "ACTIVITY_LIFECYCLE"

    .line 13
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "elements"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$asList"

    .line 1076
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ArraysUtilJVM.asList(this)"

    .line 1129
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sput-object v0, Lo/SortedList;->extraCallback:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPostMessage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    sget-object v0, Lo/SortedList;->extraCallback:Ljava/util/List;

    return-object v0
.end method
