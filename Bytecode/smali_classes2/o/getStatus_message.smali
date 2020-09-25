.class public enum Lo/getStatus_message;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getStatus_message;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getStatus_message;

.field public static final enum ICustomTabsCallback$Stub:Lo/getStatus_message;

.field public static final enum ICustomTabsCallback$Stub$Proxy:Lo/getStatus_message;

.field public static final enum ICustomTabsService:Lo/getStatus_message;

.field private static final synthetic IPostMessageService$Stub:[Lo/getStatus_message;

.field public static final enum asBinder:Lo/getStatus_message;

.field public static final enum asInterface:Lo/getStatus_message;

.field public static final enum extraCallback:Lo/getStatus_message;

.field public static final enum extraCommand:Lo/getStatus_message;

.field public static final enum getInterfaceDescriptor:Lo/getStatus_message;

.field public static final enum mayLaunchUrl:Lo/getStatus_message;

.field public static final enum newSession:Lo/getStatus_message;

.field public static final enum onMessageChannelReady:Lo/getStatus_message;

.field public static final enum onNavigationEvent:Lo/getStatus_message;

.field public static final enum onPostMessage:Lo/getStatus_message;

.field public static final enum onRelationshipValidationResult:Lo/getStatus_message;

.field public static final enum onTransact:Lo/getStatus_message;

.field public static final enum requestPostMessageChannel:Lo/getStatus_message;

.field public static final enum warmup:Lo/getStatus_message;


# instance fields
.field private final postMessage:I

.field private final updateVisuals:Lo/TotalPayable;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lo/getStatus_message;

    sget-object v1, Lo/TotalPayable;->ICustomTabsCallback:Lo/TotalPayable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "DOUBLE"

    invoke-direct {v0, v4, v3, v1, v2}, Lo/getStatus_message;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->onPostMessage:Lo/getStatus_message;

    new-instance v0, Lo/getStatus_message;

    sget-object v1, Lo/TotalPayable;->onMessageChannelReady:Lo/TotalPayable;

    const/4 v4, 0x5

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v2, v1, v4}, Lo/getStatus_message;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->onMessageChannelReady:Lo/getStatus_message;

    new-instance v0, Lo/getStatus_message;

    sget-object v1, Lo/TotalPayable;->extraCallback:Lo/TotalPayable;

    const/4 v5, 0x2

    const-string v6, "INT64"

    invoke-direct {v0, v6, v5, v1, v3}, Lo/getStatus_message;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->ICustomTabsCallback:Lo/getStatus_message;

    new-instance v0, Lo/getStatus_message;

    sget-object v1, Lo/TotalPayable;->extraCallback:Lo/TotalPayable;

    const/4 v6, 0x3

    const-string v7, "UINT64"

    invoke-direct {v0, v7, v6, v1, v3}, Lo/getStatus_message;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->extraCallback:Lo/getStatus_message;

    new-instance v0, Lo/getStatus_message;

    sget-object v1, Lo/TotalPayable;->onNavigationEvent:Lo/TotalPayable;

    const/4 v7, 0x4

    const-string v8, "INT32"

    invoke-direct {v0, v8, v7, v1, v3}, Lo/getStatus_message;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->onNavigationEvent:Lo/getStatus_message;

    new-instance v0, Lo/getStatus_message;

    sget-object v1, Lo/TotalPayable;->extraCallback:Lo/TotalPayable;

    const-string v8, "FIXED64"

    invoke-direct {v0, v8, v4, v1, v2}, Lo/getStatus_message;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->onRelationshipValidationResult:Lo/getStatus_message;

    new-instance v0, Lo/getStatus_message;

    sget-object v1, Lo/TotalPayable;->onNavigationEvent:Lo/TotalPayable;

    const/4 v8, 0x6

    const-string v9, "FIXED32"

    invoke-direct {v0, v9, v8, v1, v4}, Lo/getStatus_message;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->asInterface:Lo/getStatus_message;

    new-instance v0, Lo/getStatus_message;

    sget-object v1, Lo/TotalPayable;->onPostMessage:Lo/TotalPayable;

    const/4 v9, 0x7

    const-string v10, "BOOL"

    invoke-direct {v0, v10, v9, v1, v3}, Lo/getStatus_message;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->ICustomTabsCallback$Stub:Lo/getStatus_message;

    new-instance v0, Lo/getStatus_type;

    sget-object v1, Lo/TotalPayable;->onTransact:Lo/TotalPayable;

    const/16 v10, 0x8

    const-string v11, "STRING"

    invoke-direct {v0, v11, v10, v1, v5}, Lo/getStatus_type;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->asBinder:Lo/getStatus_message;

    new-instance v0, Lo/SubtitleJsonAdapter;

    sget-object v1, Lo/TotalPayable;->ICustomTabsCallback$Stub:Lo/TotalPayable;

    const/16 v11, 0x9

    const-string v12, "GROUP"

    invoke-direct {v0, v12, v11, v1, v6}, Lo/SubtitleJsonAdapter;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->onTransact:Lo/getStatus_message;

    new-instance v0, Lo/TemplateData;

    sget-object v1, Lo/TotalPayable;->ICustomTabsCallback$Stub:Lo/TotalPayable;

    const/16 v12, 0xa

    const-string v13, "MESSAGE"

    invoke-direct {v0, v13, v12, v1, v5}, Lo/TemplateData;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->ICustomTabsService:Lo/getStatus_message;

    new-instance v0, Lo/TotalPayableJsonAdapter;

    sget-object v1, Lo/TotalPayable;->asBinder:Lo/TotalPayable;

    const/16 v13, 0xb

    const-string v14, "BYTES"

    invoke-direct {v0, v14, v13, v1, v5}, Lo/TotalPayableJsonAdapter;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->ICustomTabsCallback$Stub$Proxy:Lo/getStatus_message;

    new-instance v0, Lo/getStatus_message;

    sget-object v1, Lo/TotalPayable;->onNavigationEvent:Lo/TotalPayable;

    const/16 v14, 0xc

    const-string v15, "UINT32"

    invoke-direct {v0, v15, v14, v1, v3}, Lo/getStatus_message;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->warmup:Lo/getStatus_message;

    new-instance v0, Lo/getStatus_message;

    sget-object v1, Lo/TotalPayable;->onRelationshipValidationResult:Lo/TotalPayable;

    const/16 v15, 0xd

    const-string v14, "ENUM"

    invoke-direct {v0, v14, v15, v1, v3}, Lo/getStatus_message;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->getInterfaceDescriptor:Lo/getStatus_message;

    new-instance v0, Lo/getStatus_message;

    sget-object v1, Lo/TotalPayable;->onNavigationEvent:Lo/TotalPayable;

    const/16 v14, 0xe

    const-string v15, "SFIXED32"

    invoke-direct {v0, v15, v14, v1, v4}, Lo/getStatus_message;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->newSession:Lo/getStatus_message;

    new-instance v0, Lo/getStatus_message;

    sget-object v1, Lo/TotalPayable;->extraCallback:Lo/TotalPayable;

    const/16 v15, 0xf

    const-string v14, "SFIXED64"

    invoke-direct {v0, v14, v15, v1, v2}, Lo/getStatus_message;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->mayLaunchUrl:Lo/getStatus_message;

    new-instance v0, Lo/getStatus_message;

    sget-object v1, Lo/TotalPayable;->onNavigationEvent:Lo/TotalPayable;

    const/16 v14, 0x10

    const-string v15, "SINT32"

    invoke-direct {v0, v15, v14, v1, v3}, Lo/getStatus_message;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->requestPostMessageChannel:Lo/getStatus_message;

    new-instance v0, Lo/getStatus_message;

    sget-object v1, Lo/TotalPayable;->extraCallback:Lo/TotalPayable;

    const/16 v15, 0x11

    const-string v14, "SINT64"

    invoke-direct {v0, v14, v15, v1, v3}, Lo/getStatus_message;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    sput-object v0, Lo/getStatus_message;->extraCommand:Lo/getStatus_message;

    const/16 v1, 0x12

    new-array v1, v1, [Lo/getStatus_message;

    sget-object v14, Lo/getStatus_message;->onPostMessage:Lo/getStatus_message;

    aput-object v14, v1, v3

    sget-object v3, Lo/getStatus_message;->onMessageChannelReady:Lo/getStatus_message;

    aput-object v3, v1, v2

    sget-object v2, Lo/getStatus_message;->ICustomTabsCallback:Lo/getStatus_message;

    aput-object v2, v1, v5

    sget-object v2, Lo/getStatus_message;->extraCallback:Lo/getStatus_message;

    aput-object v2, v1, v6

    sget-object v2, Lo/getStatus_message;->onNavigationEvent:Lo/getStatus_message;

    aput-object v2, v1, v7

    sget-object v2, Lo/getStatus_message;->onRelationshipValidationResult:Lo/getStatus_message;

    aput-object v2, v1, v4

    sget-object v2, Lo/getStatus_message;->asInterface:Lo/getStatus_message;

    aput-object v2, v1, v8

    sget-object v2, Lo/getStatus_message;->ICustomTabsCallback$Stub:Lo/getStatus_message;

    aput-object v2, v1, v9

    sget-object v2, Lo/getStatus_message;->asBinder:Lo/getStatus_message;

    aput-object v2, v1, v10

    sget-object v2, Lo/getStatus_message;->onTransact:Lo/getStatus_message;

    aput-object v2, v1, v11

    sget-object v2, Lo/getStatus_message;->ICustomTabsService:Lo/getStatus_message;

    aput-object v2, v1, v12

    sget-object v2, Lo/getStatus_message;->ICustomTabsCallback$Stub$Proxy:Lo/getStatus_message;

    aput-object v2, v1, v13

    sget-object v2, Lo/getStatus_message;->warmup:Lo/getStatus_message;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lo/getStatus_message;->getInterfaceDescriptor:Lo/getStatus_message;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lo/getStatus_message;->newSession:Lo/getStatus_message;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lo/getStatus_message;->mayLaunchUrl:Lo/getStatus_message;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lo/getStatus_message;->requestPostMessageChannel:Lo/getStatus_message;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lo/getStatus_message;->IPostMessageService$Stub:[Lo/getStatus_message;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILo/TotalPayable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TotalPayable;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lo/getStatus_message;->updateVisuals:Lo/TotalPayable;

    iput p4, p0, Lo/getStatus_message;->postMessage:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILo/TotalPayable;ILo/Status$$Parcelable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo/getStatus_message;-><init>(Ljava/lang/String;ILo/TotalPayable;I)V

    return-void
.end method

.method public static values()[Lo/getStatus_message;
    .locals 1

    sget-object v0, Lo/getStatus_message;->IPostMessageService$Stub:[Lo/getStatus_message;

    invoke-virtual {v0}, [Lo/getStatus_message;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getStatus_message;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    iget v0, p0, Lo/getStatus_message;->postMessage:I

    return v0
.end method

.method public final extraCallback()Lo/TotalPayable;
    .locals 1

    iget-object v0, p0, Lo/getStatus_message;->updateVisuals:Lo/TotalPayable;

    return-object v0
.end method
