.class public final enum Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AgentAvatarType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

.field public static final enum APP_ICON:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

.field public static final enum NONE:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

.field public static final enum REAL_AGENT_AVATAR:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;->NONE:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    const/4 v2, 0x1

    const-string v3, "APP_ICON"

    invoke-direct {v0, v3, v2}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;->APP_ICON:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    const/4 v3, 0x2

    const-string v4, "REAL_AGENT_AVATAR"

    invoke-direct {v0, v4, v3}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;->REAL_AGENT_AVATAR:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    sget-object v5, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;->NONE:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;->APP_ICON:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;

    return-object v0
.end method
