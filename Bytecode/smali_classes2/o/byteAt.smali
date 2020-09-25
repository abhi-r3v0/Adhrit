.class final synthetic Lo/byteAt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final instance:Lo/byteAt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/byteAt;

    invoke-direct {v0}, Lo/byteAt;-><init>()V

    sput-object v0, Lo/byteAt;->instance:Lo/byteAt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lo/byteAt;->instance:Lo/byteAt;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
