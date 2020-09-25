.class public final enum Lo/az$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/az$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/az$c;

.field public static final enum ICustomTabsCallback$Stub:Lo/az$c;

.field private static final synthetic ICustomTabsCallback$Stub$Proxy:[Lo/az$c;

.field public static final enum asBinder:Lo/az$c;

.field public static final enum asInterface:Lo/az$c;

.field public static final enum extraCallback:Lo/az$c;

.field public static final enum onMessageChannelReady:Lo/az$c;

.field public static final enum onNavigationEvent:Lo/az$c;

.field public static final enum onPostMessage:Lo/az$c;

.field public static final enum onRelationshipValidationResult:Lo/az$c;

.field public static final enum onTransact:Lo/az$c;


# instance fields
.field private final ICustomTabsService:Ljava/lang/Object;

.field private final getInterfaceDescriptor:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final warmup:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 8
    new-instance v6, Lo/az$c;

    const-class v3, Ljava/lang/Void;

    const-class v4, Ljava/lang/Void;

    const-string v1, "VOID"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/az$c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Lo/az$c;->extraCallback:Lo/az$c;

    .line 9
    new-instance v0, Lo/az$c;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v8, "INT"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/az$c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/az$c;->onNavigationEvent:Lo/az$c;

    .line 10
    new-instance v0, Lo/az$c;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "LONG"

    const/4 v4, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/az$c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/az$c;->onPostMessage:Lo/az$c;

    .line 11
    new-instance v0, Lo/az$c;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const-string v9, "FLOAT"

    const/4 v10, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/az$c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/az$c;->onMessageChannelReady:Lo/az$c;

    .line 12
    new-instance v0, Lo/az$c;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v3, "DOUBLE"

    const/4 v4, 0x4

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/az$c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/az$c;->ICustomTabsCallback:Lo/az$c;

    .line 13
    new-instance v0, Lo/az$c;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v9, "BOOLEAN"

    const/4 v10, 0x5

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/az$c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/az$c;->onRelationshipValidationResult:Lo/az$c;

    .line 14
    new-instance v0, Lo/az$c;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/String;

    const-string v3, "STRING"

    const/4 v4, 0x6

    const-string v7, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/az$c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/az$c;->asInterface:Lo/az$c;

    .line 15
    new-instance v0, Lo/az$c;

    const-class v11, Lo/ac$1;

    const-class v12, Lo/ac$1;

    sget-object v13, Lo/ac$1;->onNavigationEvent:Lo/ac$1;

    const-string v9, "BYTE_STRING"

    const/4 v10, 0x7

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/az$c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/az$c;->onTransact:Lo/az$c;

    .line 16
    new-instance v0, Lo/az$c;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Integer;

    const-string v3, "ENUM"

    const/16 v4, 0x8

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/az$c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/az$c;->asBinder:Lo/az$c;

    .line 17
    new-instance v0, Lo/az$c;

    const-class v11, Ljava/lang/Object;

    const-class v12, Ljava/lang/Object;

    const-string v9, "MESSAGE"

    const/16 v10, 0x9

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/az$c;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/az$c;->ICustomTabsCallback$Stub:Lo/az$c;

    const/16 v2, 0xa

    new-array v2, v2, [Lo/az$c;

    .line 18
    sget-object v3, Lo/az$c;->extraCallback:Lo/az$c;

    aput-object v3, v2, v1

    sget-object v1, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    sget-object v1, Lo/az$c;->onPostMessage:Lo/az$c;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    sget-object v1, Lo/az$c;->onMessageChannelReady:Lo/az$c;

    const/4 v3, 0x3

    aput-object v1, v2, v3

    sget-object v1, Lo/az$c;->ICustomTabsCallback:Lo/az$c;

    const/4 v3, 0x4

    aput-object v1, v2, v3

    sget-object v1, Lo/az$c;->onRelationshipValidationResult:Lo/az$c;

    const/4 v3, 0x5

    aput-object v1, v2, v3

    sget-object v1, Lo/az$c;->asInterface:Lo/az$c;

    const/4 v3, 0x6

    aput-object v1, v2, v3

    sget-object v1, Lo/az$c;->onTransact:Lo/az$c;

    const/4 v3, 0x7

    aput-object v1, v2, v3

    sget-object v1, Lo/az$c;->asBinder:Lo/az$c;

    const/16 v3, 0x8

    aput-object v1, v2, v3

    const/16 v1, 0x9

    aput-object v0, v2, v1

    sput-object v2, Lo/az$c;->ICustomTabsCallback$Stub$Proxy:[Lo/az$c;

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

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lo/az$c;->warmup:Ljava/lang/Class;

    .line 4
    iput-object p4, p0, Lo/az$c;->getInterfaceDescriptor:Ljava/lang/Class;

    .line 5
    iput-object p5, p0, Lo/az$c;->ICustomTabsService:Ljava/lang/Object;

    return-void
.end method

.method public static values()[Lo/az$c;
    .locals 1

    .line 1
    sget-object v0, Lo/az$c;->ICustomTabsCallback$Stub$Proxy:[Lo/az$c;

    invoke-virtual {v0}, [Lo/az$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/az$c;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lo/az$c;->getInterfaceDescriptor:Ljava/lang/Class;

    return-object v0
.end method
