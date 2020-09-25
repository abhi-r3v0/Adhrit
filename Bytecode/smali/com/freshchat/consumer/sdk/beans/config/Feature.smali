.class public final enum Lcom/freshchat/consumer/sdk/beans/config/Feature;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/config/Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/config/Feature;

.field public static final enum AOT_USER_CREATE:Lcom/freshchat/consumer/sdk/beans/config/Feature;

.field public static final enum AUTO_CAMPAIGNS:Lcom/freshchat/consumer/sdk/beans/config/Feature;

.field public static final enum CUSTOM_BRAND_BANNER:Lcom/freshchat/consumer/sdk/beans/config/Feature;

.field public static final enum FAQ:Lcom/freshchat/consumer/sdk/beans/config/Feature;

.field public static final enum INBOX:Lcom/freshchat/consumer/sdk/beans/config/Feature;

.field public static final enum MANUAL_CAMPAIGNS:Lcom/freshchat/consumer/sdk/beans/config/Feature;

.field public static final enum USER_EVENTS:Lcom/freshchat/consumer/sdk/beans/config/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const/4 v1, 0x0

    const-string v2, "FAQ"

    invoke-direct {v0, v2, v1}, Lcom/freshchat/consumer/sdk/beans/config/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;->FAQ:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const/4 v2, 0x1

    const-string v3, "INBOX"

    invoke-direct {v0, v3, v2}, Lcom/freshchat/consumer/sdk/beans/config/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;->INBOX:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const/4 v3, 0x2

    const-string v4, "AUTO_CAMPAIGNS"

    invoke-direct {v0, v4, v3}, Lcom/freshchat/consumer/sdk/beans/config/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;->AUTO_CAMPAIGNS:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const/4 v4, 0x3

    const-string v5, "MANUAL_CAMPAIGNS"

    invoke-direct {v0, v5, v4}, Lcom/freshchat/consumer/sdk/beans/config/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;->MANUAL_CAMPAIGNS:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const/4 v5, 0x4

    const-string v6, "USER_EVENTS"

    invoke-direct {v0, v6, v5}, Lcom/freshchat/consumer/sdk/beans/config/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;->USER_EVENTS:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const/4 v6, 0x5

    const-string v7, "AOT_USER_CREATE"

    invoke-direct {v0, v7, v6}, Lcom/freshchat/consumer/sdk/beans/config/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;->AOT_USER_CREATE:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const/4 v7, 0x6

    const-string v8, "CUSTOM_BRAND_BANNER"

    invoke-direct {v0, v8, v7}, Lcom/freshchat/consumer/sdk/beans/config/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;->CUSTOM_BRAND_BANNER:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/freshchat/consumer/sdk/beans/config/Feature;

    sget-object v9, Lcom/freshchat/consumer/sdk/beans/config/Feature;->FAQ:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    aput-object v9, v8, v1

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/config/Feature;->INBOX:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    aput-object v1, v8, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/config/Feature;->AUTO_CAMPAIGNS:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    aput-object v1, v8, v3

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/config/Feature;->MANUAL_CAMPAIGNS:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    aput-object v1, v8, v4

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/config/Feature;->USER_EVENTS:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    aput-object v1, v8, v5

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/config/Feature;->AOT_USER_CREATE:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/freshchat/consumer/sdk/beans/config/Feature;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/config/Feature;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/config/Feature;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/config/Feature;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/config/Feature;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/config/Feature;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/config/Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/config/Feature;

    return-object v0
.end method
