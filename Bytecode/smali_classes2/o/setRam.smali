.class final synthetic Lo/setRam;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/reportToJson;


# instance fields
.field private final arg$1:Lo/setCores;

.field private final arg$2:Lo/getExecution;


# direct methods
.method private constructor <init>(Lo/setCores;Lo/getExecution;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setRam;->arg$1:Lo/setCores;

    iput-object p2, p0, Lo/setRam;->arg$2:Lo/getExecution;

    return-void
.end method

.method public static lambdaFactory$(Lo/setCores;Lo/getExecution;)Lo/reportToJson;
    .locals 1

    new-instance v0, Lo/setRam;

    invoke-direct {v0, p0, p1}, Lo/setRam;-><init>(Lo/setCores;Lo/getExecution;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo/setRam;->arg$1:Lo/setCores;

    iget-object v1, p0, Lo/setRam;->arg$2:Lo/getExecution;

    invoke-static {v0, v1}, Lo/setCores;->lambda$collectGarbage$9(Lo/setCores;Lo/getExecution;)Lo/getExecution$ICustomTabsCallback;

    move-result-object v0

    return-object v0
.end method
