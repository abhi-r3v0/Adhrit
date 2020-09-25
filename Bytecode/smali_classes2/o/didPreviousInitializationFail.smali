.class final synthetic Lo/didPreviousInitializationFail;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/access$lambda$4;


# instance fields
.field private final arg$1:Lo/checkForPreviousCrash;

.field private final arg$2:Lo/getNativeReportFiles;


# direct methods
.method private constructor <init>(Lo/checkForPreviousCrash;Lo/getNativeReportFiles;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/didPreviousInitializationFail;->arg$1:Lo/checkForPreviousCrash;

    iput-object p2, p0, Lo/didPreviousInitializationFail;->arg$2:Lo/getNativeReportFiles;

    return-void
.end method

.method public static lambdaFactory$(Lo/checkForPreviousCrash;Lo/getNativeReportFiles;)Lo/access$lambda$4;
    .locals 1

    new-instance v0, Lo/didPreviousInitializationFail;

    invoke-direct {v0, p0, p1}, Lo/didPreviousInitializationFail;-><init>(Lo/checkForPreviousCrash;Lo/getNativeReportFiles;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo/didPreviousInitializationFail;->arg$1:Lo/checkForPreviousCrash;

    iget-object v1, p0, Lo/didPreviousInitializationFail;->arg$2:Lo/getNativeReportFiles;

    invoke-static {v0, v1}, Lo/checkForPreviousCrash;->lambda$new$0(Lo/checkForPreviousCrash;Lo/getNativeReportFiles;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
