.class final synthetic Lo/getLog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/reportToJson;


# instance fields
.field private final arg$1:Lo/setCores;

.field private final arg$2:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;

.field private final arg$3:Lo/withNdkPayload;


# direct methods
.method private constructor <init>(Lo/setCores;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;Lo/withNdkPayload;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getLog;->arg$1:Lo/setCores;

    iput-object p2, p0, Lo/getLog;->arg$2:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;

    iput-object p3, p0, Lo/getLog;->arg$3:Lo/withNdkPayload;

    return-void
.end method

.method public static lambdaFactory$(Lo/setCores;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;Lo/withNdkPayload;)Lo/reportToJson;
    .locals 1

    new-instance v0, Lo/getLog;

    invoke-direct {v0, p0, p1, p2}, Lo/getLog;-><init>(Lo/setCores;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;Lo/withNdkPayload;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lo/getLog;->arg$1:Lo/setCores;

    iget-object v1, p0, Lo/getLog;->arg$2:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;

    iget-object v2, p0, Lo/getLog;->arg$3:Lo/withNdkPayload;

    invoke-static {v0, v1, v2}, Lo/setCores;->lambda$applyRemoteEvent$5(Lo/setCores;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;Lo/withNdkPayload;)Lo/populateFramesList;

    move-result-object v0

    return-object v0
.end method
