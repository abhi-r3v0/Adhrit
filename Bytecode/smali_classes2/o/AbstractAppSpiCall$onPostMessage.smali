.class final enum Lo/AbstractAppSpiCall$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AbstractAppSpiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/AbstractAppSpiCall$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/AbstractAppSpiCall$onPostMessage;

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/AbstractAppSpiCall$onPostMessage;

.field public static final enum asBinder:Lo/AbstractAppSpiCall$onPostMessage;

.field public static final enum extraCallback:Lo/AbstractAppSpiCall$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/AbstractAppSpiCall$onPostMessage;

.field public static final enum onNavigationEvent:Lo/AbstractAppSpiCall$onPostMessage;

.field public static final enum onPostMessage:Lo/AbstractAppSpiCall$onPostMessage;

.field public static final enum onRelationshipValidationResult:Lo/AbstractAppSpiCall$onPostMessage;

.field public static final enum onTransact:Lo/AbstractAppSpiCall$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 58
    new-instance v0, Lo/AbstractAppSpiCall$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "Array"

    invoke-direct {v0, v2, v1}, Lo/AbstractAppSpiCall$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AbstractAppSpiCall$onPostMessage;->ICustomTabsCallback:Lo/AbstractAppSpiCall$onPostMessage;

    new-instance v0, Lo/AbstractAppSpiCall$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "Boolean"

    invoke-direct {v0, v3, v2}, Lo/AbstractAppSpiCall$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AbstractAppSpiCall$onPostMessage;->onNavigationEvent:Lo/AbstractAppSpiCall$onPostMessage;

    new-instance v0, Lo/AbstractAppSpiCall$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "Datetime"

    invoke-direct {v0, v4, v3}, Lo/AbstractAppSpiCall$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AbstractAppSpiCall$onPostMessage;->extraCallback:Lo/AbstractAppSpiCall$onPostMessage;

    new-instance v0, Lo/AbstractAppSpiCall$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "Null"

    invoke-direct {v0, v5, v4}, Lo/AbstractAppSpiCall$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AbstractAppSpiCall$onPostMessage;->onPostMessage:Lo/AbstractAppSpiCall$onPostMessage;

    new-instance v0, Lo/AbstractAppSpiCall$onPostMessage;

    const/4 v5, 0x4

    const-string v6, "Number"

    invoke-direct {v0, v6, v5}, Lo/AbstractAppSpiCall$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AbstractAppSpiCall$onPostMessage;->onMessageChannelReady:Lo/AbstractAppSpiCall$onPostMessage;

    new-instance v0, Lo/AbstractAppSpiCall$onPostMessage;

    const/4 v6, 0x5

    const-string v7, "Object"

    invoke-direct {v0, v7, v6}, Lo/AbstractAppSpiCall$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AbstractAppSpiCall$onPostMessage;->asBinder:Lo/AbstractAppSpiCall$onPostMessage;

    new-instance v0, Lo/AbstractAppSpiCall$onPostMessage;

    const/4 v7, 0x6

    const-string v8, "String"

    invoke-direct {v0, v8, v7}, Lo/AbstractAppSpiCall$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AbstractAppSpiCall$onPostMessage;->onTransact:Lo/AbstractAppSpiCall$onPostMessage;

    new-instance v0, Lo/AbstractAppSpiCall$onPostMessage;

    const/4 v8, 0x7

    const-string v9, "Unknown"

    invoke-direct {v0, v9, v8}, Lo/AbstractAppSpiCall$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AbstractAppSpiCall$onPostMessage;->onRelationshipValidationResult:Lo/AbstractAppSpiCall$onPostMessage;

    const/16 v9, 0x8

    new-array v9, v9, [Lo/AbstractAppSpiCall$onPostMessage;

    .line 57
    sget-object v10, Lo/AbstractAppSpiCall$onPostMessage;->ICustomTabsCallback:Lo/AbstractAppSpiCall$onPostMessage;

    aput-object v10, v9, v1

    sget-object v1, Lo/AbstractAppSpiCall$onPostMessage;->onNavigationEvent:Lo/AbstractAppSpiCall$onPostMessage;

    aput-object v1, v9, v2

    sget-object v1, Lo/AbstractAppSpiCall$onPostMessage;->extraCallback:Lo/AbstractAppSpiCall$onPostMessage;

    aput-object v1, v9, v3

    sget-object v1, Lo/AbstractAppSpiCall$onPostMessage;->onPostMessage:Lo/AbstractAppSpiCall$onPostMessage;

    aput-object v1, v9, v4

    sget-object v1, Lo/AbstractAppSpiCall$onPostMessage;->onMessageChannelReady:Lo/AbstractAppSpiCall$onPostMessage;

    aput-object v1, v9, v5

    sget-object v1, Lo/AbstractAppSpiCall$onPostMessage;->asBinder:Lo/AbstractAppSpiCall$onPostMessage;

    aput-object v1, v9, v6

    sget-object v1, Lo/AbstractAppSpiCall$onPostMessage;->onTransact:Lo/AbstractAppSpiCall$onPostMessage;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lo/AbstractAppSpiCall$onPostMessage;->ICustomTabsCallback$Stub:[Lo/AbstractAppSpiCall$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/AbstractAppSpiCall$onPostMessage;
    .locals 1

    .line 57
    const-class v0, Lo/AbstractAppSpiCall$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/AbstractAppSpiCall$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/AbstractAppSpiCall$onPostMessage;
    .locals 1

    .line 57
    sget-object v0, Lo/AbstractAppSpiCall$onPostMessage;->ICustomTabsCallback$Stub:[Lo/AbstractAppSpiCall$onPostMessage;

    invoke-virtual {v0}, [Lo/AbstractAppSpiCall$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/AbstractAppSpiCall$onPostMessage;

    return-object v0
.end method
