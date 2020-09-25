.class public final Lo/copy$default;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onMessageChannelReady:Lo/CredUpiInstrumentBankStatusJsonAdapter;


# direct methods
.method public constructor <init>(Lo/CredUpiInstrumentBankStatusJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/copy$default;->onMessageChannelReady:Lo/CredUpiInstrumentBankStatusJsonAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/copy$default;->onMessageChannelReady:Lo/CredUpiInstrumentBankStatusJsonAdapter;

    invoke-interface {v0}, Lo/CredUpiInstrumentBankStatusJsonAdapter;->onMessageChannelReady()V

    return-void
.end method
