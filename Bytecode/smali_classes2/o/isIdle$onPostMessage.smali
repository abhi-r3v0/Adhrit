.class final enum Lo/isIdle$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isIdle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/isIdle$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic extraCallback:[Lo/isIdle$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/isIdle$onPostMessage;

.field public static final enum onNavigationEvent:Lo/isIdle$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 195
    new-instance v0, Lo/isIdle$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "INBOUND"

    invoke-direct {v0, v2, v1}, Lo/isIdle$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIdle$onPostMessage;->onNavigationEvent:Lo/isIdle$onPostMessage;

    .line 196
    new-instance v0, Lo/isIdle$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "OUTBOUND"

    invoke-direct {v0, v3, v2}, Lo/isIdle$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/isIdle$onPostMessage;->onMessageChannelReady:Lo/isIdle$onPostMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/isIdle$onPostMessage;

    .line 194
    sget-object v4, Lo/isIdle$onPostMessage;->onNavigationEvent:Lo/isIdle$onPostMessage;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/isIdle$onPostMessage;->extraCallback:[Lo/isIdle$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/isIdle$onPostMessage;
    .locals 1

    .line 194
    const-class v0, Lo/isIdle$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/isIdle$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/isIdle$onPostMessage;
    .locals 1

    .line 194
    sget-object v0, Lo/isIdle$onPostMessage;->extraCallback:[Lo/isIdle$onPostMessage;

    invoke-virtual {v0}, [Lo/isIdle$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/isIdle$onPostMessage;

    return-object v0
.end method
