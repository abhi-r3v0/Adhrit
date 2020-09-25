.class final synthetic Lo/getUuid;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/listIterator;


# static fields
.field private static final instance:Lo/getUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getUuid;

    invoke-direct {v0}, Lo/getUuid;-><init>()V

    sput-object v0, Lo/getUuid;->instance:Lo/getUuid;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lo/listIterator;
    .locals 1

    sget-object v0, Lo/getUuid;->instance:Lo/getUuid;

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lo/getBaseAddress;->lambda$getSequenceNumberCount$0(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
