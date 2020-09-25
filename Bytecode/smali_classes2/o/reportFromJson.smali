.class final synthetic Lo/reportFromJson;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# static fields
.field private static final instance:Lo/reportFromJson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/reportFromJson;

    invoke-direct {v0}, Lo/reportFromJson;-><init>()V

    sput-object v0, Lo/reportFromJson;->instance:Lo/reportFromJson;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lo/isDefaultApp;
    .locals 1

    sget-object v0, Lo/reportFromJson;->instance:Lo/reportFromJson;

    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lo/eventFromJson;->lambda$static$0(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
