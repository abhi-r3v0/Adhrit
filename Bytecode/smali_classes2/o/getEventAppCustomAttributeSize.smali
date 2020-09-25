.class public final enum Lo/getEventAppCustomAttributeSize;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getEventAppCustomAttributeSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getEventAppCustomAttributeSize;

.field public static final enum ICustomTabsCallback$Stub:Lo/getEventAppCustomAttributeSize;

.field public static final enum asBinder:Lo/getEventAppCustomAttributeSize;

.field public static final enum asInterface:Lo/getEventAppCustomAttributeSize;

.field public static final enum extraCallback:Lo/getEventAppCustomAttributeSize;

.field public static final enum onMessageChannelReady:Lo/getEventAppCustomAttributeSize;

.field public static final enum onNavigationEvent:Lo/getEventAppCustomAttributeSize;

.field public static final enum onPostMessage:Lo/getEventAppCustomAttributeSize;

.field public static final enum onRelationshipValidationResult:Lo/getEventAppCustomAttributeSize;

.field public static final enum onTransact:Lo/getEventAppCustomAttributeSize;

.field private static final synthetic warmup:[Lo/getEventAppCustomAttributeSize;


# instance fields
.field final ICustomTabsCallback$Stub$Proxy:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 36
    new-instance v0, Lo/getEventAppCustomAttributeSize;

    const-class v1, Ljava/lang/Void;

    const/4 v2, 0x0

    const-string v3, "VOID"

    invoke-direct {v0, v3, v2, v1}, Lo/getEventAppCustomAttributeSize;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lo/getEventAppCustomAttributeSize;->onNavigationEvent:Lo/getEventAppCustomAttributeSize;

    .line 37
    new-instance v0, Lo/getEventAppCustomAttributeSize;

    const-class v1, Ljava/lang/Integer;

    const/4 v3, 0x1

    const-string v4, "INT"

    invoke-direct {v0, v4, v3, v1}, Lo/getEventAppCustomAttributeSize;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lo/getEventAppCustomAttributeSize;->onPostMessage:Lo/getEventAppCustomAttributeSize;

    .line 38
    new-instance v0, Lo/getEventAppCustomAttributeSize;

    const-class v1, Ljava/lang/Long;

    const/4 v4, 0x2

    const-string v5, "LONG"

    invoke-direct {v0, v5, v4, v1}, Lo/getEventAppCustomAttributeSize;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lo/getEventAppCustomAttributeSize;->onMessageChannelReady:Lo/getEventAppCustomAttributeSize;

    .line 39
    new-instance v0, Lo/getEventAppCustomAttributeSize;

    const-class v1, Ljava/lang/Float;

    const/4 v5, 0x3

    const-string v6, "FLOAT"

    invoke-direct {v0, v6, v5, v1}, Lo/getEventAppCustomAttributeSize;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lo/getEventAppCustomAttributeSize;->ICustomTabsCallback:Lo/getEventAppCustomAttributeSize;

    .line 40
    new-instance v0, Lo/getEventAppCustomAttributeSize;

    const-class v1, Ljava/lang/Double;

    const/4 v6, 0x4

    const-string v7, "DOUBLE"

    invoke-direct {v0, v7, v6, v1}, Lo/getEventAppCustomAttributeSize;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lo/getEventAppCustomAttributeSize;->extraCallback:Lo/getEventAppCustomAttributeSize;

    .line 41
    new-instance v0, Lo/getEventAppCustomAttributeSize;

    const-class v1, Ljava/lang/Boolean;

    const/4 v7, 0x5

    const-string v8, "BOOLEAN"

    invoke-direct {v0, v8, v7, v1}, Lo/getEventAppCustomAttributeSize;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lo/getEventAppCustomAttributeSize;->asBinder:Lo/getEventAppCustomAttributeSize;

    .line 42
    new-instance v0, Lo/getEventAppCustomAttributeSize;

    const-class v1, Ljava/lang/String;

    const/4 v8, 0x6

    const-string v9, "STRING"

    invoke-direct {v0, v9, v8, v1}, Lo/getEventAppCustomAttributeSize;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lo/getEventAppCustomAttributeSize;->asInterface:Lo/getEventAppCustomAttributeSize;

    .line 43
    new-instance v0, Lo/getEventAppCustomAttributeSize;

    const-class v1, Lo/SessionProtobufHelper;

    const-class v1, Lo/SessionProtobufHelper;

    sget-object v9, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    const/4 v9, 0x7

    const-string v10, "BYTE_STRING"

    invoke-direct {v0, v10, v9, v1}, Lo/getEventAppCustomAttributeSize;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lo/getEventAppCustomAttributeSize;->onRelationshipValidationResult:Lo/getEventAppCustomAttributeSize;

    .line 44
    new-instance v0, Lo/getEventAppCustomAttributeSize;

    const-class v1, Ljava/lang/Integer;

    const/16 v10, 0x8

    const-string v11, "ENUM"

    invoke-direct {v0, v11, v10, v1}, Lo/getEventAppCustomAttributeSize;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lo/getEventAppCustomAttributeSize;->ICustomTabsCallback$Stub:Lo/getEventAppCustomAttributeSize;

    .line 45
    new-instance v0, Lo/getEventAppCustomAttributeSize;

    const-class v1, Ljava/lang/Object;

    const/16 v11, 0x9

    const-string v12, "MESSAGE"

    invoke-direct {v0, v12, v11, v1}, Lo/getEventAppCustomAttributeSize;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lo/getEventAppCustomAttributeSize;->onTransact:Lo/getEventAppCustomAttributeSize;

    const/16 v1, 0xa

    new-array v1, v1, [Lo/getEventAppCustomAttributeSize;

    .line 34
    sget-object v12, Lo/getEventAppCustomAttributeSize;->onNavigationEvent:Lo/getEventAppCustomAttributeSize;

    aput-object v12, v1, v2

    sget-object v2, Lo/getEventAppCustomAttributeSize;->onPostMessage:Lo/getEventAppCustomAttributeSize;

    aput-object v2, v1, v3

    sget-object v2, Lo/getEventAppCustomAttributeSize;->onMessageChannelReady:Lo/getEventAppCustomAttributeSize;

    aput-object v2, v1, v4

    sget-object v2, Lo/getEventAppCustomAttributeSize;->ICustomTabsCallback:Lo/getEventAppCustomAttributeSize;

    aput-object v2, v1, v5

    sget-object v2, Lo/getEventAppCustomAttributeSize;->extraCallback:Lo/getEventAppCustomAttributeSize;

    aput-object v2, v1, v6

    sget-object v2, Lo/getEventAppCustomAttributeSize;->asBinder:Lo/getEventAppCustomAttributeSize;

    aput-object v2, v1, v7

    sget-object v2, Lo/getEventAppCustomAttributeSize;->asInterface:Lo/getEventAppCustomAttributeSize;

    aput-object v2, v1, v8

    sget-object v2, Lo/getEventAppCustomAttributeSize;->onRelationshipValidationResult:Lo/getEventAppCustomAttributeSize;

    aput-object v2, v1, v9

    sget-object v2, Lo/getEventAppCustomAttributeSize;->ICustomTabsCallback$Stub:Lo/getEventAppCustomAttributeSize;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lo/getEventAppCustomAttributeSize;->warmup:[Lo/getEventAppCustomAttributeSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lo/getEventAppCustomAttributeSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getEventAppCustomAttributeSize;
    .locals 1

    .line 34
    const-class v0, Lo/getEventAppCustomAttributeSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getEventAppCustomAttributeSize;

    return-object p0
.end method

.method public static values()[Lo/getEventAppCustomAttributeSize;
    .locals 1

    .line 34
    sget-object v0, Lo/getEventAppCustomAttributeSize;->warmup:[Lo/getEventAppCustomAttributeSize;

    invoke-virtual {v0}, [Lo/getEventAppCustomAttributeSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getEventAppCustomAttributeSize;

    return-object v0
.end method
