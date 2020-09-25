.class public final enum Lcom/freshchat/consumer/sdk/service/e/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/service/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/service/e/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ge:Lcom/freshchat/consumer/sdk/service/e/b$a;

.field public static final enum gf:Lcom/freshchat/consumer/sdk/service/e/b$a;

.field public static final enum gg:Lcom/freshchat/consumer/sdk/service/e/b$a;

.field private static final synthetic gh:[Lcom/freshchat/consumer/sdk/service/e/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/b$a;

    const/4 v1, 0x0

    const-string v2, "IMMEDIATE"

    invoke-direct {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/b$a;->ge:Lcom/freshchat/consumer/sdk/service/e/b$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/b$a;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v2}, Lcom/freshchat/consumer/sdk/service/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/b$a;->gf:Lcom/freshchat/consumer/sdk/service/e/b$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/b$a;

    const/4 v3, 0x2

    const-string v4, "LAID_BACK"

    invoke-direct {v0, v4, v3}, Lcom/freshchat/consumer/sdk/service/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/b$a;->gg:Lcom/freshchat/consumer/sdk/service/e/b$a;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/freshchat/consumer/sdk/service/e/b$a;

    sget-object v5, Lcom/freshchat/consumer/sdk/service/e/b$a;->ge:Lcom/freshchat/consumer/sdk/service/e/b$a;

    aput-object v5, v4, v1

    sget-object v1, Lcom/freshchat/consumer/sdk/service/e/b$a;->gf:Lcom/freshchat/consumer/sdk/service/e/b$a;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/freshchat/consumer/sdk/service/e/b$a;->gh:[Lcom/freshchat/consumer/sdk/service/e/b$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/e/b$a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/service/e/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/service/e/b$a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/service/e/b$a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/b$a;->gh:[Lcom/freshchat/consumer/sdk/service/e/b$a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/service/e/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/service/e/b$a;

    return-object v0
.end method
