.class final synthetic Lo/getEvents;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# static fields
.field private static final instance:Lo/getEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getEvents;

    invoke-direct {v0}, Lo/getEvents;-><init>()V

    sput-object v0, Lo/getEvents;->instance:Lo/getEvents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lo/isDefaultApp;
    .locals 1

    sget-object v0, Lo/getEvents;->instance:Lo/getEvents;

    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lo/getEndedAt;->lambda$getDocumentFromLocalCache$9(Lcom/google/android/gms/tasks/Task;)Lo/setDiskUsed;

    move-result-object p1

    return-object p1
.end method
