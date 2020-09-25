.class public final Lo/replaceAllRemove;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008H\u0087\u0008J!\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0008\u0004\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008H\u0087\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dreamplug/utils/LifecycleUtils;",
        "",
        "()V",
        "executeIfResumed",
        "",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "action",
        "Lkotlin/Function0;",
        "executeOnResume",
        "Lcom/dreamplug/utils/helpers/Cancellable;",
        "onResume",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final arg$1:Lo/getEndedAt;

.field private final arg$2:Lo/AutoValue_CrashlyticsReport_Session_Application;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/getEndedAt;Lo/AutoValue_CrashlyticsReport_Session_Application;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/replaceAllRemove;->arg$1:Lo/getEndedAt;

    iput-object p2, p0, Lo/replaceAllRemove;->arg$2:Lo/AutoValue_CrashlyticsReport_Session_Application;

    return-void
.end method

.method public static lambdaFactory$(Lo/getEndedAt;Lo/AutoValue_CrashlyticsReport_Session_Application;)Ljava/util/concurrent/Callable;
    .locals 1

    .line 3000
    new-instance v0, Lo/replaceAllRemove;

    invoke-direct {v0, p0, p1}, Lo/replaceAllRemove;-><init>(Lo/getEndedAt;Lo/AutoValue_CrashlyticsReport_Session_Application;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/replaceAllRemove;->arg$1:Lo/getEndedAt;

    iget-object v1, p0, Lo/replaceAllRemove;->arg$2:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-static {v0, v1}, Lo/getEndedAt;->lambda$getDocumentsFromLocalCache$10(Lo/getEndedAt;Lo/AutoValue_CrashlyticsReport_Session_Application;)Lo/getDiskSpace;

    move-result-object v0

    return-object v0
.end method
