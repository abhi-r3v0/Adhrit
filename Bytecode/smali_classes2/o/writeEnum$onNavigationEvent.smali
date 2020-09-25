.class public final enum Lo/writeEnum$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/getEventLogSize$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/writeEnum$onNavigationEvent;",
        ">;",
        "Lo/getEventLogSize$ICustomTabsCallback;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lo/writeEnum$onNavigationEvent;

.field private static final synthetic asInterface:[Lo/writeEnum$onNavigationEvent;

.field public static final enum extraCallback:Lo/writeEnum$onNavigationEvent;

.field public static final enum onMessageChannelReady:Lo/writeEnum$onNavigationEvent;

.field public static final enum onPostMessage:Lo/writeEnum$onNavigationEvent;


# instance fields
.field final onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    new-instance v0, Lo/writeEnum$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "DIRECTION_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, Lo/writeEnum$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$onNavigationEvent;->ICustomTabsCallback:Lo/writeEnum$onNavigationEvent;

    .line 46
    new-instance v0, Lo/writeEnum$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "ASCENDING"

    invoke-direct {v0, v3, v2, v2}, Lo/writeEnum$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$onNavigationEvent;->extraCallback:Lo/writeEnum$onNavigationEvent;

    .line 54
    new-instance v0, Lo/writeEnum$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "DESCENDING"

    invoke-direct {v0, v4, v3, v3}, Lo/writeEnum$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$onNavigationEvent;->onPostMessage:Lo/writeEnum$onNavigationEvent;

    .line 55
    new-instance v0, Lo/writeEnum$onNavigationEvent;

    const/4 v4, 0x3

    const-string v5, "UNRECOGNIZED"

    const/4 v6, -0x1

    invoke-direct {v0, v5, v4, v6}, Lo/writeEnum$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$onNavigationEvent;->onMessageChannelReady:Lo/writeEnum$onNavigationEvent;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/writeEnum$onNavigationEvent;

    .line 29
    sget-object v6, Lo/writeEnum$onNavigationEvent;->ICustomTabsCallback:Lo/writeEnum$onNavigationEvent;

    aput-object v6, v5, v1

    sget-object v1, Lo/writeEnum$onNavigationEvent;->extraCallback:Lo/writeEnum$onNavigationEvent;

    aput-object v1, v5, v2

    sget-object v1, Lo/writeEnum$onNavigationEvent;->onPostMessage:Lo/writeEnum$onNavigationEvent;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/writeEnum$onNavigationEvent;->asInterface:[Lo/writeEnum$onNavigationEvent;

    .line 117
    new-instance v0, Lo/writeEnum$onNavigationEvent$5;

    invoke-direct {v0}, Lo/writeEnum$onNavigationEvent$5;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    iput p3, p0, Lo/writeEnum$onNavigationEvent;->onNavigationEvent:I

    return-void
.end method

.method public static onPostMessage(I)Lo/writeEnum$onNavigationEvent;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_0
    sget-object p0, Lo/writeEnum$onNavigationEvent;->onPostMessage:Lo/writeEnum$onNavigationEvent;

    return-object p0

    .line 106
    :cond_1
    sget-object p0, Lo/writeEnum$onNavigationEvent;->extraCallback:Lo/writeEnum$onNavigationEvent;

    return-object p0

    .line 105
    :cond_2
    sget-object p0, Lo/writeEnum$onNavigationEvent;->ICustomTabsCallback:Lo/writeEnum$onNavigationEvent;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/writeEnum$onNavigationEvent;
    .locals 1

    .line 29
    const-class v0, Lo/writeEnum$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/writeEnum$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/writeEnum$onNavigationEvent;
    .locals 1

    .line 29
    sget-object v0, Lo/writeEnum$onNavigationEvent;->asInterface:[Lo/writeEnum$onNavigationEvent;

    invoke-virtual {v0}, [Lo/writeEnum$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/writeEnum$onNavigationEvent;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 2

    .line 86
    sget-object v0, Lo/writeEnum$onNavigationEvent;->onMessageChannelReady:Lo/writeEnum$onNavigationEvent;

    if-eq p0, v0, :cond_0

    .line 90
    iget v0, p0, Lo/writeEnum$onNavigationEvent;->onNavigationEvent:I

    return v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
