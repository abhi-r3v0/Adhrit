.class public enum Lo/setJwtIdToken;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setJwtIdToken;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setJwtIdToken;

.field public static final enum ICustomTabsCallback$Stub:Lo/setJwtIdToken;

.field public static final enum ICustomTabsCallback$Stub$Proxy:Lo/setJwtIdToken;

.field public static final enum ICustomTabsService:Lo/setJwtIdToken;

.field private static final synthetic ICustomTabsService$Stub$Proxy:[Lo/setJwtIdToken;

.field public static final enum asBinder:Lo/setJwtIdToken;

.field public static final enum asInterface:Lo/setJwtIdToken;

.field public static final enum extraCallback:Lo/setJwtIdToken;

.field public static final enum getInterfaceDescriptor:Lo/setJwtIdToken;

.field public static final enum mayLaunchUrl:Lo/setJwtIdToken;

.field public static final enum newSession:Lo/setJwtIdToken;

.field public static final enum onMessageChannelReady:Lo/setJwtIdToken;

.field public static final enum onNavigationEvent:Lo/setJwtIdToken;

.field public static final enum onPostMessage:Lo/setJwtIdToken;

.field public static final enum onRelationshipValidationResult:Lo/setJwtIdToken;

.field public static final enum onTransact:Lo/setJwtIdToken;

.field public static final enum requestPostMessageChannel:Lo/setJwtIdToken;

.field public static final enum updateVisuals:Lo/setJwtIdToken;

.field public static final enum warmup:Lo/setJwtIdToken;


# instance fields
.field private final extraCommand:I

.field private final postMessage:Lo/getJwtIdToken;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lo/setJwtIdToken;

    sget-object v1, Lo/getJwtIdToken;->extraCallback:Lo/getJwtIdToken;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "DOUBLE"

    invoke-direct {v0, v4, v3, v1, v2}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->onPostMessage:Lo/setJwtIdToken;

    .line 10
    new-instance v0, Lo/setJwtIdToken;

    sget-object v1, Lo/getJwtIdToken;->onMessageChannelReady:Lo/getJwtIdToken;

    const/4 v4, 0x5

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v2, v1, v4}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->ICustomTabsCallback:Lo/setJwtIdToken;

    .line 11
    new-instance v0, Lo/setJwtIdToken;

    sget-object v1, Lo/getJwtIdToken;->onNavigationEvent:Lo/getJwtIdToken;

    const/4 v5, 0x2

    const-string v6, "INT64"

    invoke-direct {v0, v6, v5, v1, v3}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->extraCallback:Lo/setJwtIdToken;

    .line 12
    new-instance v0, Lo/setJwtIdToken;

    sget-object v1, Lo/getJwtIdToken;->onNavigationEvent:Lo/getJwtIdToken;

    const/4 v6, 0x3

    const-string v7, "UINT64"

    invoke-direct {v0, v7, v6, v1, v3}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->onNavigationEvent:Lo/setJwtIdToken;

    .line 13
    new-instance v0, Lo/setJwtIdToken;

    sget-object v1, Lo/getJwtIdToken;->onPostMessage:Lo/getJwtIdToken;

    const/4 v7, 0x4

    const-string v8, "INT32"

    invoke-direct {v0, v8, v7, v1, v3}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->onMessageChannelReady:Lo/setJwtIdToken;

    .line 14
    new-instance v0, Lo/setJwtIdToken;

    sget-object v1, Lo/getJwtIdToken;->onNavigationEvent:Lo/getJwtIdToken;

    const-string v8, "FIXED64"

    invoke-direct {v0, v8, v4, v1, v2}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->ICustomTabsCallback$Stub:Lo/setJwtIdToken;

    .line 15
    new-instance v0, Lo/setJwtIdToken;

    sget-object v1, Lo/getJwtIdToken;->onPostMessage:Lo/getJwtIdToken;

    const/4 v8, 0x6

    const-string v9, "FIXED32"

    invoke-direct {v0, v9, v8, v1, v4}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->asBinder:Lo/setJwtIdToken;

    .line 16
    new-instance v0, Lo/setJwtIdToken;

    sget-object v1, Lo/getJwtIdToken;->ICustomTabsCallback:Lo/getJwtIdToken;

    const/4 v9, 0x7

    const-string v10, "BOOL"

    invoke-direct {v0, v10, v9, v1, v3}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->onRelationshipValidationResult:Lo/setJwtIdToken;

    .line 17
    new-instance v0, Lo/setAndroidDeviceMeta;

    sget-object v1, Lo/getJwtIdToken;->ICustomTabsCallback$Stub:Lo/getJwtIdToken;

    const/16 v10, 0x8

    const-string v11, "STRING"

    invoke-direct {v0, v11, v10, v1, v5}, Lo/setAndroidDeviceMeta;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->onTransact:Lo/setJwtIdToken;

    .line 18
    new-instance v0, Lo/setLocale;

    sget-object v1, Lo/getJwtIdToken;->asInterface:Lo/getJwtIdToken;

    const/16 v11, 0x9

    const-string v12, "GROUP"

    invoke-direct {v0, v12, v11, v1, v6}, Lo/setLocale;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->asInterface:Lo/setJwtIdToken;

    .line 19
    new-instance v0, Lo/ConversationConfig;

    sget-object v1, Lo/getJwtIdToken;->asInterface:Lo/getJwtIdToken;

    const/16 v12, 0xa

    const-string v13, "MESSAGE"

    invoke-direct {v0, v13, v12, v1, v5}, Lo/ConversationConfig;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->getInterfaceDescriptor:Lo/setJwtIdToken;

    .line 20
    new-instance v0, Lo/shouldLaunchDeeplinkFromNotification;

    sget-object v1, Lo/getJwtIdToken;->onTransact:Lo/getJwtIdToken;

    const/16 v13, 0xb

    const-string v14, "BYTES"

    invoke-direct {v0, v14, v13, v1, v5}, Lo/shouldLaunchDeeplinkFromNotification;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->warmup:Lo/setJwtIdToken;

    .line 21
    new-instance v0, Lo/setJwtIdToken;

    sget-object v1, Lo/getJwtIdToken;->onPostMessage:Lo/getJwtIdToken;

    const/16 v14, 0xc

    const-string v15, "UINT32"

    invoke-direct {v0, v15, v14, v1, v3}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->ICustomTabsService:Lo/setJwtIdToken;

    .line 22
    new-instance v0, Lo/setJwtIdToken;

    sget-object v1, Lo/getJwtIdToken;->asBinder:Lo/getJwtIdToken;

    const/16 v15, 0xd

    const-string v14, "ENUM"

    invoke-direct {v0, v14, v15, v1, v3}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->newSession:Lo/setJwtIdToken;

    .line 23
    new-instance v0, Lo/setJwtIdToken;

    sget-object v1, Lo/getJwtIdToken;->onPostMessage:Lo/getJwtIdToken;

    const/16 v14, 0xe

    const-string v15, "SFIXED32"

    invoke-direct {v0, v15, v14, v1, v4}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->ICustomTabsCallback$Stub$Proxy:Lo/setJwtIdToken;

    .line 24
    new-instance v0, Lo/setJwtIdToken;

    sget-object v1, Lo/getJwtIdToken;->onNavigationEvent:Lo/getJwtIdToken;

    const/16 v15, 0xf

    const-string v14, "SFIXED64"

    invoke-direct {v0, v14, v15, v1, v2}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->mayLaunchUrl:Lo/setJwtIdToken;

    .line 25
    new-instance v0, Lo/setJwtIdToken;

    sget-object v1, Lo/getJwtIdToken;->onPostMessage:Lo/getJwtIdToken;

    const/16 v14, 0x10

    const-string v15, "SINT32"

    invoke-direct {v0, v15, v14, v1, v3}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->requestPostMessageChannel:Lo/setJwtIdToken;

    .line 26
    new-instance v0, Lo/setJwtIdToken;

    sget-object v1, Lo/getJwtIdToken;->onNavigationEvent:Lo/getJwtIdToken;

    const/16 v15, 0x11

    const-string v14, "SINT64"

    invoke-direct {v0, v14, v15, v1, v3}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    sput-object v0, Lo/setJwtIdToken;->updateVisuals:Lo/setJwtIdToken;

    const/16 v1, 0x12

    new-array v1, v1, [Lo/setJwtIdToken;

    .line 27
    sget-object v14, Lo/setJwtIdToken;->onPostMessage:Lo/setJwtIdToken;

    aput-object v14, v1, v3

    sget-object v3, Lo/setJwtIdToken;->ICustomTabsCallback:Lo/setJwtIdToken;

    aput-object v3, v1, v2

    sget-object v2, Lo/setJwtIdToken;->extraCallback:Lo/setJwtIdToken;

    aput-object v2, v1, v5

    sget-object v2, Lo/setJwtIdToken;->onNavigationEvent:Lo/setJwtIdToken;

    aput-object v2, v1, v6

    sget-object v2, Lo/setJwtIdToken;->onMessageChannelReady:Lo/setJwtIdToken;

    aput-object v2, v1, v7

    sget-object v2, Lo/setJwtIdToken;->ICustomTabsCallback$Stub:Lo/setJwtIdToken;

    aput-object v2, v1, v4

    sget-object v2, Lo/setJwtIdToken;->asBinder:Lo/setJwtIdToken;

    aput-object v2, v1, v8

    sget-object v2, Lo/setJwtIdToken;->onRelationshipValidationResult:Lo/setJwtIdToken;

    aput-object v2, v1, v9

    sget-object v2, Lo/setJwtIdToken;->onTransact:Lo/setJwtIdToken;

    aput-object v2, v1, v10

    sget-object v2, Lo/setJwtIdToken;->asInterface:Lo/setJwtIdToken;

    aput-object v2, v1, v11

    sget-object v2, Lo/setJwtIdToken;->getInterfaceDescriptor:Lo/setJwtIdToken;

    aput-object v2, v1, v12

    sget-object v2, Lo/setJwtIdToken;->warmup:Lo/setJwtIdToken;

    aput-object v2, v1, v13

    sget-object v2, Lo/setJwtIdToken;->ICustomTabsService:Lo/setJwtIdToken;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lo/setJwtIdToken;->newSession:Lo/setJwtIdToken;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lo/setJwtIdToken;->ICustomTabsCallback$Stub$Proxy:Lo/setJwtIdToken;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lo/setJwtIdToken;->mayLaunchUrl:Lo/setJwtIdToken;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lo/setJwtIdToken;->requestPostMessageChannel:Lo/setJwtIdToken;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lo/setJwtIdToken;->ICustomTabsService$Stub$Proxy:[Lo/setJwtIdToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILo/getJwtIdToken;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getJwtIdToken;",
            "I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lo/setJwtIdToken;->postMessage:Lo/getJwtIdToken;

    .line 4
    iput p4, p0, Lo/setJwtIdToken;->extraCommand:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILo/getJwtIdToken;ILo/getAndroidDeviceMeta;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;I)V

    return-void
.end method

.method public static values()[Lo/setJwtIdToken;
    .locals 1

    .line 1
    sget-object v0, Lo/setJwtIdToken;->ICustomTabsService$Stub$Proxy:[Lo/setJwtIdToken;

    invoke-virtual {v0}, [Lo/setJwtIdToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setJwtIdToken;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 7
    iget v0, p0, Lo/setJwtIdToken;->extraCommand:I

    return v0
.end method

.method public final onMessageChannelReady()Lo/getJwtIdToken;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/setJwtIdToken;->postMessage:Lo/getJwtIdToken;

    return-object v0
.end method
