.class final synthetic Lo/setOverflowCount;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/listIterator;


# static fields
.field private static final instance:Lo/setOverflowCount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setOverflowCount;

    invoke-direct {v0}, Lo/setOverflowCount;-><init>()V

    sput-object v0, Lo/setOverflowCount;->instance:Lo/setOverflowCount;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lo/listIterator;
    .locals 1

    sget-object v0, Lo/setOverflowCount;->instance:Lo/setOverflowCount;

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lo/setBaseAddress;->lambda$getHighestUnacknowledgedBatchId$5(Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
