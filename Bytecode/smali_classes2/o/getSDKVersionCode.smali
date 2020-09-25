.class public enum Lo/getSDKVersionCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getSDKVersionCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getSDKVersionCode;

.field public static final enum ICustomTabsCallback$Stub:Lo/getSDKVersionCode;

.field public static final enum ICustomTabsCallback$Stub$Proxy:Lo/getSDKVersionCode;

.field public static final enum ICustomTabsService:Lo/getSDKVersionCode;

.field private static final synthetic IPostMessageService$Stub:[Lo/getSDKVersionCode;

.field public static final enum asBinder:Lo/getSDKVersionCode;

.field public static final enum asInterface:Lo/getSDKVersionCode;

.field public static final enum extraCallback:Lo/getSDKVersionCode;

.field public static final enum getInterfaceDescriptor:Lo/getSDKVersionCode;

.field public static final enum mayLaunchUrl:Lo/getSDKVersionCode;

.field public static final enum newSession:Lo/getSDKVersionCode;

.field public static final enum onMessageChannelReady:Lo/getSDKVersionCode;

.field public static final enum onNavigationEvent:Lo/getSDKVersionCode;

.field public static final enum onPostMessage:Lo/getSDKVersionCode;

.field public static final enum onRelationshipValidationResult:Lo/getSDKVersionCode;

.field public static final enum onTransact:Lo/getSDKVersionCode;

.field public static final enum postMessage:Lo/getSDKVersionCode;

.field public static final enum requestPostMessageChannel:Lo/getSDKVersionCode;

.field public static final enum warmup:Lo/getSDKVersionCode;


# instance fields
.field private final extraCommand:Lo/showConversations;

.field private final updateVisuals:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lo/getSDKVersionCode;

    sget-object v1, Lo/showConversations;->onPostMessage:Lo/showConversations;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "DOUBLE"

    invoke-direct {v0, v4, v3, v1, v2}, Lo/getSDKVersionCode;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->onMessageChannelReady:Lo/getSDKVersionCode;

    new-instance v0, Lo/getSDKVersionCode;

    sget-object v1, Lo/showConversations;->ICustomTabsCallback:Lo/showConversations;

    const/4 v4, 0x5

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v2, v1, v4}, Lo/getSDKVersionCode;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->onPostMessage:Lo/getSDKVersionCode;

    new-instance v0, Lo/getSDKVersionCode;

    sget-object v1, Lo/showConversations;->onNavigationEvent:Lo/showConversations;

    const/4 v5, 0x2

    const-string v6, "INT64"

    invoke-direct {v0, v6, v5, v1, v3}, Lo/getSDKVersionCode;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->ICustomTabsCallback:Lo/getSDKVersionCode;

    new-instance v0, Lo/getSDKVersionCode;

    sget-object v1, Lo/showConversations;->onNavigationEvent:Lo/showConversations;

    const/4 v6, 0x3

    const-string v7, "UINT64"

    invoke-direct {v0, v7, v6, v1, v3}, Lo/getSDKVersionCode;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->onNavigationEvent:Lo/getSDKVersionCode;

    new-instance v0, Lo/getSDKVersionCode;

    sget-object v1, Lo/showConversations;->extraCallback:Lo/showConversations;

    const/4 v7, 0x4

    const-string v8, "INT32"

    invoke-direct {v0, v8, v7, v1, v3}, Lo/getSDKVersionCode;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->extraCallback:Lo/getSDKVersionCode;

    new-instance v0, Lo/getSDKVersionCode;

    sget-object v1, Lo/showConversations;->onNavigationEvent:Lo/showConversations;

    const-string v8, "FIXED64"

    invoke-direct {v0, v8, v4, v1, v2}, Lo/getSDKVersionCode;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->asBinder:Lo/getSDKVersionCode;

    new-instance v0, Lo/getSDKVersionCode;

    sget-object v1, Lo/showConversations;->extraCallback:Lo/showConversations;

    const/4 v8, 0x6

    const-string v9, "FIXED32"

    invoke-direct {v0, v9, v8, v1, v4}, Lo/getSDKVersionCode;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->onTransact:Lo/getSDKVersionCode;

    new-instance v0, Lo/getSDKVersionCode;

    sget-object v1, Lo/showConversations;->onMessageChannelReady:Lo/showConversations;

    const/4 v9, 0x7

    const-string v10, "BOOL"

    invoke-direct {v0, v10, v9, v1, v3}, Lo/getSDKVersionCode;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->asInterface:Lo/getSDKVersionCode;

    new-instance v0, Lo/filterContactUsByTags;

    sget-object v1, Lo/showConversations;->onTransact:Lo/showConversations;

    const/16 v10, 0x8

    const-string v11, "STRING"

    invoke-direct {v0, v11, v10, v1, v5}, Lo/filterContactUsByTags;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->ICustomTabsCallback$Stub:Lo/getSDKVersionCode;

    new-instance v0, Lo/FaqOptions$FilterType;

    sget-object v1, Lo/showConversations;->ICustomTabsCallback$Stub:Lo/showConversations;

    const/16 v11, 0x9

    const-string v12, "GROUP"

    invoke-direct {v0, v12, v11, v1, v6}, Lo/FaqOptions$FilterType;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->onRelationshipValidationResult:Lo/getSDKVersionCode;

    new-instance v0, Lo/Freshchat;

    sget-object v1, Lo/showConversations;->ICustomTabsCallback$Stub:Lo/showConversations;

    const/16 v12, 0xa

    const-string v13, "MESSAGE"

    invoke-direct {v0, v13, v12, v1, v5}, Lo/Freshchat;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->ICustomTabsService:Lo/getSDKVersionCode;

    new-instance v0, Lo/registerLifecycleCallbacks;

    sget-object v1, Lo/showConversations;->asBinder:Lo/showConversations;

    const/16 v13, 0xb

    const-string v14, "BYTES"

    invoke-direct {v0, v14, v13, v1, v5}, Lo/registerLifecycleCallbacks;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->newSession:Lo/getSDKVersionCode;

    new-instance v0, Lo/getSDKVersionCode;

    sget-object v1, Lo/showConversations;->extraCallback:Lo/showConversations;

    const/16 v14, 0xc

    const-string v15, "UINT32"

    invoke-direct {v0, v15, v14, v1, v3}, Lo/getSDKVersionCode;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->ICustomTabsCallback$Stub$Proxy:Lo/getSDKVersionCode;

    new-instance v0, Lo/getSDKVersionCode;

    sget-object v1, Lo/showConversations;->onRelationshipValidationResult:Lo/showConversations;

    const/16 v15, 0xd

    const-string v14, "ENUM"

    invoke-direct {v0, v14, v15, v1, v3}, Lo/getSDKVersionCode;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->warmup:Lo/getSDKVersionCode;

    new-instance v0, Lo/getSDKVersionCode;

    sget-object v1, Lo/showConversations;->extraCallback:Lo/showConversations;

    const/16 v14, 0xe

    const-string v15, "SFIXED32"

    invoke-direct {v0, v15, v14, v1, v4}, Lo/getSDKVersionCode;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->getInterfaceDescriptor:Lo/getSDKVersionCode;

    new-instance v0, Lo/getSDKVersionCode;

    sget-object v1, Lo/showConversations;->onNavigationEvent:Lo/showConversations;

    const/16 v15, 0xf

    const-string v14, "SFIXED64"

    invoke-direct {v0, v14, v15, v1, v2}, Lo/getSDKVersionCode;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->postMessage:Lo/getSDKVersionCode;

    new-instance v0, Lo/getSDKVersionCode;

    sget-object v1, Lo/showConversations;->extraCallback:Lo/showConversations;

    const/16 v14, 0x10

    const-string v15, "SINT32"

    invoke-direct {v0, v15, v14, v1, v3}, Lo/getSDKVersionCode;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->requestPostMessageChannel:Lo/getSDKVersionCode;

    new-instance v0, Lo/getSDKVersionCode;

    sget-object v1, Lo/showConversations;->onNavigationEvent:Lo/showConversations;

    const/16 v15, 0x11

    const-string v14, "SINT64"

    invoke-direct {v0, v14, v15, v1, v3}, Lo/getSDKVersionCode;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    sput-object v0, Lo/getSDKVersionCode;->mayLaunchUrl:Lo/getSDKVersionCode;

    const/16 v1, 0x12

    new-array v1, v1, [Lo/getSDKVersionCode;

    sget-object v14, Lo/getSDKVersionCode;->onMessageChannelReady:Lo/getSDKVersionCode;

    aput-object v14, v1, v3

    sget-object v3, Lo/getSDKVersionCode;->onPostMessage:Lo/getSDKVersionCode;

    aput-object v3, v1, v2

    sget-object v2, Lo/getSDKVersionCode;->ICustomTabsCallback:Lo/getSDKVersionCode;

    aput-object v2, v1, v5

    sget-object v2, Lo/getSDKVersionCode;->onNavigationEvent:Lo/getSDKVersionCode;

    aput-object v2, v1, v6

    sget-object v2, Lo/getSDKVersionCode;->extraCallback:Lo/getSDKVersionCode;

    aput-object v2, v1, v7

    sget-object v2, Lo/getSDKVersionCode;->asBinder:Lo/getSDKVersionCode;

    aput-object v2, v1, v4

    sget-object v2, Lo/getSDKVersionCode;->onTransact:Lo/getSDKVersionCode;

    aput-object v2, v1, v8

    sget-object v2, Lo/getSDKVersionCode;->asInterface:Lo/getSDKVersionCode;

    aput-object v2, v1, v9

    sget-object v2, Lo/getSDKVersionCode;->ICustomTabsCallback$Stub:Lo/getSDKVersionCode;

    aput-object v2, v1, v10

    sget-object v2, Lo/getSDKVersionCode;->onRelationshipValidationResult:Lo/getSDKVersionCode;

    aput-object v2, v1, v11

    sget-object v2, Lo/getSDKVersionCode;->ICustomTabsService:Lo/getSDKVersionCode;

    aput-object v2, v1, v12

    sget-object v2, Lo/getSDKVersionCode;->newSession:Lo/getSDKVersionCode;

    aput-object v2, v1, v13

    sget-object v2, Lo/getSDKVersionCode;->ICustomTabsCallback$Stub$Proxy:Lo/getSDKVersionCode;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lo/getSDKVersionCode;->warmup:Lo/getSDKVersionCode;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lo/getSDKVersionCode;->getInterfaceDescriptor:Lo/getSDKVersionCode;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lo/getSDKVersionCode;->postMessage:Lo/getSDKVersionCode;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lo/getSDKVersionCode;->requestPostMessageChannel:Lo/getSDKVersionCode;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lo/getSDKVersionCode;->IPostMessageService$Stub:[Lo/getSDKVersionCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILo/showConversations;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/showConversations;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lo/getSDKVersionCode;->extraCommand:Lo/showConversations;

    iput p4, p0, Lo/getSDKVersionCode;->updateVisuals:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILo/showConversations;ILo/getFilterType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo/getSDKVersionCode;-><init>(Ljava/lang/String;ILo/showConversations;I)V

    return-void
.end method

.method public static values()[Lo/getSDKVersionCode;
    .locals 1

    sget-object v0, Lo/getSDKVersionCode;->IPostMessageService$Stub:[Lo/getSDKVersionCode;

    invoke-virtual {v0}, [Lo/getSDKVersionCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getSDKVersionCode;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    iget v0, p0, Lo/getSDKVersionCode;->updateVisuals:I

    return v0
.end method

.method public final onNavigationEvent()Lo/showConversations;
    .locals 1

    iget-object v0, p0, Lo/getSDKVersionCode;->extraCommand:Lo/showConversations;

    return-object v0
.end method
