.class public final enum Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/getEventLogSize$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;",
        ">;",
        "Lo/getEventLogSize$ICustomTabsCallback;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

.field public static final enum onMessageChannelReady:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

.field private static enum onNavigationEvent:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

.field private static final synthetic onPostMessage:[Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;


# instance fields
.field final ICustomTabsCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1433
    new-instance v0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "OPERATOR_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->onNavigationEvent:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    .line 1441
    new-instance v0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "AND"

    invoke-direct {v0, v3, v2, v2}, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    .line 1442
    new-instance v0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "UNRECOGNIZED"

    const/4 v5, -0x1

    invoke-direct {v0, v4, v3, v5}, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    .line 1424
    sget-object v5, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->onNavigationEvent:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    aput-object v5, v4, v1

    sget-object v1, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:[Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    .line 1495
    new-instance v0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback$2;

    invoke-direct {v0}, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback$2;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1519
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1520
    iput p3, p0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->ICustomTabsCallback:I

    return-void
.end method

.method public static extraCallback(I)Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1485
    :cond_0
    sget-object p0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    return-object p0

    .line 1484
    :cond_1
    sget-object p0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->onNavigationEvent:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;
    .locals 1

    .line 1424
    const-class v0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;
    .locals 1

    .line 1424
    sget-object v0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:[Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 2

    .line 1465
    sget-object v0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    if-eq p0, v0, :cond_0

    .line 1469
    iget v0, p0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->ICustomTabsCallback:I

    return v0

    .line 1466
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
