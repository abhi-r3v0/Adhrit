.class final synthetic Lo/setUuid;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/setBaseAddress;


# direct methods
.method private constructor <init>(Lo/setBaseAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setUuid;->arg$1:Lo/setBaseAddress;

    return-void
.end method

.method public static lambdaFactory$(Lo/setBaseAddress;)Lo/from;
    .locals 1

    new-instance v0, Lo/setUuid;

    invoke-direct {v0, p0}, Lo/setUuid;-><init>(Lo/setBaseAddress;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/setUuid;->arg$1:Lo/setBaseAddress;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lo/setBaseAddress;->lambda$start$0(Lo/setBaseAddress;Landroid/database/Cursor;)V

    return-void
.end method
