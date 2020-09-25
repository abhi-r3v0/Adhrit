.class final Lo/NewAddCardDialogFragment$onActivityResult$$inlined$let$lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/SupportedJsonAdapter;


# direct methods
.method constructor <init>(Lo/SupportedJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/NewAddCardDialogFragment$onActivityResult$$inlined$let$lambda$1;->onMessageChannelReady:Lo/SupportedJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/NewAddCardDialogFragment$onActivityResult$$inlined$let$lambda$1;->onMessageChannelReady:Lo/SupportedJsonAdapter;

    invoke-static {v0}, Lo/SupportedJsonAdapter;->onPostMessage(Lo/SupportedJsonAdapter;)Lo/BankOfferDetailsResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NewAddCardDialogFragment$onActivityResult$$inlined$let$lambda$1;->onMessageChannelReady:Lo/SupportedJsonAdapter;

    invoke-static {v0}, Lo/SupportedJsonAdapter;->onPostMessage(Lo/SupportedJsonAdapter;)Lo/BankOfferDetailsResponse;

    move-result-object v0

    invoke-interface {v0}, Lo/BankOfferDetailsResponse;->onPostMessage()V

    :cond_0
    return-void
.end method
