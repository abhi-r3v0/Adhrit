.class public final enum Lo/newCursor;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/newCursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/newCursor;

.field public static final enum ICustomTabsCallback$Stub:Lo/newCursor;

.field private static final synthetic ICustomTabsService:[Lo/newCursor;

.field public static final enum asBinder:Lo/newCursor;

.field public static final enum asInterface:Lo/newCursor;

.field public static final enum extraCallback:Lo/newCursor;

.field public static final enum onMessageChannelReady:Lo/newCursor;

.field public static final enum onNavigationEvent:Lo/newCursor;

.field public static final enum onPostMessage:Lo/newCursor;

.field public static final enum onRelationshipValidationResult:Lo/newCursor;

.field public static final enum onTransact:Lo/newCursor;


# instance fields
.field private final ICustomTabsCallback$Stub$Proxy:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final getInterfaceDescriptor:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final warmup:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v6, Lo/newCursor;

    const-class v3, Ljava/lang/Void;

    const-class v4, Ljava/lang/Void;

    const-string v1, "VOID"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/newCursor;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Lo/newCursor;->extraCallback:Lo/newCursor;

    new-instance v0, Lo/newCursor;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v8, "INT"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/newCursor;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/newCursor;->onPostMessage:Lo/newCursor;

    new-instance v0, Lo/newCursor;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "LONG"

    const/4 v4, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/newCursor;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    new-instance v0, Lo/newCursor;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const-string v9, "FLOAT"

    const/4 v10, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/newCursor;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/newCursor;->ICustomTabsCallback:Lo/newCursor;

    new-instance v0, Lo/newCursor;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v3, "DOUBLE"

    const/4 v4, 0x4

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/newCursor;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/newCursor;->onMessageChannelReady:Lo/newCursor;

    new-instance v0, Lo/newCursor;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v9, "BOOLEAN"

    const/4 v10, 0x5

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/newCursor;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/newCursor;->asBinder:Lo/newCursor;

    new-instance v0, Lo/newCursor;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/String;

    const-string v3, "STRING"

    const/4 v4, 0x6

    const-string v7, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/newCursor;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/newCursor;->asInterface:Lo/newCursor;

    new-instance v0, Lo/newCursor;

    const-class v11, Lo/setTopInset;

    const-class v12, Lo/setTopInset;

    sget-object v13, Lo/setTopInset;->extraCallback:Lo/setTopInset;

    const-string v9, "BYTE_STRING"

    const/4 v10, 0x7

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/newCursor;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/newCursor;->ICustomTabsCallback$Stub:Lo/newCursor;

    new-instance v0, Lo/newCursor;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Integer;

    const-string v3, "ENUM"

    const/16 v4, 0x8

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/newCursor;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/newCursor;->onRelationshipValidationResult:Lo/newCursor;

    new-instance v0, Lo/newCursor;

    const-class v11, Ljava/lang/Object;

    const-class v12, Ljava/lang/Object;

    const-string v9, "MESSAGE"

    const/16 v10, 0x9

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/newCursor;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/newCursor;->onTransact:Lo/newCursor;

    const/16 v2, 0xa

    new-array v2, v2, [Lo/newCursor;

    sget-object v3, Lo/newCursor;->extraCallback:Lo/newCursor;

    aput-object v3, v2, v1

    sget-object v1, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    sget-object v1, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    sget-object v1, Lo/newCursor;->ICustomTabsCallback:Lo/newCursor;

    const/4 v3, 0x3

    aput-object v1, v2, v3

    sget-object v1, Lo/newCursor;->onMessageChannelReady:Lo/newCursor;

    const/4 v3, 0x4

    aput-object v1, v2, v3

    sget-object v1, Lo/newCursor;->asBinder:Lo/newCursor;

    const/4 v3, 0x5

    aput-object v1, v2, v3

    sget-object v1, Lo/newCursor;->asInterface:Lo/newCursor;

    const/4 v3, 0x6

    aput-object v1, v2, v3

    sget-object v1, Lo/newCursor;->ICustomTabsCallback$Stub:Lo/newCursor;

    const/4 v3, 0x7

    aput-object v1, v2, v3

    sget-object v1, Lo/newCursor;->onRelationshipValidationResult:Lo/newCursor;

    const/16 v3, 0x8

    aput-object v1, v2, v3

    const/16 v1, 0x9

    aput-object v0, v2, v1

    sput-object v2, Lo/newCursor;->ICustomTabsService:[Lo/newCursor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lo/newCursor;->getInterfaceDescriptor:Ljava/lang/Class;

    iput-object p4, p0, Lo/newCursor;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Class;

    iput-object p5, p0, Lo/newCursor;->warmup:Ljava/lang/Object;

    return-void
.end method

.method public static values()[Lo/newCursor;
    .locals 1

    sget-object v0, Lo/newCursor;->ICustomTabsService:[Lo/newCursor;

    invoke-virtual {v0}, [Lo/newCursor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/newCursor;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lo/newCursor;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Class;

    return-object v0
.end method
