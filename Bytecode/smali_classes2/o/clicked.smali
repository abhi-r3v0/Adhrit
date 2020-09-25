.class public final enum Lo/clicked;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/clicked;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/clicked;

.field public static final enum ICustomTabsCallback$Stub:Lo/clicked;

.field public static final enum asBinder:Lo/clicked;

.field public static final enum asInterface:Lo/clicked;

.field public static final enum extraCallback:Lo/clicked;

.field private static final synthetic getInterfaceDescriptor:[Lo/clicked;

.field public static final enum onMessageChannelReady:Lo/clicked;

.field public static final enum onNavigationEvent:Lo/clicked;

.field public static final enum onPostMessage:Lo/clicked;

.field public static final enum onRelationshipValidationResult:Lo/clicked;

.field public static final enum onTransact:Lo/clicked;


# instance fields
.field private final ICustomTabsCallback$Stub$Proxy:Ljava/lang/Object;

.field private final ICustomTabsService:Ljava/lang/Class;
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
    new-instance v6, Lo/clicked;

    const-class v3, Ljava/lang/Void;

    const-class v4, Ljava/lang/Void;

    const-string v1, "VOID"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/clicked;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Lo/clicked;->ICustomTabsCallback:Lo/clicked;

    .line 9
    new-instance v0, Lo/clicked;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v8, "INT"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/clicked;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    .line 10
    new-instance v0, Lo/clicked;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "LONG"

    const/4 v4, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/clicked;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/clicked;->onPostMessage:Lo/clicked;

    .line 11
    new-instance v0, Lo/clicked;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const-string v9, "FLOAT"

    const/4 v10, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/clicked;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/clicked;->extraCallback:Lo/clicked;

    .line 12
    new-instance v0, Lo/clicked;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v3, "DOUBLE"

    const/4 v4, 0x4

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/clicked;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/clicked;->onNavigationEvent:Lo/clicked;

    .line 13
    new-instance v0, Lo/clicked;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v9, "BOOLEAN"

    const/4 v10, 0x5

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/clicked;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/clicked;->onRelationshipValidationResult:Lo/clicked;

    .line 14
    new-instance v0, Lo/clicked;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/String;

    const-string v3, "STRING"

    const/4 v4, 0x6

    const-string v7, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/clicked;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/clicked;->onTransact:Lo/clicked;

    .line 15
    new-instance v0, Lo/clicked;

    const-class v11, Lo/setMandatory;

    const-class v12, Lo/setMandatory;

    sget-object v13, Lo/setMandatory;->onMessageChannelReady:Lo/setMandatory;

    const-string v9, "BYTE_STRING"

    const/4 v10, 0x7

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/clicked;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/clicked;->asBinder:Lo/clicked;

    .line 16
    new-instance v0, Lo/clicked;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Integer;

    const-string v3, "ENUM"

    const/16 v4, 0x8

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/clicked;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/clicked;->ICustomTabsCallback$Stub:Lo/clicked;

    .line 17
    new-instance v0, Lo/clicked;

    const-class v11, Ljava/lang/Object;

    const-class v12, Ljava/lang/Object;

    const-string v9, "MESSAGE"

    const/16 v10, 0x9

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/clicked;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lo/clicked;->asInterface:Lo/clicked;

    const/16 v2, 0xa

    new-array v2, v2, [Lo/clicked;

    .line 18
    sget-object v3, Lo/clicked;->ICustomTabsCallback:Lo/clicked;

    aput-object v3, v2, v1

    sget-object v1, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    sget-object v1, Lo/clicked;->onPostMessage:Lo/clicked;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    sget-object v1, Lo/clicked;->extraCallback:Lo/clicked;

    const/4 v3, 0x3

    aput-object v1, v2, v3

    sget-object v1, Lo/clicked;->onNavigationEvent:Lo/clicked;

    const/4 v3, 0x4

    aput-object v1, v2, v3

    sget-object v1, Lo/clicked;->onRelationshipValidationResult:Lo/clicked;

    const/4 v3, 0x5

    aput-object v1, v2, v3

    sget-object v1, Lo/clicked;->onTransact:Lo/clicked;

    const/4 v3, 0x6

    aput-object v1, v2, v3

    sget-object v1, Lo/clicked;->asBinder:Lo/clicked;

    const/4 v3, 0x7

    aput-object v1, v2, v3

    sget-object v1, Lo/clicked;->ICustomTabsCallback$Stub:Lo/clicked;

    const/16 v3, 0x8

    aput-object v1, v2, v3

    const/16 v1, 0x9

    aput-object v0, v2, v1

    sput-object v2, Lo/clicked;->getInterfaceDescriptor:[Lo/clicked;

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
    iput-object p3, p0, Lo/clicked;->ICustomTabsService:Ljava/lang/Class;

    .line 4
    iput-object p4, p0, Lo/clicked;->warmup:Ljava/lang/Class;

    .line 5
    iput-object p5, p0, Lo/clicked;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Object;

    return-void
.end method

.method public static values()[Lo/clicked;
    .locals 1

    .line 1
    sget-object v0, Lo/clicked;->getInterfaceDescriptor:[Lo/clicked;

    invoke-virtual {v0}, [Lo/clicked;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/clicked;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lo/clicked;->warmup:Ljava/lang/Class;

    return-object v0
.end method
