.class final synthetic Lo/CrashlyticsController$ReportUploaderHandlingExceptionCheck;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/doBackgroundInitializationAsync;


# instance fields
.field private final arg$1:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CrashlyticsController$ReportUploaderHandlingExceptionCheck;->arg$1:Ljava/lang/Object;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/Object;)Lo/doBackgroundInitializationAsync;
    .locals 1

    new-instance v0, Lo/CrashlyticsController$ReportUploaderHandlingExceptionCheck;

    invoke-direct {v0, p0}, Lo/CrashlyticsController$ReportUploaderHandlingExceptionCheck;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final create(Lo/logException;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/CrashlyticsController$ReportUploaderHandlingExceptionCheck;->arg$1:Ljava/lang/Object;

    invoke-static {v0, p1}, Lo/getNativeReportFiles;->lambda$of$0(Ljava/lang/Object;Lo/logException;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
