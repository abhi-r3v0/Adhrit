.class final Lcom/freshchat/consumer/sdk/Freshchat$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/freshchat/consumer/sdk/UnreadCountCallback;

.field final synthetic e:Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/UnreadCountCallback;Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;I)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/Freshchat$2;->b:Lcom/freshchat/consumer/sdk/UnreadCountCallback;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/Freshchat$2;->e:Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    iput p3, p0, Lcom/freshchat/consumer/sdk/Freshchat$2;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat$2;->b:Lcom/freshchat/consumer/sdk/UnreadCountCallback;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/Freshchat$2;->e:Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    iget v2, p0, Lcom/freshchat/consumer/sdk/Freshchat$2;->f:I

    invoke-interface {v0, v1, v2}, Lcom/freshchat/consumer/sdk/UnreadCountCallback;->onResult(Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;I)V

    return-void
.end method
