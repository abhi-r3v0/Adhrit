.class public final enum Lcom/freshchat/consumer/sdk/service/e/r$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/service/e/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/service/e/r$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum gB:Lcom/freshchat/consumer/sdk/service/e/r$a;

.field public static final enum gC:Lcom/freshchat/consumer/sdk/service/e/r$a;

.field public static final enum gD:Lcom/freshchat/consumer/sdk/service/e/r$a;

.field public static final enum gE:Lcom/freshchat/consumer/sdk/service/e/r$a;

.field private static final synthetic gF:[Lcom/freshchat/consumer/sdk/service/e/r$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/r$a;

    const/4 v1, 0x0

    const-string v2, "UserNotCreated"

    invoke-direct {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/e/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/r$a;->gB:Lcom/freshchat/consumer/sdk/service/e/r$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/r$a;

    const/4 v2, 0x1

    const-string v3, "NoInternet"

    invoke-direct {v0, v3, v2}, Lcom/freshchat/consumer/sdk/service/e/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/r$a;->gC:Lcom/freshchat/consumer/sdk/service/e/r$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/r$a;

    const/4 v3, 0x2

    const-string v4, "Failed"

    invoke-direct {v0, v4, v3}, Lcom/freshchat/consumer/sdk/service/e/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/r$a;->gD:Lcom/freshchat/consumer/sdk/service/e/r$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/r$a;

    const/4 v4, 0x3

    const-string v5, "Success"

    invoke-direct {v0, v5, v4}, Lcom/freshchat/consumer/sdk/service/e/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/r$a;->gE:Lcom/freshchat/consumer/sdk/service/e/r$a;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/freshchat/consumer/sdk/service/e/r$a;

    sget-object v6, Lcom/freshchat/consumer/sdk/service/e/r$a;->gB:Lcom/freshchat/consumer/sdk/service/e/r$a;

    aput-object v6, v5, v1

    sget-object v1, Lcom/freshchat/consumer/sdk/service/e/r$a;->gC:Lcom/freshchat/consumer/sdk/service/e/r$a;

    aput-object v1, v5, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/service/e/r$a;->gD:Lcom/freshchat/consumer/sdk/service/e/r$a;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/freshchat/consumer/sdk/service/e/r$a;->gF:[Lcom/freshchat/consumer/sdk/service/e/r$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/e/r$a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/service/e/r$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/service/e/r$a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/service/e/r$a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/r$a;->gF:[Lcom/freshchat/consumer/sdk/service/e/r$a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/service/e/r$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/service/e/r$a;

    return-object v0
.end method
