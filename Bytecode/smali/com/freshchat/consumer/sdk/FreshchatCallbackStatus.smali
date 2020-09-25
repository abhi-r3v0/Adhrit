.class public final enum Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

.field public static final enum STATUS_ERROR:Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

.field public static final enum STATUS_SUCCESS:Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    const/4 v1, 0x0

    const-string v2, "STATUS_SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;->STATUS_SUCCESS:Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    new-instance v0, Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    const/4 v2, 0x1

    const-string v3, "STATUS_ERROR"

    invoke-direct {v0, v3, v2}, Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;->STATUS_ERROR:Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    sget-object v4, Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;->STATUS_SUCCESS:Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;->$VALUES:[Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;->$VALUES:[Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    return-object v0
.end method
