.class public final enum Lo/writeRawBytes;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/writeRawBytes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/writeRawBytes;

.field public static final enum ICustomTabsCallback$Stub:Lo/writeRawBytes;

.field private static final synthetic ICustomTabsCallback$Stub$Proxy:[Lo/writeRawBytes;

.field public static final enum asBinder:Lo/writeRawBytes;

.field public static final enum asInterface:Lo/writeRawBytes;

.field public static final enum extraCallback:Lo/writeRawBytes;

.field public static final enum onMessageChannelReady:Lo/writeRawBytes;

.field public static final enum onNavigationEvent:Lo/writeRawBytes;

.field public static final enum onPostMessage:Lo/writeRawBytes;

.field public static final enum onRelationshipValidationResult:Lo/writeRawBytes;

.field public static final enum onTransact:Lo/writeRawBytes;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 31
    new-instance v0, Lo/writeRawBytes;

    const/4 v1, 0x0

    const-string v2, "BEGIN_ARRAY"

    invoke-direct {v0, v2, v1}, Lo/writeRawBytes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeRawBytes;->onMessageChannelReady:Lo/writeRawBytes;

    .line 37
    new-instance v0, Lo/writeRawBytes;

    const/4 v2, 0x1

    const-string v3, "END_ARRAY"

    invoke-direct {v0, v3, v2}, Lo/writeRawBytes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeRawBytes;->extraCallback:Lo/writeRawBytes;

    .line 43
    new-instance v0, Lo/writeRawBytes;

    const/4 v3, 0x2

    const-string v4, "BEGIN_OBJECT"

    invoke-direct {v0, v4, v3}, Lo/writeRawBytes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeRawBytes;->ICustomTabsCallback:Lo/writeRawBytes;

    .line 49
    new-instance v0, Lo/writeRawBytes;

    const/4 v4, 0x3

    const-string v5, "END_OBJECT"

    invoke-direct {v0, v5, v4}, Lo/writeRawBytes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeRawBytes;->onPostMessage:Lo/writeRawBytes;

    .line 56
    new-instance v0, Lo/writeRawBytes;

    const/4 v5, 0x4

    const-string v6, "NAME"

    invoke-direct {v0, v6, v5}, Lo/writeRawBytes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeRawBytes;->onNavigationEvent:Lo/writeRawBytes;

    .line 61
    new-instance v0, Lo/writeRawBytes;

    const/4 v6, 0x5

    const-string v7, "STRING"

    invoke-direct {v0, v7, v6}, Lo/writeRawBytes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeRawBytes;->asInterface:Lo/writeRawBytes;

    .line 67
    new-instance v0, Lo/writeRawBytes;

    const/4 v7, 0x6

    const-string v8, "NUMBER"

    invoke-direct {v0, v8, v7}, Lo/writeRawBytes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeRawBytes;->onTransact:Lo/writeRawBytes;

    .line 72
    new-instance v0, Lo/writeRawBytes;

    const/4 v8, 0x7

    const-string v9, "BOOLEAN"

    invoke-direct {v0, v9, v8}, Lo/writeRawBytes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeRawBytes;->asBinder:Lo/writeRawBytes;

    .line 77
    new-instance v0, Lo/writeRawBytes;

    const/16 v9, 0x8

    const-string v10, "NULL"

    invoke-direct {v0, v10, v9}, Lo/writeRawBytes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeRawBytes;->onRelationshipValidationResult:Lo/writeRawBytes;

    .line 84
    new-instance v0, Lo/writeRawBytes;

    const/16 v10, 0x9

    const-string v11, "END_DOCUMENT"

    invoke-direct {v0, v11, v10}, Lo/writeRawBytes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeRawBytes;->ICustomTabsCallback$Stub:Lo/writeRawBytes;

    const/16 v11, 0xa

    new-array v11, v11, [Lo/writeRawBytes;

    .line 25
    sget-object v12, Lo/writeRawBytes;->onMessageChannelReady:Lo/writeRawBytes;

    aput-object v12, v11, v1

    sget-object v1, Lo/writeRawBytes;->extraCallback:Lo/writeRawBytes;

    aput-object v1, v11, v2

    sget-object v1, Lo/writeRawBytes;->ICustomTabsCallback:Lo/writeRawBytes;

    aput-object v1, v11, v3

    sget-object v1, Lo/writeRawBytes;->onPostMessage:Lo/writeRawBytes;

    aput-object v1, v11, v4

    sget-object v1, Lo/writeRawBytes;->onNavigationEvent:Lo/writeRawBytes;

    aput-object v1, v11, v5

    sget-object v1, Lo/writeRawBytes;->asInterface:Lo/writeRawBytes;

    aput-object v1, v11, v6

    sget-object v1, Lo/writeRawBytes;->onTransact:Lo/writeRawBytes;

    aput-object v1, v11, v7

    sget-object v1, Lo/writeRawBytes;->asBinder:Lo/writeRawBytes;

    aput-object v1, v11, v8

    sget-object v1, Lo/writeRawBytes;->onRelationshipValidationResult:Lo/writeRawBytes;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lo/writeRawBytes;->ICustomTabsCallback$Stub$Proxy:[Lo/writeRawBytes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/writeRawBytes;
    .locals 1

    .line 25
    const-class v0, Lo/writeRawBytes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/writeRawBytes;

    return-object p0
.end method

.method public static values()[Lo/writeRawBytes;
    .locals 1

    .line 25
    sget-object v0, Lo/writeRawBytes;->ICustomTabsCallback$Stub$Proxy:[Lo/writeRawBytes;

    invoke-virtual {v0}, [Lo/writeRawBytes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/writeRawBytes;

    return-object v0
.end method
