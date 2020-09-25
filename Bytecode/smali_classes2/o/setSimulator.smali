.class final synthetic Lo/setSimulator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/reportToJson;


# instance fields
.field private final arg$1:Lo/setCores;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Lo/setCores;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setSimulator;->arg$1:Lo/setCores;

    iput p2, p0, Lo/setSimulator;->arg$2:I

    return-void
.end method

.method public static lambdaFactory$(Lo/setCores;I)Lo/reportToJson;
    .locals 1

    new-instance v0, Lo/setSimulator;

    invoke-direct {v0, p0, p1}, Lo/setSimulator;-><init>(Lo/setCores;I)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo/setSimulator;->arg$1:Lo/setCores;

    iget v1, p0, Lo/setSimulator;->arg$2:I

    invoke-static {v0, v1}, Lo/setCores;->lambda$rejectBatch$3(Lo/setCores;I)Lo/populateFramesList;

    move-result-object v0

    return-object v0
.end method
