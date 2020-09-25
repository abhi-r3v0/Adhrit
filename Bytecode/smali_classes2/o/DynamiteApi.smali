.class public enum Lo/DynamiteApi;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/DynamiteApi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/DynamiteApi;

.field public static final enum ICustomTabsCallback$Stub:Lo/DynamiteApi;

.field public static final enum ICustomTabsCallback$Stub$Proxy:Lo/DynamiteApi;

.field public static final enum ICustomTabsService:Lo/DynamiteApi;

.field private static final synthetic IPostMessageService$Stub:[Lo/DynamiteApi;

.field public static final enum asBinder:Lo/DynamiteApi;

.field public static final enum asInterface:Lo/DynamiteApi;

.field public static final enum extraCallback:Lo/DynamiteApi;

.field public static final enum extraCommand:Lo/DynamiteApi;

.field public static final enum getInterfaceDescriptor:Lo/DynamiteApi;

.field public static final enum mayLaunchUrl:Lo/DynamiteApi;

.field public static final enum newSession:Lo/DynamiteApi;

.field public static final enum onMessageChannelReady:Lo/DynamiteApi;

.field public static final enum onNavigationEvent:Lo/DynamiteApi;

.field public static final enum onPostMessage:Lo/DynamiteApi;

.field public static final enum onRelationshipValidationResult:Lo/DynamiteApi;

.field public static final enum onTransact:Lo/DynamiteApi;

.field public static final enum updateVisuals:Lo/DynamiteApi;

.field public static final enum warmup:Lo/DynamiteApi;


# instance fields
.field private final postMessage:Lo/DynamiteModule$LoadingException;

.field private final requestPostMessageChannel:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lo/DynamiteApi;

    sget-object v1, Lo/DynamiteModule$LoadingException;->onNavigationEvent:Lo/DynamiteModule$LoadingException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "DOUBLE"

    invoke-direct {v0, v4, v3, v1, v2}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->onPostMessage:Lo/DynamiteApi;

    .line 10
    new-instance v0, Lo/DynamiteApi;

    sget-object v1, Lo/DynamiteModule$LoadingException;->onMessageChannelReady:Lo/DynamiteModule$LoadingException;

    const/4 v4, 0x5

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v2, v1, v4}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->extraCallback:Lo/DynamiteApi;

    .line 11
    new-instance v0, Lo/DynamiteApi;

    sget-object v1, Lo/DynamiteModule$LoadingException;->onPostMessage:Lo/DynamiteModule$LoadingException;

    const/4 v5, 0x2

    const-string v6, "INT64"

    invoke-direct {v0, v6, v5, v1, v3}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->ICustomTabsCallback:Lo/DynamiteApi;

    .line 12
    new-instance v0, Lo/DynamiteApi;

    sget-object v1, Lo/DynamiteModule$LoadingException;->onPostMessage:Lo/DynamiteModule$LoadingException;

    const/4 v6, 0x3

    const-string v7, "UINT64"

    invoke-direct {v0, v7, v6, v1, v3}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->onMessageChannelReady:Lo/DynamiteApi;

    .line 13
    new-instance v0, Lo/DynamiteApi;

    sget-object v1, Lo/DynamiteModule$LoadingException;->ICustomTabsCallback:Lo/DynamiteModule$LoadingException;

    const/4 v7, 0x4

    const-string v8, "INT32"

    invoke-direct {v0, v8, v7, v1, v3}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->onNavigationEvent:Lo/DynamiteApi;

    .line 14
    new-instance v0, Lo/DynamiteApi;

    sget-object v1, Lo/DynamiteModule$LoadingException;->onPostMessage:Lo/DynamiteModule$LoadingException;

    const-string v8, "FIXED64"

    invoke-direct {v0, v8, v4, v1, v2}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->asInterface:Lo/DynamiteApi;

    .line 15
    new-instance v0, Lo/DynamiteApi;

    sget-object v1, Lo/DynamiteModule$LoadingException;->ICustomTabsCallback:Lo/DynamiteModule$LoadingException;

    const/4 v8, 0x6

    const-string v9, "FIXED32"

    invoke-direct {v0, v9, v8, v1, v4}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->onRelationshipValidationResult:Lo/DynamiteApi;

    .line 16
    new-instance v0, Lo/DynamiteApi;

    sget-object v1, Lo/DynamiteModule$LoadingException;->extraCallback:Lo/DynamiteModule$LoadingException;

    const/4 v9, 0x7

    const-string v10, "BOOL"

    invoke-direct {v0, v10, v9, v1, v3}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->onTransact:Lo/DynamiteApi;

    .line 17
    new-instance v0, Lo/DynamiteModule$DynamiteLoaderClassLoader;

    sget-object v1, Lo/DynamiteModule$LoadingException;->ICustomTabsCallback$Stub:Lo/DynamiteModule$LoadingException;

    const/16 v10, 0x8

    const-string v11, "STRING"

    invoke-direct {v0, v11, v10, v1, v5}, Lo/DynamiteModule$DynamiteLoaderClassLoader;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->asBinder:Lo/DynamiteApi;

    .line 18
    new-instance v0, Lo/getCredential;

    sget-object v1, Lo/DynamiteModule$LoadingException;->onRelationshipValidationResult:Lo/DynamiteModule$LoadingException;

    const/16 v11, 0x9

    const-string v12, "GROUP"

    invoke-direct {v0, v12, v11, v1, v6}, Lo/getCredential;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->ICustomTabsCallback$Stub:Lo/DynamiteApi;

    .line 19
    new-instance v0, Lo/RemoteCreator$RemoteCreatorException;

    sget-object v1, Lo/DynamiteModule$LoadingException;->onRelationshipValidationResult:Lo/DynamiteModule$LoadingException;

    const/16 v12, 0xa

    const-string v13, "MESSAGE"

    invoke-direct {v0, v13, v12, v1, v5}, Lo/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->ICustomTabsService:Lo/DynamiteApi;

    .line 20
    new-instance v0, Lo/checkState;

    sget-object v1, Lo/DynamiteModule$LoadingException;->asBinder:Lo/DynamiteModule$LoadingException;

    const/16 v13, 0xb

    const-string v14, "BYTES"

    invoke-direct {v0, v14, v13, v1, v5}, Lo/checkState;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->ICustomTabsCallback$Stub$Proxy:Lo/DynamiteApi;

    .line 21
    new-instance v0, Lo/DynamiteApi;

    sget-object v1, Lo/DynamiteModule$LoadingException;->ICustomTabsCallback:Lo/DynamiteModule$LoadingException;

    const/16 v14, 0xc

    const-string v15, "UINT32"

    invoke-direct {v0, v15, v14, v1, v3}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->getInterfaceDescriptor:Lo/DynamiteApi;

    .line 22
    new-instance v0, Lo/DynamiteApi;

    sget-object v1, Lo/DynamiteModule$LoadingException;->asInterface:Lo/DynamiteModule$LoadingException;

    const/16 v15, 0xd

    const-string v14, "ENUM"

    invoke-direct {v0, v14, v15, v1, v3}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->warmup:Lo/DynamiteApi;

    .line 23
    new-instance v0, Lo/DynamiteApi;

    sget-object v1, Lo/DynamiteModule$LoadingException;->ICustomTabsCallback:Lo/DynamiteModule$LoadingException;

    const/16 v14, 0xe

    const-string v15, "SFIXED32"

    invoke-direct {v0, v15, v14, v1, v4}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->newSession:Lo/DynamiteApi;

    .line 24
    new-instance v0, Lo/DynamiteApi;

    sget-object v1, Lo/DynamiteModule$LoadingException;->onPostMessage:Lo/DynamiteModule$LoadingException;

    const/16 v15, 0xf

    const-string v14, "SFIXED64"

    invoke-direct {v0, v14, v15, v1, v2}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->mayLaunchUrl:Lo/DynamiteApi;

    .line 25
    new-instance v0, Lo/DynamiteApi;

    sget-object v1, Lo/DynamiteModule$LoadingException;->ICustomTabsCallback:Lo/DynamiteModule$LoadingException;

    const/16 v14, 0x10

    const-string v15, "SINT32"

    invoke-direct {v0, v15, v14, v1, v3}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->updateVisuals:Lo/DynamiteApi;

    .line 26
    new-instance v0, Lo/DynamiteApi;

    sget-object v1, Lo/DynamiteModule$LoadingException;->onPostMessage:Lo/DynamiteModule$LoadingException;

    const/16 v15, 0x11

    const-string v14, "SINT64"

    invoke-direct {v0, v14, v15, v1, v3}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    sput-object v0, Lo/DynamiteApi;->extraCommand:Lo/DynamiteApi;

    const/16 v1, 0x12

    new-array v1, v1, [Lo/DynamiteApi;

    .line 27
    sget-object v14, Lo/DynamiteApi;->onPostMessage:Lo/DynamiteApi;

    aput-object v14, v1, v3

    sget-object v3, Lo/DynamiteApi;->extraCallback:Lo/DynamiteApi;

    aput-object v3, v1, v2

    sget-object v2, Lo/DynamiteApi;->ICustomTabsCallback:Lo/DynamiteApi;

    aput-object v2, v1, v5

    sget-object v2, Lo/DynamiteApi;->onMessageChannelReady:Lo/DynamiteApi;

    aput-object v2, v1, v6

    sget-object v2, Lo/DynamiteApi;->onNavigationEvent:Lo/DynamiteApi;

    aput-object v2, v1, v7

    sget-object v2, Lo/DynamiteApi;->asInterface:Lo/DynamiteApi;

    aput-object v2, v1, v4

    sget-object v2, Lo/DynamiteApi;->onRelationshipValidationResult:Lo/DynamiteApi;

    aput-object v2, v1, v8

    sget-object v2, Lo/DynamiteApi;->onTransact:Lo/DynamiteApi;

    aput-object v2, v1, v9

    sget-object v2, Lo/DynamiteApi;->asBinder:Lo/DynamiteApi;

    aput-object v2, v1, v10

    sget-object v2, Lo/DynamiteApi;->ICustomTabsCallback$Stub:Lo/DynamiteApi;

    aput-object v2, v1, v11

    sget-object v2, Lo/DynamiteApi;->ICustomTabsService:Lo/DynamiteApi;

    aput-object v2, v1, v12

    sget-object v2, Lo/DynamiteApi;->ICustomTabsCallback$Stub$Proxy:Lo/DynamiteApi;

    aput-object v2, v1, v13

    sget-object v2, Lo/DynamiteApi;->getInterfaceDescriptor:Lo/DynamiteApi;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lo/DynamiteApi;->warmup:Lo/DynamiteApi;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lo/DynamiteApi;->newSession:Lo/DynamiteApi;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lo/DynamiteApi;->mayLaunchUrl:Lo/DynamiteApi;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lo/DynamiteApi;->updateVisuals:Lo/DynamiteApi;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    .line 28
    sput-object v1, Lo/DynamiteApi;->IPostMessageService$Stub:[Lo/DynamiteApi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DynamiteModule$LoadingException;",
            "I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lo/DynamiteApi;->postMessage:Lo/DynamiteModule$LoadingException;

    .line 4
    iput p4, p0, Lo/DynamiteApi;->requestPostMessageChannel:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;ILo/getCredentialWithLink;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V

    return-void
.end method

.method public static values()[Lo/DynamiteApi;
    .locals 1

    .line 1
    sget-object v0, Lo/DynamiteApi;->IPostMessageService$Stub:[Lo/DynamiteApi;

    invoke-virtual {v0}, [Lo/DynamiteApi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/DynamiteApi;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/DynamiteModule$LoadingException;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/DynamiteApi;->postMessage:Lo/DynamiteModule$LoadingException;

    return-object v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 7
    iget v0, p0, Lo/DynamiteApi;->requestPostMessageChannel:I

    return v0
.end method
