.class public enum Lo/dB;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/dB;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/dB;

.field public static final enum ICustomTabsCallback$Stub:Lo/dB;

.field public static final enum ICustomTabsCallback$Stub$Proxy:Lo/dB;

.field public static final enum ICustomTabsService:Lo/dB;

.field private static final synthetic ICustomTabsService$Stub$Proxy:[Lo/dB;

.field public static final enum asBinder:Lo/dB;

.field public static final enum asInterface:Lo/dB;

.field public static final enum extraCallback:Lo/dB;

.field public static final enum extraCommand:Lo/dB;

.field public static final enum getInterfaceDescriptor:Lo/dB;

.field public static final enum newSession:Lo/dB;

.field public static final enum onMessageChannelReady:Lo/dB;

.field public static final enum onNavigationEvent:Lo/dB;

.field public static final enum onPostMessage:Lo/dB;

.field public static final enum onRelationshipValidationResult:Lo/dB;

.field public static final enum onTransact:Lo/dB;

.field public static final enum postMessage:Lo/dB;

.field public static final enum updateVisuals:Lo/dB;

.field public static final enum warmup:Lo/dB;


# instance fields
.field private final mayLaunchUrl:Lo/d$1;

.field private final requestPostMessageChannel:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lo/dB;

    sget-object v1, Lo/d$1;->extraCallback:Lo/d$1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "DOUBLE"

    invoke-direct {v0, v4, v3, v1, v2}, Lo/dB;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->ICustomTabsCallback:Lo/dB;

    .line 10
    new-instance v0, Lo/dB;

    sget-object v1, Lo/d$1;->ICustomTabsCallback:Lo/d$1;

    const/4 v4, 0x5

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v2, v1, v4}, Lo/dB;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->extraCallback:Lo/dB;

    .line 11
    new-instance v0, Lo/dB;

    sget-object v1, Lo/d$1;->onMessageChannelReady:Lo/d$1;

    const/4 v5, 0x2

    const-string v6, "INT64"

    invoke-direct {v0, v6, v5, v1, v3}, Lo/dB;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->onNavigationEvent:Lo/dB;

    .line 12
    new-instance v0, Lo/dB;

    sget-object v1, Lo/d$1;->onMessageChannelReady:Lo/d$1;

    const/4 v6, 0x3

    const-string v7, "UINT64"

    invoke-direct {v0, v7, v6, v1, v3}, Lo/dB;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->onPostMessage:Lo/dB;

    .line 13
    new-instance v0, Lo/dB;

    sget-object v1, Lo/d$1;->onNavigationEvent:Lo/d$1;

    const/4 v7, 0x4

    const-string v8, "INT32"

    invoke-direct {v0, v8, v7, v1, v3}, Lo/dB;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->onMessageChannelReady:Lo/dB;

    .line 14
    new-instance v0, Lo/dB;

    sget-object v1, Lo/d$1;->onMessageChannelReady:Lo/d$1;

    const-string v8, "FIXED64"

    invoke-direct {v0, v8, v4, v1, v2}, Lo/dB;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->onRelationshipValidationResult:Lo/dB;

    .line 15
    new-instance v0, Lo/dB;

    sget-object v1, Lo/d$1;->onNavigationEvent:Lo/d$1;

    const/4 v8, 0x6

    const-string v9, "FIXED32"

    invoke-direct {v0, v9, v8, v1, v4}, Lo/dB;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->asInterface:Lo/dB;

    .line 16
    new-instance v0, Lo/dB;

    sget-object v1, Lo/d$1;->onPostMessage:Lo/d$1;

    const/4 v9, 0x7

    const-string v10, "BOOL"

    invoke-direct {v0, v10, v9, v1, v3}, Lo/dB;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->asBinder:Lo/dB;

    .line 17
    new-instance v0, Lo/dz;

    sget-object v1, Lo/d$1;->asBinder:Lo/d$1;

    const/16 v10, 0x8

    const-string v11, "STRING"

    invoke-direct {v0, v11, v10, v1, v5}, Lo/dz;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->onTransact:Lo/dB;

    .line 18
    new-instance v0, Lo/cN;

    sget-object v1, Lo/d$1;->ICustomTabsCallback$Stub:Lo/d$1;

    const/16 v11, 0x9

    const-string v12, "GROUP"

    invoke-direct {v0, v12, v11, v1, v6}, Lo/cN;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->ICustomTabsCallback$Stub:Lo/dB;

    .line 19
    new-instance v0, Lo/cY;

    sget-object v1, Lo/d$1;->ICustomTabsCallback$Stub:Lo/d$1;

    const/16 v12, 0xa

    const-string v13, "MESSAGE"

    invoke-direct {v0, v13, v12, v1, v5}, Lo/cY;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->ICustomTabsCallback$Stub$Proxy:Lo/dB;

    .line 20
    new-instance v0, Lo/dD;

    sget-object v1, Lo/d$1;->onTransact:Lo/d$1;

    const/16 v13, 0xb

    const-string v14, "BYTES"

    invoke-direct {v0, v14, v13, v1, v5}, Lo/dD;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->warmup:Lo/dB;

    .line 21
    new-instance v0, Lo/dB;

    sget-object v1, Lo/d$1;->onNavigationEvent:Lo/d$1;

    const/16 v14, 0xc

    const-string v15, "UINT32"

    invoke-direct {v0, v15, v14, v1, v3}, Lo/dB;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->newSession:Lo/dB;

    .line 22
    new-instance v0, Lo/dB;

    sget-object v1, Lo/d$1;->asInterface:Lo/d$1;

    const/16 v15, 0xd

    const-string v14, "ENUM"

    invoke-direct {v0, v14, v15, v1, v3}, Lo/dB;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->ICustomTabsService:Lo/dB;

    .line 23
    new-instance v0, Lo/dB;

    sget-object v1, Lo/d$1;->onNavigationEvent:Lo/d$1;

    const/16 v14, 0xe

    const-string v15, "SFIXED32"

    invoke-direct {v0, v15, v14, v1, v4}, Lo/dB;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->getInterfaceDescriptor:Lo/dB;

    .line 24
    new-instance v0, Lo/dB;

    sget-object v1, Lo/d$1;->onMessageChannelReady:Lo/d$1;

    const/16 v15, 0xf

    const-string v14, "SFIXED64"

    invoke-direct {v0, v14, v15, v1, v2}, Lo/dB;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->extraCommand:Lo/dB;

    .line 25
    new-instance v0, Lo/dB;

    sget-object v1, Lo/d$1;->onNavigationEvent:Lo/d$1;

    const/16 v14, 0x10

    const-string v15, "SINT32"

    invoke-direct {v0, v15, v14, v1, v3}, Lo/dB;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->postMessage:Lo/dB;

    .line 26
    new-instance v0, Lo/dB;

    sget-object v1, Lo/d$1;->onMessageChannelReady:Lo/d$1;

    const/16 v15, 0x11

    const-string v14, "SINT64"

    invoke-direct {v0, v14, v15, v1, v3}, Lo/dB;-><init>(Ljava/lang/String;ILo/d$1;I)V

    sput-object v0, Lo/dB;->updateVisuals:Lo/dB;

    const/16 v1, 0x12

    new-array v1, v1, [Lo/dB;

    .line 27
    sget-object v14, Lo/dB;->ICustomTabsCallback:Lo/dB;

    aput-object v14, v1, v3

    sget-object v3, Lo/dB;->extraCallback:Lo/dB;

    aput-object v3, v1, v2

    sget-object v2, Lo/dB;->onNavigationEvent:Lo/dB;

    aput-object v2, v1, v5

    sget-object v2, Lo/dB;->onPostMessage:Lo/dB;

    aput-object v2, v1, v6

    sget-object v2, Lo/dB;->onMessageChannelReady:Lo/dB;

    aput-object v2, v1, v7

    sget-object v2, Lo/dB;->onRelationshipValidationResult:Lo/dB;

    aput-object v2, v1, v4

    sget-object v2, Lo/dB;->asInterface:Lo/dB;

    aput-object v2, v1, v8

    sget-object v2, Lo/dB;->asBinder:Lo/dB;

    aput-object v2, v1, v9

    sget-object v2, Lo/dB;->onTransact:Lo/dB;

    aput-object v2, v1, v10

    sget-object v2, Lo/dB;->ICustomTabsCallback$Stub:Lo/dB;

    aput-object v2, v1, v11

    sget-object v2, Lo/dB;->ICustomTabsCallback$Stub$Proxy:Lo/dB;

    aput-object v2, v1, v12

    sget-object v2, Lo/dB;->warmup:Lo/dB;

    aput-object v2, v1, v13

    sget-object v2, Lo/dB;->newSession:Lo/dB;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lo/dB;->ICustomTabsService:Lo/dB;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lo/dB;->getInterfaceDescriptor:Lo/dB;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lo/dB;->extraCommand:Lo/dB;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lo/dB;->postMessage:Lo/dB;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lo/dB;->ICustomTabsService$Stub$Proxy:[Lo/dB;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILo/d$1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/d$1;",
            "I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lo/dB;->mayLaunchUrl:Lo/d$1;

    .line 4
    iput p4, p0, Lo/dB;->requestPostMessageChannel:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILo/d$1;ILo/fO;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lo/dB;-><init>(Ljava/lang/String;ILo/d$1;I)V

    return-void
.end method

.method public static values()[Lo/dB;
    .locals 1

    .line 1
    sget-object v0, Lo/dB;->ICustomTabsService$Stub$Proxy:[Lo/dB;

    invoke-virtual {v0}, [Lo/dB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/dB;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/d$1;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/dB;->mayLaunchUrl:Lo/d$1;

    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 7
    iget v0, p0, Lo/dB;->requestPostMessageChannel:I

    return v0
.end method
