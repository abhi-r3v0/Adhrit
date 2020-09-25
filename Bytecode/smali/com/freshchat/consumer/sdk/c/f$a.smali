.class Lcom/freshchat/consumer/sdk/c/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private ei:Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

.field private ej:Ljava/lang/String;

.field private position:I


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/c/f$a;->ei:Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/c/f$a;->ej:Ljava/lang/String;

    iput p3, p0, Lcom/freshchat/consumer/sdk/c/f$a;->position:I

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/c/f$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/c/f$a;->ej:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/c/f$a;)I
    .locals 0

    iget p0, p0, Lcom/freshchat/consumer/sdk/c/f$a;->position:I

    return p0
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/c/f$a;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/c/f$a;->ei:Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    return-object p0
.end method
