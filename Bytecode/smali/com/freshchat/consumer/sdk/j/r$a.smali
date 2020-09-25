.class final enum Lcom/freshchat/consumer/sdk/j/r$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/j/r$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum kA:Lcom/freshchat/consumer/sdk/j/r$a;

.field public static final enum kB:Lcom/freshchat/consumer/sdk/j/r$a;

.field private static final synthetic kE:[Lcom/freshchat/consumer/sdk/j/r$a;

.field public static final enum kx:Lcom/freshchat/consumer/sdk/j/r$a;

.field public static final enum ky:Lcom/freshchat/consumer/sdk/j/r$a;

.field public static final enum kz:Lcom/freshchat/consumer/sdk/j/r$a;


# instance fields
.field private kC:I

.field private kD:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/freshchat/consumer/sdk/j/r$a;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_typically_replies_within_a_minute:I

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_currently_replying_in_a_minute:I

    const/4 v3, 0x0

    const-string v4, "UNDER_1_MIN"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/freshchat/consumer/sdk/j/r$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/r$a;->kx:Lcom/freshchat/consumer/sdk/j/r$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/r$a;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_typically_replies_within_x_minutes:I

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_currently_replying_in_x_minutes:I

    const/4 v4, 0x1

    const-string v5, "UNDER_X_MINS"

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/freshchat/consumer/sdk/j/r$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/r$a;->ky:Lcom/freshchat/consumer/sdk/j/r$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/r$a;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_typically_replies_within_an_hour:I

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_currently_replying_in_an_hour:I

    const/4 v5, 0x2

    const-string v6, "UNDER_AN_HR"

    invoke-direct {v0, v6, v5, v1, v2}, Lcom/freshchat/consumer/sdk/j/r$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/r$a;->kz:Lcom/freshchat/consumer/sdk/j/r$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/r$a;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_typically_replies_within_2_hours:I

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_currently_replying_in_2_hours:I

    const/4 v6, 0x3

    const-string v7, "UNDER_2_HRS"

    invoke-direct {v0, v7, v6, v1, v2}, Lcom/freshchat/consumer/sdk/j/r$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/r$a;->kA:Lcom/freshchat/consumer/sdk/j/r$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/r$a;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_typically_replies_within_few_hours:I

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_currently_replying_in_few_hours:I

    const/4 v7, 0x4

    const-string v8, "UNDER_FEW_HRS"

    invoke-direct {v0, v8, v7, v1, v2}, Lcom/freshchat/consumer/sdk/j/r$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/r$a;->kB:Lcom/freshchat/consumer/sdk/j/r$a;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/freshchat/consumer/sdk/j/r$a;

    sget-object v2, Lcom/freshchat/consumer/sdk/j/r$a;->kx:Lcom/freshchat/consumer/sdk/j/r$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/freshchat/consumer/sdk/j/r$a;->ky:Lcom/freshchat/consumer/sdk/j/r$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/freshchat/consumer/sdk/j/r$a;->kz:Lcom/freshchat/consumer/sdk/j/r$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/freshchat/consumer/sdk/j/r$a;->kA:Lcom/freshchat/consumer/sdk/j/r$a;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/freshchat/consumer/sdk/j/r$a;->kE:[Lcom/freshchat/consumer/sdk/j/r$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/freshchat/consumer/sdk/j/r$a;->kC:I

    iput p4, p0, Lcom/freshchat/consumer/sdk/j/r$a;->kD:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/r$a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/j/r$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/j/r$a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/j/r$a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/r$a;->kE:[Lcom/freshchat/consumer/sdk/j/r$a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/j/r$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/j/r$a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/r$1;->kw:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p0, Lcom/freshchat/consumer/sdk/j/r$a;->kC:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p0, Lcom/freshchat/consumer/sdk/j/r$a;->kD:I

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method
