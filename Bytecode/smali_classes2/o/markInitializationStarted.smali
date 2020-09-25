.class final synthetic Lo/markInitializationStarted;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/access$lambda$4;


# static fields
.field private static final instance:Lo/markInitializationStarted;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/markInitializationStarted;

    invoke-direct {v0}, Lo/markInitializationStarted;-><init>()V

    sput-object v0, Lo/markInitializationStarted;->instance:Lo/markInitializationStarted;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lo/access$lambda$4;
    .locals 1

    sget-object v0, Lo/markInitializationStarted;->instance:Lo/markInitializationStarted;

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
