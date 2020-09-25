.class public final enum Lcom/freshchat/consumer/sdk/j/c/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/j/c/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum lp:Lcom/freshchat/consumer/sdk/j/c/a;

.field public static final enum lq:Lcom/freshchat/consumer/sdk/j/c/a;

.field public static final enum lr:Lcom/freshchat/consumer/sdk/j/c/a;

.field private static final synthetic ls:[Lcom/freshchat/consumer/sdk/j/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/freshchat/consumer/sdk/j/c/a;

    const/4 v1, 0x0

    const-string v2, "SHOW_PROGRESS"

    invoke-direct {v0, v2, v1}, Lcom/freshchat/consumer/sdk/j/c/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/c/a;->lp:Lcom/freshchat/consumer/sdk/j/c/a;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/c/a;

    const/4 v2, 0x1

    const-string v3, "SHOW_CONTENT"

    invoke-direct {v0, v3, v2}, Lcom/freshchat/consumer/sdk/j/c/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/c/a;->lq:Lcom/freshchat/consumer/sdk/j/c/a;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/c/a;

    const/4 v3, 0x2

    const-string v4, "EXIT_WITH_MESSAGE"

    invoke-direct {v0, v4, v3}, Lcom/freshchat/consumer/sdk/j/c/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/c/a;->lr:Lcom/freshchat/consumer/sdk/j/c/a;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/freshchat/consumer/sdk/j/c/a;

    sget-object v5, Lcom/freshchat/consumer/sdk/j/c/a;->lp:Lcom/freshchat/consumer/sdk/j/c/a;

    aput-object v5, v4, v1

    sget-object v1, Lcom/freshchat/consumer/sdk/j/c/a;->lq:Lcom/freshchat/consumer/sdk/j/c/a;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/freshchat/consumer/sdk/j/c/a;->ls:[Lcom/freshchat/consumer/sdk/j/c/a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/c/a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/j/c/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/j/c/a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/j/c/a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/c/a;->ls:[Lcom/freshchat/consumer/sdk/j/c/a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/j/c/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/j/c/a;

    return-object v0
.end method
