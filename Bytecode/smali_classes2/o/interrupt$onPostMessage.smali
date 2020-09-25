.class final enum Lo/interrupt$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/interrupt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/interrupt$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/interrupt$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/interrupt$onPostMessage;

.field public static final enum onPostMessage:Lo/interrupt$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 85
    new-instance v0, Lo/interrupt$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "HEADER"

    invoke-direct {v0, v2, v1}, Lo/interrupt$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/interrupt$onPostMessage;->onPostMessage:Lo/interrupt$onPostMessage;

    new-instance v0, Lo/interrupt$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "BODY"

    invoke-direct {v0, v3, v2}, Lo/interrupt$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/interrupt$onPostMessage;->onMessageChannelReady:Lo/interrupt$onPostMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/interrupt$onPostMessage;

    .line 84
    sget-object v4, Lo/interrupt$onPostMessage;->onPostMessage:Lo/interrupt$onPostMessage;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/interrupt$onPostMessage;->ICustomTabsCallback:[Lo/interrupt$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/interrupt$onPostMessage;
    .locals 1

    .line 84
    const-class v0, Lo/interrupt$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/interrupt$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/interrupt$onPostMessage;
    .locals 1

    .line 84
    sget-object v0, Lo/interrupt$onPostMessage;->ICustomTabsCallback:[Lo/interrupt$onPostMessage;

    invoke-virtual {v0}, [Lo/interrupt$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/interrupt$onPostMessage;

    return-object v0
.end method
