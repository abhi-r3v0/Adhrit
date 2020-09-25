.class public final enum Lo/getNodeFilter;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getNodeFilter;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getNodeFilter;

.field private static enum ICustomTabsCallback$Stub:Lo/getNodeFilter;

.field private static enum asBinder:Lo/getNodeFilter;

.field public static final enum asInterface:Lo/getNodeFilter;

.field public static final enum extraCallback:Lo/getNodeFilter;

.field private static enum getInterfaceDescriptor:Lo/getNodeFilter;

.field private static enum newSession:Lo/getNodeFilter;

.field public static final enum onMessageChannelReady:Lo/getNodeFilter;

.field public static final enum onNavigationEvent:Lo/getNodeFilter;

.field public static final enum onPostMessage:Lo/getNodeFilter;

.field private static enum onTransact:Lo/getNodeFilter;

.field private static final synthetic warmup:[Lo/getNodeFilter;


# instance fields
.field public final onRelationshipValidationResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 21
    new-instance v0, Lo/getNodeFilter;

    const/4 v1, 0x0

    const-string v2, "NO_ERROR"

    invoke-direct {v0, v2, v1, v1}, Lo/getNodeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getNodeFilter;->onMessageChannelReady:Lo/getNodeFilter;

    .line 23
    new-instance v0, Lo/getNodeFilter;

    const/4 v2, 0x1

    const-string v3, "PROTOCOL_ERROR"

    invoke-direct {v0, v3, v2, v2}, Lo/getNodeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getNodeFilter;->onPostMessage:Lo/getNodeFilter;

    .line 25
    new-instance v0, Lo/getNodeFilter;

    const/4 v3, 0x2

    const-string v4, "INTERNAL_ERROR"

    invoke-direct {v0, v4, v3, v3}, Lo/getNodeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getNodeFilter;->extraCallback:Lo/getNodeFilter;

    .line 27
    new-instance v0, Lo/getNodeFilter;

    const/4 v4, 0x3

    const-string v5, "FLOW_CONTROL_ERROR"

    invoke-direct {v0, v5, v4, v4}, Lo/getNodeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getNodeFilter;->ICustomTabsCallback:Lo/getNodeFilter;

    .line 29
    new-instance v0, Lo/getNodeFilter;

    const/4 v5, 0x4

    const/4 v6, 0x7

    const-string v7, "REFUSED_STREAM"

    invoke-direct {v0, v7, v5, v6}, Lo/getNodeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getNodeFilter;->onNavigationEvent:Lo/getNodeFilter;

    .line 31
    new-instance v0, Lo/getNodeFilter;

    const/4 v7, 0x5

    const/16 v8, 0x8

    const-string v9, "CANCEL"

    invoke-direct {v0, v9, v7, v8}, Lo/getNodeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getNodeFilter;->asInterface:Lo/getNodeFilter;

    .line 33
    new-instance v0, Lo/getNodeFilter;

    const/4 v9, 0x6

    const/16 v10, 0x9

    const-string v11, "COMPRESSION_ERROR"

    invoke-direct {v0, v11, v9, v10}, Lo/getNodeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getNodeFilter;->asBinder:Lo/getNodeFilter;

    .line 35
    new-instance v0, Lo/getNodeFilter;

    const/16 v11, 0xa

    const-string v12, "CONNECT_ERROR"

    invoke-direct {v0, v12, v6, v11}, Lo/getNodeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getNodeFilter;->ICustomTabsCallback$Stub:Lo/getNodeFilter;

    .line 37
    new-instance v0, Lo/getNodeFilter;

    const/16 v12, 0xb

    const-string v13, "ENHANCE_YOUR_CALM"

    invoke-direct {v0, v13, v8, v12}, Lo/getNodeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getNodeFilter;->onTransact:Lo/getNodeFilter;

    .line 39
    new-instance v0, Lo/getNodeFilter;

    const-string v13, "INADEQUATE_SECURITY"

    const/16 v14, 0xc

    invoke-direct {v0, v13, v10, v14}, Lo/getNodeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getNodeFilter;->getInterfaceDescriptor:Lo/getNodeFilter;

    .line 41
    new-instance v0, Lo/getNodeFilter;

    const-string v13, "HTTP_1_1_REQUIRED"

    const/16 v14, 0xd

    invoke-direct {v0, v13, v11, v14}, Lo/getNodeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getNodeFilter;->newSession:Lo/getNodeFilter;

    new-array v12, v12, [Lo/getNodeFilter;

    .line 19
    sget-object v13, Lo/getNodeFilter;->onMessageChannelReady:Lo/getNodeFilter;

    aput-object v13, v12, v1

    sget-object v1, Lo/getNodeFilter;->onPostMessage:Lo/getNodeFilter;

    aput-object v1, v12, v2

    sget-object v1, Lo/getNodeFilter;->extraCallback:Lo/getNodeFilter;

    aput-object v1, v12, v3

    sget-object v1, Lo/getNodeFilter;->ICustomTabsCallback:Lo/getNodeFilter;

    aput-object v1, v12, v4

    sget-object v1, Lo/getNodeFilter;->onNavigationEvent:Lo/getNodeFilter;

    aput-object v1, v12, v5

    sget-object v1, Lo/getNodeFilter;->asInterface:Lo/getNodeFilter;

    aput-object v1, v12, v7

    sget-object v1, Lo/getNodeFilter;->asBinder:Lo/getNodeFilter;

    aput-object v1, v12, v9

    sget-object v1, Lo/getNodeFilter;->ICustomTabsCallback$Stub:Lo/getNodeFilter;

    aput-object v1, v12, v6

    sget-object v1, Lo/getNodeFilter;->onTransact:Lo/getNodeFilter;

    aput-object v1, v12, v8

    sget-object v1, Lo/getNodeFilter;->getInterfaceDescriptor:Lo/getNodeFilter;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lo/getNodeFilter;->warmup:[Lo/getNodeFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lo/getNodeFilter;->onRelationshipValidationResult:I

    return-void
.end method

.method public static onMessageChannelReady(I)Lo/getNodeFilter;
    .locals 5

    .line 50
    invoke-static {}, Lo/getNodeFilter;->values()[Lo/getNodeFilter;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 51
    iget v4, v3, Lo/getNodeFilter;->onRelationshipValidationResult:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getNodeFilter;
    .locals 1

    .line 19
    const-class v0, Lo/getNodeFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getNodeFilter;

    return-object p0
.end method

.method public static values()[Lo/getNodeFilter;
    .locals 1

    .line 19
    sget-object v0, Lo/getNodeFilter;->warmup:[Lo/getNodeFilter;

    invoke-virtual {v0}, [Lo/getNodeFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getNodeFilter;

    return-object v0
.end method
