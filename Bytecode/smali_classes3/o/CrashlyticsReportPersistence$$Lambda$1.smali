.class final synthetic Lo/CrashlyticsReportPersistence$$Lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPersistenceKey;


# static fields
.field private static final instance:Lo/CrashlyticsReportPersistence$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/CrashlyticsReportPersistence$$Lambda$1;

    invoke-direct {v0}, Lo/CrashlyticsReportPersistence$$Lambda$1;-><init>()V

    sput-object v0, Lo/CrashlyticsReportPersistence$$Lambda$1;->instance:Lo/CrashlyticsReportPersistence$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lo/getPersistenceKey;
    .locals 1

    sget-object v0, Lo/CrashlyticsReportPersistence$$Lambda$1;->instance:Lo/CrashlyticsReportPersistence$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    check-cast p1, Lo/ByteString;

    invoke-static {p1}, Lo/CrashlyticsReportPersistence$$Lambda$4;->lambda$setDefaultsWithStringsMapAsync$8(Lo/ByteString;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
