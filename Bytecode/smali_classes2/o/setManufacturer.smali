.class final synthetic Lo/setManufacturer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/reportToJson;


# instance fields
.field private final arg$1:Lo/setCores;

.field private final arg$2:Lo/CrashlyticsReport$Architecture;


# direct methods
.method private constructor <init>(Lo/setCores;Lo/CrashlyticsReport$Architecture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setManufacturer;->arg$1:Lo/setCores;

    iput-object p2, p0, Lo/setManufacturer;->arg$2:Lo/CrashlyticsReport$Architecture;

    return-void
.end method

.method public static lambdaFactory$(Lo/setCores;Lo/CrashlyticsReport$Architecture;)Lo/reportToJson;
    .locals 1

    new-instance v0, Lo/setManufacturer;

    invoke-direct {v0, p0, p1}, Lo/setManufacturer;-><init>(Lo/setCores;Lo/CrashlyticsReport$Architecture;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo/setManufacturer;->arg$1:Lo/setCores;

    iget-object v1, p0, Lo/setManufacturer;->arg$2:Lo/CrashlyticsReport$Architecture;

    invoke-static {v0, v1}, Lo/setCores;->lambda$acknowledgeBatch$2(Lo/setCores;Lo/CrashlyticsReport$Architecture;)Lo/populateFramesList;

    move-result-object v0

    return-object v0
.end method
