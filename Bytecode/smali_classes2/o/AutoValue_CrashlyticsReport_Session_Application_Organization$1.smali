.class final synthetic Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# static fields
.field private static final instance:Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$1;

    invoke-direct {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$1;-><init>()V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$1;->instance:Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lo/isDefaultApp;
    .locals 1

    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$1;->instance:Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$1;

    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lo/getClsId;->lambda$commit$1(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
