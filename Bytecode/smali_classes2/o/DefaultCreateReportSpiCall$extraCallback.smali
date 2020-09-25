.class public final enum Lo/DefaultCreateReportSpiCall$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DefaultCreateReportSpiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/DefaultCreateReportSpiCall$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$extraCallback;

.field public static final enum ICustomTabsCallback$Stub:Lo/DefaultCreateReportSpiCall$extraCallback;

.field public static final enum asBinder:Lo/DefaultCreateReportSpiCall$extraCallback;

.field private static final synthetic asInterface:[Lo/DefaultCreateReportSpiCall$extraCallback;

.field public static final enum extraCallback:Lo/DefaultCreateReportSpiCall$extraCallback;

.field public static final enum onMessageChannelReady:Lo/DefaultCreateReportSpiCall$extraCallback;

.field public static final enum onNavigationEvent:Lo/DefaultCreateReportSpiCall$extraCallback;

.field public static final enum onPostMessage:Lo/DefaultCreateReportSpiCall$extraCallback;

.field public static final enum onRelationshipValidationResult:Lo/DefaultCreateReportSpiCall$extraCallback;

.field public static final enum onTransact:Lo/DefaultCreateReportSpiCall$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 85
    new-instance v0, Lo/DefaultCreateReportSpiCall$extraCallback;

    const/4 v1, 0x0

    const-string v2, "INT"

    invoke-direct {v0, v2, v1}, Lo/DefaultCreateReportSpiCall$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$extraCallback;

    .line 86
    new-instance v0, Lo/DefaultCreateReportSpiCall$extraCallback;

    const/4 v2, 0x1

    const-string v3, "LONG"

    invoke-direct {v0, v3, v2}, Lo/DefaultCreateReportSpiCall$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$extraCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$extraCallback;

    .line 87
    new-instance v0, Lo/DefaultCreateReportSpiCall$extraCallback;

    const/4 v3, 0x2

    const-string v4, "FLOAT"

    invoke-direct {v0, v4, v3}, Lo/DefaultCreateReportSpiCall$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$extraCallback;->onMessageChannelReady:Lo/DefaultCreateReportSpiCall$extraCallback;

    .line 88
    new-instance v0, Lo/DefaultCreateReportSpiCall$extraCallback;

    const/4 v4, 0x3

    const-string v5, "DOUBLE"

    invoke-direct {v0, v5, v4}, Lo/DefaultCreateReportSpiCall$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$extraCallback;->onNavigationEvent:Lo/DefaultCreateReportSpiCall$extraCallback;

    .line 89
    new-instance v0, Lo/DefaultCreateReportSpiCall$extraCallback;

    const/4 v5, 0x4

    const-string v6, "BOOLEAN"

    invoke-direct {v0, v6, v5}, Lo/DefaultCreateReportSpiCall$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$extraCallback;->extraCallback:Lo/DefaultCreateReportSpiCall$extraCallback;

    .line 90
    new-instance v0, Lo/DefaultCreateReportSpiCall$extraCallback;

    const/4 v6, 0x5

    const-string v7, "STRING"

    invoke-direct {v0, v7, v6}, Lo/DefaultCreateReportSpiCall$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$extraCallback;->ICustomTabsCallback$Stub:Lo/DefaultCreateReportSpiCall$extraCallback;

    .line 91
    new-instance v0, Lo/DefaultCreateReportSpiCall$extraCallback;

    sget-object v7, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    const/4 v7, 0x6

    const-string v8, "BYTE_STRING"

    invoke-direct {v0, v8, v7}, Lo/DefaultCreateReportSpiCall$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$extraCallback;->onTransact:Lo/DefaultCreateReportSpiCall$extraCallback;

    .line 92
    new-instance v0, Lo/DefaultCreateReportSpiCall$extraCallback;

    const/4 v8, 0x7

    const-string v9, "ENUM"

    invoke-direct {v0, v9, v8}, Lo/DefaultCreateReportSpiCall$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$extraCallback;->asBinder:Lo/DefaultCreateReportSpiCall$extraCallback;

    .line 93
    new-instance v0, Lo/DefaultCreateReportSpiCall$extraCallback;

    const/16 v9, 0x8

    const-string v10, "MESSAGE"

    invoke-direct {v0, v10, v9}, Lo/DefaultCreateReportSpiCall$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$extraCallback;->onRelationshipValidationResult:Lo/DefaultCreateReportSpiCall$extraCallback;

    const/16 v10, 0x9

    new-array v10, v10, [Lo/DefaultCreateReportSpiCall$extraCallback;

    .line 84
    sget-object v11, Lo/DefaultCreateReportSpiCall$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$extraCallback;

    aput-object v11, v10, v1

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$extraCallback;

    aput-object v1, v10, v2

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->onMessageChannelReady:Lo/DefaultCreateReportSpiCall$extraCallback;

    aput-object v1, v10, v3

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->onNavigationEvent:Lo/DefaultCreateReportSpiCall$extraCallback;

    aput-object v1, v10, v4

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->extraCallback:Lo/DefaultCreateReportSpiCall$extraCallback;

    aput-object v1, v10, v5

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->ICustomTabsCallback$Stub:Lo/DefaultCreateReportSpiCall$extraCallback;

    aput-object v1, v10, v6

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->onTransact:Lo/DefaultCreateReportSpiCall$extraCallback;

    aput-object v1, v10, v7

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->asBinder:Lo/DefaultCreateReportSpiCall$extraCallback;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lo/DefaultCreateReportSpiCall$extraCallback;->asInterface:[Lo/DefaultCreateReportSpiCall$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/DefaultCreateReportSpiCall$extraCallback;
    .locals 1

    .line 84
    const-class v0, Lo/DefaultCreateReportSpiCall$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/DefaultCreateReportSpiCall$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/DefaultCreateReportSpiCall$extraCallback;
    .locals 1

    .line 84
    sget-object v0, Lo/DefaultCreateReportSpiCall$extraCallback;->asInterface:[Lo/DefaultCreateReportSpiCall$extraCallback;

    invoke-virtual {v0}, [Lo/DefaultCreateReportSpiCall$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/DefaultCreateReportSpiCall$extraCallback;

    return-object v0
.end method
