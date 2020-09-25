.class final synthetic Lo/QueueFileLogStore$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/QueueFile$1;


# static fields
.field private static final instance:Lo/QueueFileLogStore$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/QueueFileLogStore$1;

    invoke-direct {v0}, Lo/QueueFileLogStore$1;-><init>()V

    sput-object v0, Lo/QueueFileLogStore$1;->instance:Lo/QueueFileLogStore$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lo/QueueFile$1;
    .locals 1

    sget-object v0, Lo/QueueFileLogStore$1;->instance:Lo/QueueFileLogStore$1;

    return-object v0
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lo/QueueFile$Element;

    invoke-static {p1, p2}, Lo/QueueFileLogStore$LogBytes;->lambda$static$0(Ljava/lang/Object;Lo/QueueFile$Element;)V

    return-void
.end method
