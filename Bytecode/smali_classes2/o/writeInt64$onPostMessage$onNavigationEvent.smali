.class public final enum Lo/writeInt64$onPostMessage$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/getEventLogSize$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeInt64$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/writeInt64$onPostMessage$onNavigationEvent;",
        ">;",
        "Lo/getEventLogSize$ICustomTabsCallback;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/writeInt64$onPostMessage$onNavigationEvent;

.field public static final enum onMessageChannelReady:Lo/writeInt64$onPostMessage$onNavigationEvent;

.field public static final enum onNavigationEvent:Lo/writeInt64$onPostMessage$onNavigationEvent;

.field private static final synthetic onPostMessage:[Lo/writeInt64$onPostMessage$onNavigationEvent;


# instance fields
.field final extraCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 283
    new-instance v0, Lo/writeInt64$onPostMessage$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "SERVER_VALUE_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, Lo/writeInt64$onPostMessage$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeInt64$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/writeInt64$onPostMessage$onNavigationEvent;

    .line 292
    new-instance v0, Lo/writeInt64$onPostMessage$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "REQUEST_TIME"

    invoke-direct {v0, v3, v2, v2}, Lo/writeInt64$onPostMessage$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeInt64$onPostMessage$onNavigationEvent;->ICustomTabsCallback:Lo/writeInt64$onPostMessage$onNavigationEvent;

    .line 293
    new-instance v0, Lo/writeInt64$onPostMessage$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "UNRECOGNIZED"

    const/4 v5, -0x1

    invoke-direct {v0, v4, v3, v5}, Lo/writeInt64$onPostMessage$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeInt64$onPostMessage$onNavigationEvent;->onNavigationEvent:Lo/writeInt64$onPostMessage$onNavigationEvent;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/writeInt64$onPostMessage$onNavigationEvent;

    .line 274
    sget-object v5, Lo/writeInt64$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/writeInt64$onPostMessage$onNavigationEvent;

    aput-object v5, v4, v1

    sget-object v1, Lo/writeInt64$onPostMessage$onNavigationEvent;->ICustomTabsCallback:Lo/writeInt64$onPostMessage$onNavigationEvent;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/writeInt64$onPostMessage$onNavigationEvent;->onPostMessage:[Lo/writeInt64$onPostMessage$onNavigationEvent;

    .line 347
    new-instance v0, Lo/writeInt64$onPostMessage$onNavigationEvent$4;

    invoke-direct {v0}, Lo/writeInt64$onPostMessage$onNavigationEvent$4;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 371
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 372
    iput p3, p0, Lo/writeInt64$onPostMessage$onNavigationEvent;->extraCallback:I

    return-void
.end method

.method public static onPostMessage(I)Lo/writeInt64$onPostMessage$onNavigationEvent;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 337
    :cond_0
    sget-object p0, Lo/writeInt64$onPostMessage$onNavigationEvent;->ICustomTabsCallback:Lo/writeInt64$onPostMessage$onNavigationEvent;

    return-object p0

    .line 336
    :cond_1
    sget-object p0, Lo/writeInt64$onPostMessage$onNavigationEvent;->onMessageChannelReady:Lo/writeInt64$onPostMessage$onNavigationEvent;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/writeInt64$onPostMessage$onNavigationEvent;
    .locals 1

    .line 274
    const-class v0, Lo/writeInt64$onPostMessage$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/writeInt64$onPostMessage$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/writeInt64$onPostMessage$onNavigationEvent;
    .locals 1

    .line 274
    sget-object v0, Lo/writeInt64$onPostMessage$onNavigationEvent;->onPostMessage:[Lo/writeInt64$onPostMessage$onNavigationEvent;

    invoke-virtual {v0}, [Lo/writeInt64$onPostMessage$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/writeInt64$onPostMessage$onNavigationEvent;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 2

    .line 317
    sget-object v0, Lo/writeInt64$onPostMessage$onNavigationEvent;->onNavigationEvent:Lo/writeInt64$onPostMessage$onNavigationEvent;

    if-eq p0, v0, :cond_0

    .line 321
    iget v0, p0, Lo/writeInt64$onPostMessage$onNavigationEvent;->extraCallback:I

    return v0

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
