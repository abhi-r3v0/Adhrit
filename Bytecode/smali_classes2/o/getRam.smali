.class Lo/getRam;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final BY_KEY:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lo/getRam;",
            ">;"
        }
    .end annotation
.end field

.field static final BY_TARGET:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lo/getRam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

.field private final targetOrBatchId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    invoke-static {}, Lo/getManufacturer;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lo/getRam;->BY_KEY:Ljava/util/Comparator;

    .line 66
    invoke-static {}, Lo/getModelClass;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lo/getRam;->BY_TARGET:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/getRam;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 39
    iput p2, p0, Lo/getRam;->targetOrBatchId:I

    return-void
.end method

.method static synthetic lambda$static$0(Lo/getRam;Lo/getRam;)I
    .locals 2

    .line 58
    iget-object v0, p0, Lo/getRam;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    iget-object v1, p1, Lo/getRam;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->compareTo(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 63
    :cond_0
    iget p0, p0, Lo/getRam;->targetOrBatchId:I

    iget p1, p1, Lo/getRam;->targetOrBatchId:I

    invoke-static {p0, p1}, Lo/eventFromJson;->compareIntegers(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$1(Lo/getRam;Lo/getRam;)I
    .locals 2

    .line 68
    iget v0, p0, Lo/getRam;->targetOrBatchId:I

    iget v1, p1, Lo/getRam;->targetOrBatchId:I

    invoke-static {v0, v1}, Lo/eventFromJson;->compareIntegers(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 74
    :cond_0
    iget-object p0, p0, Lo/getRam;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    iget-object p1, p1, Lo/getRam;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->compareTo(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)I

    move-result p0

    return p0
.end method


# virtual methods
.method getId()I
    .locals 1

    .line 52
    iget v0, p0, Lo/getRam;->targetOrBatchId:I

    return v0
.end method

.method getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/getRam;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    return-object v0
.end method
