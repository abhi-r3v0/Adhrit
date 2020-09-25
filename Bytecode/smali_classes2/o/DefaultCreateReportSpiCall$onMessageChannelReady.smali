.class public enum Lo/DefaultCreateReportSpiCall$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DefaultCreateReportSpiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/DefaultCreateReportSpiCall$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum ICustomTabsCallback$Stub:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum ICustomTabsCallback$Stub$Proxy:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum ICustomTabsService:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field private static final synthetic IPostMessageService$Stub:[Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum asBinder:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum asInterface:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum extraCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum extraCommand:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum getInterfaceDescriptor:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum mayLaunchUrl:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum newSession:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum onMessageChannelReady:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum onRelationshipValidationResult:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum onTransact:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum postMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public static final enum warmup:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;


# instance fields
.field final requestPostMessageChannel:Lo/DefaultCreateReportSpiCall$extraCallback;

.field final updateVisuals:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 112
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->onNavigationEvent:Lo/DefaultCreateReportSpiCall$extraCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "DOUBLE"

    invoke-direct {v0, v4, v3, v1, v2}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->onNavigationEvent:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 113
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->onMessageChannelReady:Lo/DefaultCreateReportSpiCall$extraCallback;

    const/4 v4, 0x5

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v2, v1, v4}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->onMessageChannelReady:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 114
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$extraCallback;

    const/4 v5, 0x2

    const-string v6, "INT64"

    invoke-direct {v0, v6, v5, v1, v3}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 115
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$extraCallback;

    const/4 v6, 0x3

    const-string v7, "UINT64"

    invoke-direct {v0, v7, v6, v1, v3}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->onPostMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 116
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$extraCallback;

    const/4 v7, 0x4

    const-string v8, "INT32"

    invoke-direct {v0, v8, v7, v1, v3}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->extraCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 117
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$extraCallback;

    const-string v8, "FIXED64"

    invoke-direct {v0, v8, v4, v1, v2}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->asBinder:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 118
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$extraCallback;

    const/4 v8, 0x6

    const-string v9, "FIXED32"

    invoke-direct {v0, v9, v8, v1, v4}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->onTransact:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 119
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->extraCallback:Lo/DefaultCreateReportSpiCall$extraCallback;

    const/4 v9, 0x7

    const-string v10, "BOOL"

    invoke-direct {v0, v10, v9, v1, v3}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->asInterface:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 120
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady$2;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->ICustomTabsCallback$Stub:Lo/DefaultCreateReportSpiCall$extraCallback;

    const-string v10, "STRING"

    invoke-direct {v0, v10, v1}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady$2;-><init>(Ljava/lang/String;Lo/DefaultCreateReportSpiCall$extraCallback;)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->onRelationshipValidationResult:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 126
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady$5;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->onRelationshipValidationResult:Lo/DefaultCreateReportSpiCall$extraCallback;

    const-string v10, "GROUP"

    invoke-direct {v0, v10, v1}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady$5;-><init>(Ljava/lang/String;Lo/DefaultCreateReportSpiCall$extraCallback;)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 132
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady$3;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->onRelationshipValidationResult:Lo/DefaultCreateReportSpiCall$extraCallback;

    const-string v10, "MESSAGE"

    invoke-direct {v0, v10, v1}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady$3;-><init>(Ljava/lang/String;Lo/DefaultCreateReportSpiCall$extraCallback;)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->warmup:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 138
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady$1;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->onTransact:Lo/DefaultCreateReportSpiCall$extraCallback;

    const-string v10, "BYTES"

    invoke-direct {v0, v10, v1}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady$1;-><init>(Ljava/lang/String;Lo/DefaultCreateReportSpiCall$extraCallback;)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->newSession:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 144
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$extraCallback;

    const/16 v10, 0xc

    const-string v11, "UINT32"

    invoke-direct {v0, v11, v10, v1, v3}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->ICustomTabsService:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 145
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->asBinder:Lo/DefaultCreateReportSpiCall$extraCallback;

    const/16 v11, 0xd

    const-string v12, "ENUM"

    invoke-direct {v0, v12, v11, v1, v3}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->getInterfaceDescriptor:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 146
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$extraCallback;

    const/16 v12, 0xe

    const-string v13, "SFIXED32"

    invoke-direct {v0, v13, v12, v1, v4}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 147
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$extraCallback;

    const/16 v13, 0xf

    const-string v14, "SFIXED64"

    invoke-direct {v0, v14, v13, v1, v2}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->postMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 148
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$extraCallback;

    const/16 v14, 0x10

    const-string v15, "SINT32"

    invoke-direct {v0, v15, v14, v1, v3}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->mayLaunchUrl:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 149
    new-instance v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$extraCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$extraCallback;

    const/16 v15, 0x11

    const-string v14, "SINT64"

    invoke-direct {v0, v14, v15, v1, v3}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V

    sput-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->extraCommand:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    const/16 v1, 0x12

    new-array v1, v1, [Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 111
    sget-object v14, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->onNavigationEvent:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    aput-object v14, v1, v3

    sget-object v3, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->onMessageChannelReady:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    aput-object v3, v1, v2

    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    aput-object v2, v1, v5

    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->onPostMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    aput-object v2, v1, v6

    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->extraCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    aput-object v2, v1, v7

    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->asBinder:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    aput-object v2, v1, v4

    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->onTransact:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    aput-object v2, v1, v8

    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->asInterface:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    aput-object v2, v1, v9

    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->onRelationshipValidationResult:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->warmup:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->newSession:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->ICustomTabsService:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    aput-object v2, v1, v10

    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->getInterfaceDescriptor:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    aput-object v2, v1, v11

    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    aput-object v2, v1, v12

    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->postMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    aput-object v2, v1, v13

    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->mayLaunchUrl:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->IPostMessageService$Stub:[Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DefaultCreateReportSpiCall$extraCallback;",
            "I)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    iput-object p3, p0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->requestPostMessageChannel:Lo/DefaultCreateReportSpiCall$extraCallback;

    .line 153
    iput p4, p0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->updateVisuals:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;IB)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/DefaultCreateReportSpiCall$onMessageChannelReady;
    .locals 1

    .line 111
    const-class v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/DefaultCreateReportSpiCall$onMessageChannelReady;
    .locals 1

    .line 111
    sget-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->IPostMessageService$Stub:[Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    return-object v0
.end method
