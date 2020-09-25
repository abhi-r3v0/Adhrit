.class public final enum Lo/setImageURI;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setImageURI;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setImageURI;

.field public static final enum extraCallback:Lo/setImageURI;

.field public static final enum onMessageChannelReady:Lo/setImageURI;

.field public static final enum onNavigationEvent:Lo/setImageURI;

.field public static final enum onPostMessage:Lo/setImageURI;

.field private static final synthetic onRelationshipValidationResult:[Lo/setImageURI;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 9
    new-instance v0, Lo/setImageURI;

    const/4 v1, 0x0

    const-string v2, "LOCAL"

    invoke-direct {v0, v2, v1}, Lo/setImageURI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setImageURI;->onNavigationEvent:Lo/setImageURI;

    .line 11
    new-instance v0, Lo/setImageURI;

    const/4 v2, 0x1

    const-string v3, "REMOTE"

    invoke-direct {v0, v3, v2}, Lo/setImageURI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setImageURI;->ICustomTabsCallback:Lo/setImageURI;

    .line 13
    new-instance v0, Lo/setImageURI;

    const/4 v3, 0x2

    const-string v4, "DATA_DISK_CACHE"

    invoke-direct {v0, v4, v3}, Lo/setImageURI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setImageURI;->onMessageChannelReady:Lo/setImageURI;

    .line 15
    new-instance v0, Lo/setImageURI;

    const/4 v4, 0x3

    const-string v5, "RESOURCE_DISK_CACHE"

    invoke-direct {v0, v5, v4}, Lo/setImageURI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setImageURI;->onPostMessage:Lo/setImageURI;

    .line 17
    new-instance v0, Lo/setImageURI;

    const/4 v5, 0x4

    const-string v6, "MEMORY_CACHE"

    invoke-direct {v0, v6, v5}, Lo/setImageURI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setImageURI;->extraCallback:Lo/setImageURI;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/setImageURI;

    .line 4
    sget-object v7, Lo/setImageURI;->onNavigationEvent:Lo/setImageURI;

    aput-object v7, v6, v1

    sget-object v1, Lo/setImageURI;->ICustomTabsCallback:Lo/setImageURI;

    aput-object v1, v6, v2

    sget-object v1, Lo/setImageURI;->onMessageChannelReady:Lo/setImageURI;

    aput-object v1, v6, v3

    sget-object v1, Lo/setImageURI;->onPostMessage:Lo/setImageURI;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/setImageURI;->onRelationshipValidationResult:[Lo/setImageURI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setImageURI;
    .locals 1

    .line 4
    const-class v0, Lo/setImageURI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setImageURI;

    return-object p0
.end method

.method public static values()[Lo/setImageURI;
    .locals 1

    .line 4
    sget-object v0, Lo/setImageURI;->onRelationshipValidationResult:[Lo/setImageURI;

    invoke-virtual {v0}, [Lo/setImageURI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setImageURI;

    return-object v0
.end method
