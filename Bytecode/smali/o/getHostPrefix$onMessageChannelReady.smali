.class public final enum Lo/getHostPrefix$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getHostPrefix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getHostPrefix$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/getHostPrefix$onMessageChannelReady;

.field public static final enum onMessageChannelReady:Lo/getHostPrefix$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/getHostPrefix$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/getHostPrefix$onMessageChannelReady;

.field private static final synthetic onRelationshipValidationResult:[Lo/getHostPrefix$onMessageChannelReady;


# instance fields
.field public ICustomTabsCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 322
    new-instance v0, Lo/getHostPrefix$onMessageChannelReady;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "FULL_FETCH"

    invoke-direct {v0, v3, v1, v2}, Lo/getHostPrefix$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getHostPrefix$onMessageChannelReady;->extraCallback:Lo/getHostPrefix$onMessageChannelReady;

    .line 325
    new-instance v0, Lo/getHostPrefix$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "DISK_CACHE"

    invoke-direct {v0, v4, v2, v3}, Lo/getHostPrefix$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getHostPrefix$onMessageChannelReady;->onNavigationEvent:Lo/getHostPrefix$onMessageChannelReady;

    .line 328
    new-instance v0, Lo/getHostPrefix$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "ENCODED_MEMORY_CACHE"

    invoke-direct {v0, v5, v3, v4}, Lo/getHostPrefix$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getHostPrefix$onMessageChannelReady;->onPostMessage:Lo/getHostPrefix$onMessageChannelReady;

    .line 331
    new-instance v0, Lo/getHostPrefix$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "BITMAP_MEMORY_CACHE"

    invoke-direct {v0, v6, v4, v5}, Lo/getHostPrefix$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getHostPrefix$onMessageChannelReady;->onMessageChannelReady:Lo/getHostPrefix$onMessageChannelReady;

    new-array v5, v5, [Lo/getHostPrefix$onMessageChannelReady;

    .line 320
    sget-object v6, Lo/getHostPrefix$onMessageChannelReady;->extraCallback:Lo/getHostPrefix$onMessageChannelReady;

    aput-object v6, v5, v1

    sget-object v1, Lo/getHostPrefix$onMessageChannelReady;->onNavigationEvent:Lo/getHostPrefix$onMessageChannelReady;

    aput-object v1, v5, v2

    sget-object v1, Lo/getHostPrefix$onMessageChannelReady;->onPostMessage:Lo/getHostPrefix$onMessageChannelReady;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/getHostPrefix$onMessageChannelReady;->onRelationshipValidationResult:[Lo/getHostPrefix$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 336
    iput p3, p0, Lo/getHostPrefix$onMessageChannelReady;->ICustomTabsCallback:I

    return-void
.end method

.method public static ICustomTabsCallback(Lo/getHostPrefix$onMessageChannelReady;Lo/getHostPrefix$onMessageChannelReady;)Lo/getHostPrefix$onMessageChannelReady;
    .locals 2

    .line 1340
    iget v0, p0, Lo/getHostPrefix$onMessageChannelReady;->ICustomTabsCallback:I

    .line 2340
    iget v1, p1, Lo/getHostPrefix$onMessageChannelReady;->ICustomTabsCallback:I

    if-le v0, v1, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getHostPrefix$onMessageChannelReady;
    .locals 1

    .line 320
    const-class v0, Lo/getHostPrefix$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getHostPrefix$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/getHostPrefix$onMessageChannelReady;
    .locals 1

    .line 320
    sget-object v0, Lo/getHostPrefix$onMessageChannelReady;->onRelationshipValidationResult:[Lo/getHostPrefix$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/getHostPrefix$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getHostPrefix$onMessageChannelReady;

    return-object v0
.end method
