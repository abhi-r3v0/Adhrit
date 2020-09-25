.class public enum Lo/fJ;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/fJ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/fJ;

.field public static final enum ICustomTabsCallback$Stub:Lo/fJ;

.field public static final enum ICustomTabsCallback$Stub$Proxy:Lo/fJ;

.field public static final enum ICustomTabsService:Lo/fJ;

.field private static final synthetic IPostMessageService$Stub:[Lo/fJ;

.field public static final enum asBinder:Lo/fJ;

.field public static final enum asInterface:Lo/fJ;

.field public static final enum extraCallback:Lo/fJ;

.field public static final enum extraCommand:Lo/fJ;

.field public static final enum getInterfaceDescriptor:Lo/fJ;

.field public static final enum mayLaunchUrl:Lo/fJ;

.field public static final enum newSession:Lo/fJ;

.field public static final enum onMessageChannelReady:Lo/fJ;

.field public static final enum onNavigationEvent:Lo/fJ;

.field public static final enum onPostMessage:Lo/fJ;

.field public static final enum onRelationshipValidationResult:Lo/fJ;

.field public static final enum onTransact:Lo/fJ;

.field public static final enum requestPostMessageChannel:Lo/fJ;

.field public static final enum warmup:Lo/fJ;


# instance fields
.field private final postMessage:I

.field private final updateVisuals:Lo/bj;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lo/fJ;

    sget-object v1, Lo/bj;->onMessageChannelReady:Lo/bj;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "DOUBLE"

    invoke-direct {v0, v4, v3, v1, v2}, Lo/fJ;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->extraCallback:Lo/fJ;

    .line 10
    new-instance v0, Lo/fJ;

    sget-object v1, Lo/bj;->ICustomTabsCallback:Lo/bj;

    const/4 v4, 0x5

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v2, v1, v4}, Lo/fJ;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->onPostMessage:Lo/fJ;

    .line 11
    new-instance v0, Lo/fJ;

    sget-object v1, Lo/bj;->extraCallback:Lo/bj;

    const/4 v5, 0x2

    const-string v6, "INT64"

    invoke-direct {v0, v6, v5, v1, v3}, Lo/fJ;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->onMessageChannelReady:Lo/fJ;

    .line 12
    new-instance v0, Lo/fJ;

    sget-object v1, Lo/bj;->extraCallback:Lo/bj;

    const/4 v6, 0x3

    const-string v7, "UINT64"

    invoke-direct {v0, v7, v6, v1, v3}, Lo/fJ;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->ICustomTabsCallback:Lo/fJ;

    .line 13
    new-instance v0, Lo/fJ;

    sget-object v1, Lo/bj;->onNavigationEvent:Lo/bj;

    const/4 v7, 0x4

    const-string v8, "INT32"

    invoke-direct {v0, v8, v7, v1, v3}, Lo/fJ;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->onNavigationEvent:Lo/fJ;

    .line 14
    new-instance v0, Lo/fJ;

    sget-object v1, Lo/bj;->extraCallback:Lo/bj;

    const-string v8, "FIXED64"

    invoke-direct {v0, v8, v4, v1, v2}, Lo/fJ;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->asInterface:Lo/fJ;

    .line 15
    new-instance v0, Lo/fJ;

    sget-object v1, Lo/bj;->onNavigationEvent:Lo/bj;

    const/4 v8, 0x6

    const-string v9, "FIXED32"

    invoke-direct {v0, v9, v8, v1, v4}, Lo/fJ;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->onRelationshipValidationResult:Lo/fJ;

    .line 16
    new-instance v0, Lo/fJ;

    sget-object v1, Lo/bj;->onPostMessage:Lo/bj;

    const/4 v9, 0x7

    const-string v10, "BOOL"

    invoke-direct {v0, v10, v9, v1, v3}, Lo/fJ;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->asBinder:Lo/fJ;

    .line 17
    new-instance v0, Lo/co;

    sget-object v1, Lo/bj;->asBinder:Lo/bj;

    const/16 v10, 0x8

    const-string v11, "STRING"

    invoke-direct {v0, v11, v10, v1, v5}, Lo/co;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->ICustomTabsCallback$Stub:Lo/fJ;

    .line 18
    new-instance v0, Lo/bg;

    sget-object v1, Lo/bj;->asInterface:Lo/bj;

    const/16 v11, 0x9

    const-string v12, "GROUP"

    invoke-direct {v0, v12, v11, v1, v6}, Lo/bg;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->onTransact:Lo/fJ;

    .line 19
    new-instance v0, Lo/be;

    sget-object v1, Lo/bj;->asInterface:Lo/bj;

    const/16 v12, 0xa

    const-string v13, "MESSAGE"

    invoke-direct {v0, v13, v12, v1, v5}, Lo/be;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->ICustomTabsCallback$Stub$Proxy:Lo/fJ;

    .line 20
    new-instance v0, Lo/bi;

    sget-object v1, Lo/bj;->onTransact:Lo/bj;

    const/16 v13, 0xb

    const-string v14, "BYTES"

    invoke-direct {v0, v14, v13, v1, v5}, Lo/bi;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->ICustomTabsService:Lo/fJ;

    .line 21
    new-instance v0, Lo/fJ;

    sget-object v1, Lo/bj;->onNavigationEvent:Lo/bj;

    const/16 v14, 0xc

    const-string v15, "UINT32"

    invoke-direct {v0, v15, v14, v1, v3}, Lo/fJ;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->warmup:Lo/fJ;

    .line 22
    new-instance v0, Lo/fJ;

    sget-object v1, Lo/bj;->ICustomTabsCallback$Stub:Lo/bj;

    const/16 v15, 0xd

    const-string v14, "ENUM"

    invoke-direct {v0, v14, v15, v1, v3}, Lo/fJ;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->getInterfaceDescriptor:Lo/fJ;

    .line 23
    new-instance v0, Lo/fJ;

    sget-object v1, Lo/bj;->onNavigationEvent:Lo/bj;

    const/16 v14, 0xe

    const-string v15, "SFIXED32"

    invoke-direct {v0, v15, v14, v1, v4}, Lo/fJ;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->newSession:Lo/fJ;

    .line 24
    new-instance v0, Lo/fJ;

    sget-object v1, Lo/bj;->extraCallback:Lo/bj;

    const/16 v15, 0xf

    const-string v14, "SFIXED64"

    invoke-direct {v0, v14, v15, v1, v2}, Lo/fJ;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->extraCommand:Lo/fJ;

    .line 25
    new-instance v0, Lo/fJ;

    sget-object v1, Lo/bj;->onNavigationEvent:Lo/bj;

    const/16 v14, 0x10

    const-string v15, "SINT32"

    invoke-direct {v0, v15, v14, v1, v3}, Lo/fJ;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->requestPostMessageChannel:Lo/fJ;

    .line 26
    new-instance v0, Lo/fJ;

    sget-object v1, Lo/bj;->extraCallback:Lo/bj;

    const/16 v15, 0x11

    const-string v14, "SINT64"

    invoke-direct {v0, v14, v15, v1, v3}, Lo/fJ;-><init>(Ljava/lang/String;ILo/bj;I)V

    sput-object v0, Lo/fJ;->mayLaunchUrl:Lo/fJ;

    const/16 v1, 0x12

    new-array v1, v1, [Lo/fJ;

    .line 27
    sget-object v14, Lo/fJ;->extraCallback:Lo/fJ;

    aput-object v14, v1, v3

    sget-object v3, Lo/fJ;->onPostMessage:Lo/fJ;

    aput-object v3, v1, v2

    sget-object v2, Lo/fJ;->onMessageChannelReady:Lo/fJ;

    aput-object v2, v1, v5

    sget-object v2, Lo/fJ;->ICustomTabsCallback:Lo/fJ;

    aput-object v2, v1, v6

    sget-object v2, Lo/fJ;->onNavigationEvent:Lo/fJ;

    aput-object v2, v1, v7

    sget-object v2, Lo/fJ;->asInterface:Lo/fJ;

    aput-object v2, v1, v4

    sget-object v2, Lo/fJ;->onRelationshipValidationResult:Lo/fJ;

    aput-object v2, v1, v8

    sget-object v2, Lo/fJ;->asBinder:Lo/fJ;

    aput-object v2, v1, v9

    sget-object v2, Lo/fJ;->ICustomTabsCallback$Stub:Lo/fJ;

    aput-object v2, v1, v10

    sget-object v2, Lo/fJ;->onTransact:Lo/fJ;

    aput-object v2, v1, v11

    sget-object v2, Lo/fJ;->ICustomTabsCallback$Stub$Proxy:Lo/fJ;

    aput-object v2, v1, v12

    sget-object v2, Lo/fJ;->ICustomTabsService:Lo/fJ;

    aput-object v2, v1, v13

    sget-object v2, Lo/fJ;->warmup:Lo/fJ;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lo/fJ;->getInterfaceDescriptor:Lo/fJ;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lo/fJ;->newSession:Lo/fJ;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lo/fJ;->extraCommand:Lo/fJ;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lo/fJ;->requestPostMessageChannel:Lo/fJ;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lo/fJ;->IPostMessageService$Stub:[Lo/fJ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILo/bj;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/bj;",
            "I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lo/fJ;->updateVisuals:Lo/bj;

    .line 4
    iput p4, p0, Lo/fJ;->postMessage:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILo/bj;ILo/cm;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lo/fJ;-><init>(Ljava/lang/String;ILo/bj;I)V

    return-void
.end method

.method public static values()[Lo/fJ;
    .locals 1

    .line 1
    sget-object v0, Lo/fJ;->IPostMessageService$Stub:[Lo/fJ;

    invoke-virtual {v0}, [Lo/fJ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/fJ;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()Lo/bj;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/fJ;->updateVisuals:Lo/bj;

    return-object v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 7
    iget v0, p0, Lo/fJ;->postMessage:I

    return v0
.end method
