.class final synthetic Lo/isBuildIdValid;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/access$lambda$4;


# instance fields
.field private final arg$1:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/isBuildIdValid;->arg$1:Ljava/util/Set;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/Set;)Lo/access$lambda$4;
    .locals 1

    new-instance v0, Lo/isBuildIdValid;

    invoke-direct {v0, p0}, Lo/isBuildIdValid;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/isBuildIdValid;->arg$1:Ljava/util/Set;

    invoke-static {v0}, Lo/checkForPreviousCrash;->lambda$processSetComponents$1(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
