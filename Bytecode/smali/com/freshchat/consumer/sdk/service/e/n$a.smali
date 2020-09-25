.class public final enum Lcom/freshchat/consumer/sdk/service/e/n$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/service/e/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/service/e/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum gv:Lcom/freshchat/consumer/sdk/service/e/n$a;

.field public static final enum gw:Lcom/freshchat/consumer/sdk/service/e/n$a;

.field private static final synthetic gx:[Lcom/freshchat/consumer/sdk/service/e/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/n$a;

    const/4 v1, 0x0

    const-string v2, "Upvote"

    invoke-direct {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/e/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/n$a;->gv:Lcom/freshchat/consumer/sdk/service/e/n$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/n$a;

    const/4 v2, 0x1

    const-string v3, "Downvote"

    invoke-direct {v0, v3, v2}, Lcom/freshchat/consumer/sdk/service/e/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/n$a;->gw:Lcom/freshchat/consumer/sdk/service/e/n$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/freshchat/consumer/sdk/service/e/n$a;

    sget-object v4, Lcom/freshchat/consumer/sdk/service/e/n$a;->gv:Lcom/freshchat/consumer/sdk/service/e/n$a;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/freshchat/consumer/sdk/service/e/n$a;->gx:[Lcom/freshchat/consumer/sdk/service/e/n$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/e/n$a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/service/e/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/service/e/n$a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/service/e/n$a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/n$a;->gx:[Lcom/freshchat/consumer/sdk/service/e/n$a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/service/e/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/service/e/n$a;

    return-object v0
.end method
