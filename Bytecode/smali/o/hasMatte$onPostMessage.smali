.class public final enum Lo/hasMatte$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasMatte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/hasMatte$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/hasMatte$onPostMessage;

.field public static final enum extraCallback:Lo/hasMatte$onPostMessage;

.field private static final synthetic onMessageChannelReady:[Lo/hasMatte$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lo/hasMatte$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "OVERLAY_COLOR"

    invoke-direct {v0, v2, v1}, Lo/hasMatte$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/hasMatte$onPostMessage;->extraCallback:Lo/hasMatte$onPostMessage;

    .line 41
    new-instance v0, Lo/hasMatte$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "BITMAP_ONLY"

    invoke-direct {v0, v3, v2}, Lo/hasMatte$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/hasMatte$onPostMessage;->ICustomTabsCallback:Lo/hasMatte$onPostMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/hasMatte$onPostMessage;

    .line 20
    sget-object v4, Lo/hasMatte$onPostMessage;->extraCallback:Lo/hasMatte$onPostMessage;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/hasMatte$onPostMessage;->onMessageChannelReady:[Lo/hasMatte$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/hasMatte$onPostMessage;
    .locals 1

    .line 20
    const-class v0, Lo/hasMatte$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/hasMatte$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/hasMatte$onPostMessage;
    .locals 1

    .line 20
    sget-object v0, Lo/hasMatte$onPostMessage;->onMessageChannelReady:[Lo/hasMatte$onPostMessage;

    invoke-virtual {v0}, [Lo/hasMatte$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/hasMatte$onPostMessage;

    return-object v0
.end method
