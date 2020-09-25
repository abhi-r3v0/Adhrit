.class public final enum Lo/closeInProgressStream$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/closeInProgressStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/closeInProgressStream$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static enum extraCallback:Lo/closeInProgressStream$onMessageChannelReady;

.field private static final synthetic onMessageChannelReady:[Lo/closeInProgressStream$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/closeInProgressStream$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/closeInProgressStream$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lo/closeInProgressStream$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "FOUND"

    invoke-direct {v0, v2, v1}, Lo/closeInProgressStream$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/closeInProgressStream$onMessageChannelReady;->onPostMessage:Lo/closeInProgressStream$onMessageChannelReady;

    .line 25
    new-instance v0, Lo/closeInProgressStream$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "MISSING"

    invoke-direct {v0, v3, v2}, Lo/closeInProgressStream$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/closeInProgressStream$onMessageChannelReady;->onNavigationEvent:Lo/closeInProgressStream$onMessageChannelReady;

    .line 26
    new-instance v0, Lo/closeInProgressStream$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "RESULT_NOT_SET"

    invoke-direct {v0, v4, v3}, Lo/closeInProgressStream$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/closeInProgressStream$onMessageChannelReady;->extraCallback:Lo/closeInProgressStream$onMessageChannelReady;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/closeInProgressStream$onMessageChannelReady;

    .line 23
    sget-object v5, Lo/closeInProgressStream$onMessageChannelReady;->onPostMessage:Lo/closeInProgressStream$onMessageChannelReady;

    aput-object v5, v4, v1

    sget-object v1, Lo/closeInProgressStream$onMessageChannelReady;->onNavigationEvent:Lo/closeInProgressStream$onMessageChannelReady;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/closeInProgressStream$onMessageChannelReady;->onMessageChannelReady:[Lo/closeInProgressStream$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static ICustomTabsCallback(I)Lo/closeInProgressStream$onMessageChannelReady;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    sget-object p0, Lo/closeInProgressStream$onMessageChannelReady;->onNavigationEvent:Lo/closeInProgressStream$onMessageChannelReady;

    return-object p0

    .line 41
    :cond_1
    sget-object p0, Lo/closeInProgressStream$onMessageChannelReady;->onPostMessage:Lo/closeInProgressStream$onMessageChannelReady;

    return-object p0

    .line 43
    :cond_2
    sget-object p0, Lo/closeInProgressStream$onMessageChannelReady;->extraCallback:Lo/closeInProgressStream$onMessageChannelReady;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/closeInProgressStream$onMessageChannelReady;
    .locals 1

    .line 23
    const-class v0, Lo/closeInProgressStream$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/closeInProgressStream$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/closeInProgressStream$onMessageChannelReady;
    .locals 1

    .line 23
    sget-object v0, Lo/closeInProgressStream$onMessageChannelReady;->onMessageChannelReady:[Lo/closeInProgressStream$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/closeInProgressStream$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/closeInProgressStream$onMessageChannelReady;

    return-object v0
.end method
