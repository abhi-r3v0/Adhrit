.class Lcom/freshchat/consumer/sdk/j/ac$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public final is:I

.field public final it:I

.field public final name:Ljava/lang/String;

.field public final number:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/ac$c;->name:Ljava/lang/String;

    iput p2, p0, Lcom/freshchat/consumer/sdk/j/ac$c;->number:I

    iput p3, p0, Lcom/freshchat/consumer/sdk/j/ac$c;->is:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/freshchat/consumer/sdk/j/ac$c;->it:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/ac$c;->name:Ljava/lang/String;

    iput p2, p0, Lcom/freshchat/consumer/sdk/j/ac$c;->number:I

    iput p3, p0, Lcom/freshchat/consumer/sdk/j/ac$c;->is:I

    iput p4, p0, Lcom/freshchat/consumer/sdk/j/ac$c;->it:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/freshchat/consumer/sdk/j/ac$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;II)V

    return-void
.end method
