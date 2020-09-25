.class final synthetic Lo/setModelClass;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/reportToJson;


# instance fields
.field private final arg$1:Lo/setCores;

.field private final arg$2:Ljava/util/Set;

.field private final arg$3:Ljava/util/List;

.field private final arg$4:Lo/getStream;


# direct methods
.method private constructor <init>(Lo/setCores;Ljava/util/Set;Ljava/util/List;Lo/getStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setModelClass;->arg$1:Lo/setCores;

    iput-object p2, p0, Lo/setModelClass;->arg$2:Ljava/util/Set;

    iput-object p3, p0, Lo/setModelClass;->arg$3:Ljava/util/List;

    iput-object p4, p0, Lo/setModelClass;->arg$4:Lo/getStream;

    return-void
.end method

.method public static lambdaFactory$(Lo/setCores;Ljava/util/Set;Ljava/util/List;Lo/getStream;)Lo/reportToJson;
    .locals 1

    new-instance v0, Lo/setModelClass;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/setModelClass;-><init>(Lo/setCores;Ljava/util/Set;Ljava/util/List;Lo/getStream;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lo/setModelClass;->arg$1:Lo/setCores;

    iget-object v1, p0, Lo/setModelClass;->arg$2:Ljava/util/Set;

    iget-object v2, p0, Lo/setModelClass;->arg$3:Ljava/util/List;

    iget-object v3, p0, Lo/setModelClass;->arg$4:Lo/getStream;

    invoke-static {v0, v1, v2, v3}, Lo/setCores;->lambda$writeLocally$1(Lo/setCores;Ljava/util/Set;Ljava/util/List;Lo/getStream;)Lo/AutoValue_CrashlyticsReport_Session_Event$1;

    move-result-object v0

    return-object v0
.end method
