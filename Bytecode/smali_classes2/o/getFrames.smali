.class final synthetic Lo/getFrames;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final instance:Lo/getFrames;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getFrames;

    invoke-direct {v0}, Lo/getFrames;-><init>()V

    sput-object v0, Lo/getFrames;->instance:Lo/getFrames;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lo/getFrames;->instance:Lo/getFrames;

    return-object v0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lo/CrashlyticsReport$Builder;

    check-cast p2, Lo/CrashlyticsReport$Builder;

    invoke-static {p1, p2}, Lo/setBaseAddress;->lambda$getAllMutationBatchesAffectingDocumentKeys$9(Lo/CrashlyticsReport$Builder;Lo/CrashlyticsReport$Builder;)I

    move-result p1

    return p1
.end method
