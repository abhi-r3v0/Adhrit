.class public final enum Lcom/freshchat/consumer/sdk/service/e/z$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/service/e/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/service/e/z$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum gM:Lcom/freshchat/consumer/sdk/service/e/z$a;

.field public static final enum gN:Lcom/freshchat/consumer/sdk/service/e/z$a;

.field public static final enum gO:Lcom/freshchat/consumer/sdk/service/e/z$a;

.field private static final synthetic gP:[Lcom/freshchat/consumer/sdk/service/e/z$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/z$a;

    const/4 v1, 0x0

    const-string v2, "FAQ_ICONS"

    invoke-direct {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/e/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/z$a;->gM:Lcom/freshchat/consumer/sdk/service/e/z$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/z$a;

    const/4 v2, 0x1

    const-string v3, "CHANNEL_ICONS"

    invoke-direct {v0, v3, v2}, Lcom/freshchat/consumer/sdk/service/e/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/z$a;->gN:Lcom/freshchat/consumer/sdk/service/e/z$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/z$a;

    const/4 v3, 0x2

    const-string v4, "FAQ_CONTENT_IMAGES"

    invoke-direct {v0, v4, v3}, Lcom/freshchat/consumer/sdk/service/e/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/z$a;->gO:Lcom/freshchat/consumer/sdk/service/e/z$a;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/freshchat/consumer/sdk/service/e/z$a;

    sget-object v5, Lcom/freshchat/consumer/sdk/service/e/z$a;->gM:Lcom/freshchat/consumer/sdk/service/e/z$a;

    aput-object v5, v4, v1

    sget-object v1, Lcom/freshchat/consumer/sdk/service/e/z$a;->gN:Lcom/freshchat/consumer/sdk/service/e/z$a;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/freshchat/consumer/sdk/service/e/z$a;->gP:[Lcom/freshchat/consumer/sdk/service/e/z$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/e/z$a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/service/e/z$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/service/e/z$a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/service/e/z$a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/z$a;->gP:[Lcom/freshchat/consumer/sdk/service/e/z$a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/service/e/z$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/service/e/z$a;

    return-object v0
.end method
